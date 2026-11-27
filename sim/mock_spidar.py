"""Mock storyboard and condition matrix for the spidar_v1 protocol.

Geometry and styling follow task/ball_engine_eml.m (what the robot actually
draws) and the values in protocols/make_spidar_v1.py:
  home ring  (-22.25, 10) cm, LogRadius 1.5 cm   (Target row 1)
  slope top  (  7.75, 10) cm                     (Target row 2)
  the ball rolls from the slope top toward the ring (right -> left),
  SlopeLength 10 / 15 / 25 cm sets the approach speed,
  DrawRadius 2.1 / 3.0 / 4.2 cm sets the drawn size (contact radius 3 cm always).

Outputs: docs/mockups/spidar_storyboard.png, docs/mockups/spidar_conditions.png
Run:     .venv/bin/python sim/mock_spidar.py
"""
import math
import os

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib.patches import Circle, Rectangle

# ---- protocol values (cm) ---------------------------------------------------
HOME = (-22.25, 10.0)
TOP = (7.75, 10.0)
RING_R = 1.5
HAND_R = 2.0          # Task Wide HandRadius (haptic hand disk)
BALL_R = 3.0          # physics radius, identical in every condition
FLAT_MIN = 10.0       # FlatLength column (engine actually runs the flat to the ring edge)
SLOPE = {"low": 10.0, "normal": 15.0, "high": 25.0}
DRAW = {"small": 2.1, "normal": 3.0, "big": 4.2}
THETA = math.radians(25.0)
BAR_W = 2.0           # drawn bar width (engine: barw)

DD = TOP[0] - HOME[0]                        # 30 cm track
UX = -1.0                                     # unit vector from top toward home (leftwards)
G = 981.0                                     # cm/s^2
A_SLOPE = (5 / 7) * G * math.sin(THETA)       # rolling-sphere acceleration on the slope
CRR = 0.01

# colours from the engine (0xRRGGBB)
C_FLAT = "#303030"
C_SEG = ["#5A5A5A", "#4F4F4F", "#444444", "#393939"]
C_TICK = "#C8C8C8"
C_BALL, C_BALL_HIT = "#F5C542", "#FFFFFF"
C_HIL, C_HIL_HIT = "#FFF3C0", "#F5E0A0"
C_RING, C_RING_IN = "#FFFFFF", "#2ECC71"


def approach_speed(L):
    """Ball speed (cm/s) at the ring edge for slope length L (cm)."""
    v2 = 2 * A_SLOPE * L
    flat = (DD - RING_R - 0.5) - L
    v2 -= 2 * CRR * G * max(flat, 0)
    return math.sqrt(max(v2, 0))


def track(ax, L, ring_colour=C_RING, cursor=True):
    """Draw the static scene exactly as the engine lays it out."""
    ax.set_facecolor("black")
    foot_x = TOP[0] + UX * L
    flat_len = max((DD - RING_R - 0.5) - L, 0)
    # 4 shaded slope segments, lightest at the top
    seg = L / 4
    for i in range(4):
        x0 = TOP[0] + UX * seg * i
        ax.add_patch(Rectangle((x0 + UX * seg, TOP[1] - BAR_W / 2), seg, BAR_W, color=C_SEG[i], lw=0))
    # flat run-out from the foot to the ring edge
    ax.add_patch(Rectangle((foot_x + UX * flat_len, TOP[1] - BAR_W / 2), flat_len, BAR_W, color=C_FLAT, lw=0))
    # foot tick (perpendicular)
    ax.plot([foot_x, foot_x], [TOP[1] - 1.4, TOP[1] + 1.4], color=C_TICK, lw=2)
    # home ring (hollow) and hand cursor
    ax.add_patch(Circle(HOME, RING_R, fill=False, ec=ring_colour, lw=2.2))
    if cursor:
        ax.add_patch(Circle(HOME, 0.5, color="white"))
    ax.set_xlim(-32, 16); ax.set_ylim(1, 19); ax.set_aspect("equal")
    ax.set_xticks([]); ax.set_yticks([])
    for s in ax.spines.values():
        s.set_color("#444")


def ball(ax, s, rdraw, hit=False):
    """Ball at path distance s (cm from the slope top), drawn at rdraw."""
    x, y = TOP[0] + UX * s, TOP[1]
    ax.add_patch(Circle((x, y), rdraw, color=C_BALL_HIT if hit else C_BALL))
    ax.add_patch(Circle((x - 0.35 * rdraw, y + 0.35 * rdraw), 0.3 * rdraw, color=C_HIL_HIT if hit else C_HIL))


