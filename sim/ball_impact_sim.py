"""Ball-on-slope impact simulator for tuning the Kinarm haptic contact model.

Simulates a solid sphere rolling down an incline, across a flat, and into a hand that is
held at a home position by arm impedance (mass-spring-damper). The contact is the
penalty spring-damper described in docs/experiment-design.md, with the same force clamp
the real-time task will use. Use it to pick ball mass, slope angle and contact gains that
keep the commanded force inside the robot's envelope and still feel like a ball.

Run:  .venv/bin/python sim/ball_impact_sim.py            (sweep + plots to sim/out/)
      .venv/bin/python sim/ball_impact_sim.py --single   (one trial, printed)
"""
from __future__ import annotations

import argparse
import math
import os
from dataclasses import dataclass, asdict

import numpy as np

G = 9.81


@dataclass
class Params:
    # ball
    m_b: float = 0.20          # kg
    r_b: float = 0.03          # m
    theta_deg: float = 25.0    # slope angle
    L_slope: float = 0.20      # m, slope length
    L_flat: float = 0.05       # m, flat run from slope foot to hand-contact point
    c_rr: float = 0.02         # rolling resistance coefficient on the flat
    # contact (what the robot renders)
    k_c: float = 2000.0        # N/m
    b_c: float = 10.0          # N s/m
    F_max: float = 45.0        # N, command clamp
    transient_amp: float = 0.0 # N per (m/s) of impact speed, decaying sinusoid at onset
    transient_freq: float = 150.0  # Hz
    transient_tau: float = 0.012   # s
    # hand + arm impedance (subject holding still), per Kinarm end-point inertia
    m_h: float = 1.5           # kg, hand + handle + arm apparent mass along contact axis
    k_h: float = 300.0         # N/m, arm stiffness at posture
    b_h: float = 15.0          # N s/m
    r_h: float = 0.02          # m, hand disk radius
    # loop
    dt: float = 1e-3           # s, Dexterit-E 3.5-era real-time period (verify)
    t_end: float = 1.5         # s


@dataclass
class Result:
    v_impact: float
    F_peak: float
    t_contact_ms: float
    impulse: float
    hand_disp_max_mm: float
    v_rebound: float
    clipped: bool
    t: np.ndarray
    F: np.ndarray
    x_ball: np.ndarray
    x_hand: np.ndarray


def simulate(p: Params) -> Result:
    """1-D along the slope direction. x = 0 at the ball's contact point with a hand at rest."""
    a_slope = (5.0 / 7.0) * G * math.sin(math.radians(p.theta_deg))
    v_impact_nominal = math.sqrt(2 * a_slope * p.L_slope)

    n = int(p.t_end / p.dt)
    t = np.arange(n) * p.dt
    F = np.zeros(n)
    xb = np.zeros(n)
    xh = np.zeros(n)

    # ball starts at top of slope; x increases toward the hand
    x_contact = p.L_slope + p.L_flat             # ball centre position at first touch
    x = 0.0
    v = 0.0
    hx, hv = 0.0, 0.0                              # hand displacement from home
    pen_prev = 0.0
    in_contact = False
    t_on = None
    t_c0 = t_c1 = None
    F_peak = impulse = 0.0
    clipped = False
    v_impact = v_impact_nominal

    for i in range(n):
        # ball free dynamics
        if x < p.L_slope:
            a = a_slope
        else:
            a = -p.c_rr * G if v > 0 else 0.0

        # contact
        pen = (x + p.r_b) - (x_contact + p.r_b + hx)   # penetration past the hand surface
        Fc = 0.0
        if pen > 0:
            if not in_contact:
                in_contact, t_on = True, t[i]
                if t_c0 is None:                      # metrics use the FIRST contact only
                    t_c0, v_impact = t[i], v
            dpen = (pen - pen_prev) / p.dt
            Fc = p.k_c * pen + p.b_c * dpen
            if p.transient_amp > 0:
                tau = t[i] - t_on
                Fc += p.transient_amp * v_impact * math.exp(-tau / p.transient_tau) * math.sin(2 * math.pi * p.transient_freq * tau)
            if Fc > p.F_max:
                Fc, clipped = p.F_max, True
            Fc = max(Fc, 0.0)
        elif in_contact:
            in_contact = False
            if t_c1 is None:
                t_c1 = t[i]
        pen_prev = max(pen, 0.0)

        # integrate (semi-implicit Euler)
        v += (a - Fc / p.m_b) * p.dt
        x += v * p.dt
        ah = (Fc - p.k_h * hx - p.b_h * hv) / p.m_h
        hv += ah * p.dt
        hx += hv * p.dt

        F[i], xb[i], xh[i] = Fc, x, hx
        if t_c1 is None:                              # first contact only
            F_peak = max(F_peak, Fc)
            impulse += Fc * p.dt

    if t_c0 is None:
        raise RuntimeError("ball never reached the hand; shorten L_flat or raise theta")
    if t_c1 is None:
        t_c1 = t[-1]
    # rebound speed: ball velocity just after contact ends (negative = moving away)
    i1 = int(t_c1 / p.dt)
    v_reb = -float(np.gradient(xb, p.dt)[min(i1 + 2, n - 1)])
    return Result(v_impact, F_peak, (t_c1 - t_c0) * 1e3, impulse, float(xh.max() * 1e3), v_reb, clipped, t, F, xb, xh)


