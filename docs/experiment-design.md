# Experiment design: ball rolling down a slope and striking the hand

Status: draft v0.1 (2026-11-20). Open questions at the end.

## 1. Concept

The subject holds the Kinarm handle still at a home position at the foot of a slope drawn
on the display. A ball appears at the top of the slope, accelerates down it, rolls across
the flat and strikes the hand. At impact the robot renders the contact force so the
subject feels the ball hit, and the ball rebounds or stops according to the simulated
physics. The display is top-down, so the "slope" is a direction in the workspace plane
along which the ball accelerates; gravity is simulated along that line.

## 2. Hardware limits that shape the design

| Quantity | End-Point Lab | Exoskeleton Lab |
|---|---|---|
| Continuous force / torque | 19 N | 5.1 Nm per joint |
| Intermittent (< 5 s) | 58 N | 15.3 Nm per joint |
| Structural stiffness | ~40 kN/m | ~16.4 kN/m |
| Handle / end-point inertia | 0.8 to 1.1 kg | n/a |
| Real-time loop | 1 to 2 kHz on Dexterit-E 3.5 era (verify in the 3.5 guide; 4 kHz needs R2015a SP1+) | same |

Design rule: keep the commanded impact pulse under about 45 N peak and under 100 ms, so
it stays inside the intermittent envelope with margin, and so a 1 kHz loop still samples
the pulse 30+ times.

## 3. Ball physics (simulated in Simulink at the real-time rate)

Solid sphere rolling without slip on an incline of angle theta:

    a_slope = (5/7) * g * sin(theta)
    v_bottom = sqrt(2 * a_slope * L_slope)

Then on the flat with rolling resistance coefficient c_rr:

    a_flat = -c_rr * g

State: position p (2-D in workspace), velocity v, both along the slope direction unit
vector d. Ball radius r_b. A "slope" segment of length L_slope ending at the slope foot;
hand home position is a set distance beyond the foot along d.

Typical ranges: r_b 2 to 4 cm, m_b 0.05 to 0.5 kg, theta 10 to 40 deg, L_slope 10 to
30 cm, giving v_impact ~0.5 to 1.5 m/s.

## 4. Haptic rendering of the impact

Recommended: **penalty (spring-damper) contact**, the standard haptic contact model and
the one that behaves correctly if the hand moves during the trial.

    hand disk radius r_h (e.g. 2 cm, roughly the handle), hand position p_h from the robot
    n   = (p_h - p) / |p_h - p|                      contact normal, ball to hand
    pen = (r_b + r_h) - |p_h - p|                     penetration, contact when pen > 0
    F   = clamp( k_c * pen + b_c * d(pen)/dt , 0, F_max ) * n    force ON the hand
    ball: m_b * dv/dt = -F + rolling terms            equal and opposite

Peak force and duration follow from Hertz-like spring contact:

    t_contact ~ pi * sqrt(m_b / k_c)
    F_peak    ~ v_impact * sqrt(m_b * k_c)

So for m_b = 0.2 kg, v = 1 m/s, k_c = 2000 N/m: F_peak ~ 20 N, t_contact ~ 31 ms.
`sim/ball_impact_sim.py` sweeps these to pick values that stay within the 45 N rule.

Damper onset step: with F = k pen + b d(pen)/dt the force jumps by b * v_impact the
instant contact starts (about 11 N at b_c = 10, v = 1.08 m/s in the simulation). This can
feel like a click, which may be desirable for a hard ball. If it is not, use Hunt-Crossley
damping, F = k pen + b pen * d(pen)/dt, so damping grows with penetration and the force
starts from zero.

Stability: a penalty spring on a sampled loop needs b_c > k_c * T / 2 (T = loop period);
at 1 kHz and k_c = 2000 N/m that is only 1 N s/m, so the limit is the robot's own
rendering, not the math. Start at k_c 1000 to 3000 N/m, b_c 5 to 20 N s/m and tune on the
robot. The restitution the subject feels is set mainly by b_c.