def contact_ghost(ax, s):
    """Dashed outline of the contact ball (3 cm) to show the haptic size."""
    ax.add_patch(Circle((TOP[0] + UX * s, TOP[1]), BALL_R, fill=False, ec="#888", ls="--", lw=1))


S_CONTACT = DD - (BALL_R + HAND_R)            # ball centre at first contact (hand at ring centre)
OUT_DIR = os.path.join(os.path.dirname(__file__), "..", "docs", "mockups")

# ---- 1. storyboard of one trial (standard condition) -------------------------
L0, R0 = SLOPE["normal"], DRAW["normal"]
fig, axes = plt.subplots(3, 2, figsize=(11, 8.6), facecolor="#111")
fig.subplots_adjust(wspace=0.05, hspace=0.32, left=0.03, right=0.97, top=0.9, bottom=0.03)
steps = [
    ("1  WAIT_HOME  (ring white until a hand rests inside it)", C_RING, None, False),
    ("2  HOLD  (ring green; hold 1000 ms, then a random 500 to 1500 ms delay)", C_RING_IN, None, False),
    ("3  RELEASE_WAIT  (ball parked at the slope top)", C_RING_IN, 0.0, False),
    ("4  ROLLING  (accelerates on the slope, coasts on the flat; hand must stay)", C_RING_IN, L0 + 4.0, False),
    ("5  IMPACT  (contact force on the hand, ball flashes white)", C_RING_IN, S_CONTACT, True),
    ("6  RINGDOWN  (ball rebounds and settles, then EndOfTrial, next row)", C_RING_IN, S_CONTACT - 7.0, False),
]
for ax, (title, rc, s, hit) in zip(axes.flat, steps):
    track(ax, L0, rc)
    if s is not None:
        ball(ax, s, R0, hit)
    ax.set_title(title, color="#ddd", fontsize=9.5, loc="left", pad=5)
axes[2, 1].annotate("", xy=(TOP[0] + UX * (S_CONTACT - 7.0) + 4, TOP[1] - 3.8),
                    xytext=(TOP[0] + UX * S_CONTACT - 2, TOP[1] - 3.8),
                    arrowprops=dict(arrowstyle="->", color="#aaa"))
fig.suptitle("spidar_v1 trial storyboard (standard condition: drawn radius 3 cm, slope 15 cm)\n"
             "Subject display, top-down; ball starts right and rolls left into the resting hand",
             color="#eee", fontsize=11)
out1 = os.path.join(OUT_DIR, "spidar_storyboard.png")
fig.savefig(out1, dpi=140, facecolor=fig.get_facecolor())
print("wrote", os.path.abspath(out1))

# ---- 2. condition matrix: 3 drawn sizes x 3 approach speeds ------------------
sizes = ["small", "normal", "big"]
speeds = ["low", "normal", "high"]
cond_no = {("big", "low"): 1, ("big", "normal"): 2, ("big", "high"): 3,
           ("small", "low"): 4, ("small", "normal"): 5, ("small", "high"): 6,
           ("normal", "low"): 7, ("normal", "normal"): 8, ("normal", "high"): 9}
fig, axes = plt.subplots(3, 3, figsize=(13.5, 7.6), facecolor="#111")
fig.subplots_adjust(wspace=0.05, hspace=0.42, left=0.03, right=0.97, top=0.85, bottom=0.03)
for i, sz in enumerate(sizes):
    for j, sp in enumerate(speeds):
        ax = axes[i, j]
        L, rd = SLOPE[sp], DRAW[sz]
        track(ax, L, C_RING_IN)
        ball(ax, 0.0, rd)
        contact_ghost(ax, 0.0)
        v = approach_speed(L)
        ax.set_title(f"cond {cond_no[(sz, sp)]}: {sz} x {sp}\ndrawn {rd:.1f} cm, slope {L:.0f} cm, ~{v / 100:.2f} m/s at the hand",
                     color="#ddd", fontsize=9, loc="left", pad=4)
fig.suptitle("spidar_v1 condition matrix: drawn ball size (rows) x approach speed (columns)\n"
             "Dashed circle = the 3 cm contact ball the hand actually feels; identical mass, stiffness and force limit in every cell.\n"
             "Standard (row 1 of the Load Table) = normal x normal; it precedes every test trial (90 trials, 5 reps).",
             color="#eee", fontsize=10.5)
out2 = os.path.join(OUT_DIR, "spidar_conditions.png")
fig.savefig(out2, dpi=140, facecolor=fig.get_facecolor())
print("wrote", os.path.abspath(out2))