def sweep(out_dir: str) -> None:
    import matplotlib
    matplotlib.use("Agg")
    import matplotlib.pyplot as plt

    os.makedirs(out_dir, exist_ok=True)
    masses = [0.05, 0.1, 0.2, 0.3, 0.5]
    thetas = [10, 20, 30, 40]
    ks = [1000, 2000, 4000]

    rows = []
    for k in ks:
        for m in masses:
            for th in thetas:
                r = simulate(Params(m_b=m, theta_deg=th, k_c=k))
                rows.append((k, m, th, r.v_impact, r.F_peak, r.t_contact_ms, r.impulse, r.hand_disp_max_mm, r.clipped))

    with open(os.path.join(out_dir, "sweep.csv"), "w") as f:
        f.write("k_c,m_b,theta_deg,v_impact,F_peak,t_contact_ms,impulse,hand_disp_max_mm,clipped\n")
        for row in rows:
            f.write(",".join(f"{v:.4g}" if isinstance(v, float) else str(v) for v in row) + "\n")

    # Peak force map per stiffness
    fig, axes = plt.subplots(1, len(ks), figsize=(4.5 * len(ks), 4), sharey=True)
    for ax, k in zip(axes, ks):
        grid = np.array([[next(r[4] for r in rows if r[0] == k and r[1] == m and r[2] == th) for th in thetas] for m in masses])
        im = ax.imshow(grid, origin="lower", cmap="viridis", vmin=0, vmax=60, aspect="auto")
        ax.set_xticks(range(len(thetas)), thetas)
        ax.set_yticks(range(len(masses)), masses)
        ax.set_xlabel("slope angle (deg)")
        ax.set_title(f"peak force (N), k_c = {k} N/m")
        for i, m in enumerate(masses):
            for j, th in enumerate(thetas):
                ax.text(j, i, f"{grid[i, j]:.0f}", ha="center", va="center", color="w" if grid[i, j] < 35 else "k", fontsize=8)
    axes[0].set_ylabel("ball mass (kg)")
    fig.colorbar(im, ax=axes, label="N (robot intermittent limit 58 N)")
    fig.savefig(os.path.join(out_dir, "peak_force_map.png"), dpi=130)

    # Example time series
    fig, ax = plt.subplots(2, 1, figsize=(7, 6), sharex=True)
    for m in (0.1, 0.2, 0.5):
        r = simulate(Params(m_b=m))
        i0 = np.argmax(r.F > 0) - 20
        sl = slice(max(i0, 0), max(i0, 0) + 150)
        ax[0].plot((r.t[sl] - r.t[sl][0]) * 1e3, r.F[sl], label=f"m = {m} kg, v = {r.v_impact:.2f} m/s")
        ax[1].plot((r.t[sl] - r.t[sl][0]) * 1e3, r.x_hand[sl] * 1e3)
    ax[0].set_ylabel("commanded force (N)")
    ax[0].legend()
    ax[1].set_ylabel("hand displacement (mm)")
    ax[1].set_xlabel("time from 20 ms before contact (ms)")
    fig.suptitle("Penalty contact, k_c 2000 N/m, b_c 10 N s/m, slope 25 deg, 20 cm")
    fig.savefig(os.path.join(out_dir, "impact_timeseries.png"), dpi=130)
    print(f"wrote {out_dir}/sweep.csv, peak_force_map.png, impact_timeseries.png")


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--single", action="store_true")
    ap.add_argument("--out", default=os.path.join(os.path.dirname(__file__), "out"))
    args = ap.parse_args()
    if args.single:
        p = Params()
        r = simulate(p)
        for k, v in asdict(p).items():
            print(f"{k:>15}: {v}")
        print("-" * 30)
        for k in ("v_impact", "F_peak", "t_contact_ms", "impulse", "hand_disp_max_mm", "v_rebound", "clipped"):
            print(f"{k:>15}: {getattr(r, k):.4g}" if k != "clipped" else f"{k:>15}: {r.clipped}")
    else:
        sweep(args.out)


if __name__ == "__main__":
    main()