Realism add-ons, in order of value:
1. **Hard-contact transient**: add a short decaying sinusoid (100 to 200 Hz, 10 to 20 ms,
   amplitude scaled by v_impact) to F at contact onset. Event-based haptics makes a
   rendered contact feel like a rigid ball rather than rubber. Bandwidth at 1 kHz loop
   allows this.
2. **Visual deformation / rebound** consistent with the force.
3. **Sound** at contact. The 3.5 TDK has no obvious sound block; a community task used an
   external Java tone player. Treat as optional.

Alternatives considered:
- Feedforward impulse (half-sine pulse with J = m_b (1+e) v) ignores hand motion; simpler
  but breaks if the hand moves. Useful as a control condition ("same impulse, no contact
  dynamics").
- Recorded force profile from a real ball: most realistic feel, least flexible.

### Simulation results (sim/ball_impact_sim.py, 2026-11-20)

Defaults: slope 25 deg x 20 cm gives v_impact 1.08 m/s. With k_c = 2000 N/m, b_c = 10:

| ball mass | peak force | contact time | hand displacement |
|---|---|---|---|
| 0.1 kg | 14 N | 22 ms | 4 mm |
| 0.2 kg | 17 N | 30 ms | 9 mm |
| 0.5 kg | 25 N | 45 ms | 20 mm |

Across the full sweep (mass 0.05 to 0.5 kg, slope 10 to 40 deg, k_c 1000 to 4000 N/m)
the peak force stays at or below 45 N and only the single hardest case (0.5 kg, 40 deg,
4000 N/m) touches the clamp. The whole design space fits the End-Point envelope.
See `sim/out/peak_force_map.png` and `sim/out/impact_timeseries.png`.

## 5. Trial state machine (Stateflow) (PLACEHOLDER: event sequence not yet decided)

    WAIT_HOME      hand inside home target for hold_time (random 0.5 to 1.5 s optional)
      -> RELEASE   ball drawn at slope top, event BALL_RELEASE
    ROLLING        integrate ball; update ball graphic each frame; haptics off
      -> CONTACT   when pen > 0, event CONTACT_START
    CONTACT        apply F as above; integrate ball with -F
      -> POST      when pen <= 0 for > 5 ms, event CONTACT_END
    POST_IMPACT    ball rolls away; end when |v| < v_stop or ball leaves workspace
      -> END       event TRIAL_END, inter-trial interval
    Abort paths: hand leaves home before contact (if required still), timeout.

Event codes to log: BALL_RELEASE, CONTACT_START, CONTACT_END, TRIAL_END, HAND_LEFT_HOME.
Also log as analog channels: ball x, y, vx, vy, pen, commanded Fx, Fy, so the impact can
be reconstructed offline alongside the 1 kHz kinematics.

## 6. Mapping to Dexterit-E tables (`.dtp`)

- **Load table** (one row per haptic condition): m_b, r_b, theta, L_slope, c_rr, k_c,
  b_c, F_max, transient_amp, transient_freq, haptics_on (0/1), visual_mass_cue.
- **Target table**: home target (x, y, radius), slope top, slope foot, ball graphic row
  (radius, colour), hand disk display (optional).
- **TP table** (one row per trial type): load row, target rows, hold_time, release delay,
  required hand stillness, trial timeout.
- **Block table**: trial ordering and randomisation per block.

A Python generator for these files will live in `protocols/` once conditions are fixed.

## 7. Data and analysis

Dexterit-E 3.5 stores each exam as a `.zip` of per-trial `.c3d`. Analysis in Python with
`ezc3d`: hand kinematics and robot forces at 1 kHz, event codes, plus the analog channels
above. Primary impact measures: peak hand displacement, time to return, hand force
response, EMG onset relative to CONTACT_START if EMG is recorded.

## 8. Open questions

1. End-Point or Exoskeleton lab? Determines force vs. joint-torque rendering and the
   TDK blocks used.
2. What is manipulated: ball mass, speed, visual-haptic congruence, predictability of
   release timing, haptics on/off catch trials?
3. Must the hand stay still until impact, or may the subject catch or dodge?
4. Is EMG or eye tracking recorded? This affects the analog input table.
5. Does the ball bounce back up the slope after impact (full physics) or stop?
