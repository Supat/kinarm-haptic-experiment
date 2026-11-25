# ball_impact implementation guide

How the task is built, how it runs, and how to change it yourself.
(Written 2026-11-25 on the `simplified` branch — 6-state chart.)

## 1. The moving parts

| File | Role |
|---|---|
| `task/ball_impact.mdl` | The Simulink model. **Generated/modified by the scripts below — never hand-edit the scripted parts.** |
| `task/ball_impact.dlm` | Compiled xPC binary. This is what Dexterit-E loads on the robot computer. Deploy by USB. |
| `task/define_param_tables.m` | Defines the table *schemas* (columns), events, and buttons inside `Parameter Table Defn`. |
| `task/build_trial_logic.m` | Rebuilds the Trial_Control chart, Ball_Engine block, Exo loads chain, and ALL root wiring. |
| `task/ball_engine_eml.m` | Source of the Ball_Engine MATLAB Function (physics + graphics). `build_trial_logic` `fileread`s it into the chart — editing this file does nothing until you re-run the chain. |
| `task/add_debug_taps.m` | Adds analog channels 9–16 (torque-path gate logging). |
| `task/add_ep_loads.m` | Adds the End-Point loads chain and retargets the debug taps at the EP tags. |
| `protocols/smoke_v1.dtp` | Protocol: the table *values*. Dexterit-E writes them into the model at task load — **changing numbers here needs no rebuild**. |

Golden rule: the build scripts are rerunnable because they **delete and
recreate** their blocks. So any change you make by hand in the Simulink
editor to a scripted block or wire is lost on the next rebuild. Change the
script, then rebuild.

## 2. The build pipeline

In MATLAB R2013a (this machine, headless), from `task/`:

```matlab
load_system('KINARM_general')   % BKIN library on the path first
build_trial_logic               % chart + Ball_Engine + Exo chain + wiring
add_debug_taps                  % analog ch 9-16
add_ep_loads                    % EP chain (MUST run after add_debug_taps)
rtwbuild('ball_impact')         % same .dlm as buildxpc + leaves C code on disk
```

Order matters: `build_trial_logic` wipes all root wiring, so it always goes
first; `add_ep_loads` retargets Goto tags on blocks that `add_debug_taps`
creates, so it goes after.

Headless invocation from PowerShell (the `-wait` keeps it synchronous):

```powershell
Remove-Item Env:NoDefaultCurrentDirectoryInExePath -ErrorAction SilentlyContinue
& 'E:\matlabR2013a\bin\matlab.exe' -nosplash -nodesktop -minimize -wait `
  -logfile build.log -r "try, cd('...\task'), load_system('KINARM_general'), build_trial_logic, add_debug_taps, add_ep_loads, rtwbuild('ball_impact'), catch e, disp(getReport(e)), end; bdclose('all'); exit"
```

Gotcha: if `NoDefaultCurrentDirectoryInExePath` is set in the environment,
the build dies with `'ball_impact_sfun.bat' is not recognized` — clear it in
the same shell before launching MATLAB.

**Verification ritual after every rebuild**: open
`task/ball_impact_xpc_rtw/ball_impact.c` and confirm the
`MATLAB Function: '<Root>/Ball_Engine'` body in the output function sits
inside `if (TaskCounters.TID[2] == 0)`. TID[2] is the 1 kHz (0.001 s) rate;
if the block ever falls back to the 0.0005 s base rate, the physics runs
twice per millisecond and every dt-dependent number (gravity step, damping,
`after()` timing feel) is wrong. The rate is pinned two ways in
`build_trial_logic`: `SystemSampleTime '0.001'` on the block, and the
`UD_hand` UnitDelay (SampleTime 0.001) on the `hand_in` input.

## 3. Runtime data flow (root diagram)

```
GUI Control ──e_clk trigger──> Trial_Control ──phase/rows──> Ball_Engine
    ^  ^                           │                           │   │  │
    │  └──Trial_Protocol row───────┘                      vcodes  hand  analog
    └──────e_Trial_End (next trial)                         │   forces  log
                                                            v      │     v
HandInTarget x2 ──max──> chart + Ball_Engine        VCODES cat   both   DataLogging
                                                    -> display  chains
```

- **GUI Control** (BKIN library): talks to Dexterit-E. Gives the chart its
  trigger event `e_clk` (1 kHz task clock) and the current `Trial_Protocol`
  row; receives `e_Trial_End` to advance the protocol.
- **Trial_Control** (Stateflow): sequences the trial; see section 4.
- **Ball_Engine** (MATLAB Function, 1 kHz): all physics, all custom
  graphics, the per-trial random timing; see section 5.
- **Two loads chains in parallel** (robot-type safety): see section 6.
- **Display**: Show_Target (home target from the Target Table) +
  Hand_Feedback + Ball_Engine's 9 VCODE rows are concatenated (`VCODES`,
  NumInputs 3) into Process_Video_CMD.
- **DataLogging**: event codes + KINARM data + 16 analog channels.
- **Either-hand detection**: the library `KINARM_HandInTarget` watches
  exactly ONE hand (mask `use_dominant_hand` on = active arm). A second
  instance with the box off watches the other arm; a MinMax `max` ORs the
  two vectors. The result feeds the chart (inport 2) and, through
  `UD_hand`, Ball_Engine's `hand_in` (ring colour).
- **UnitDelays** (`UD_pen`, `UD_speed`, `UD_delay`, `UD_timeout`,
  `UD_hand`): one 1 ms-step delay each. They break the algebraic loop
  chart -> Ball_Engine -> chart, and they pin the 0.001 s rate on signals
  that would otherwise inherit the 0.0005 s base rate.

## 4. The trial state machine (simplified: 6 states, 11 transitions)

Everything lives in `build_trial_logic.m` section 3. States are created by
`mkstate(chart, position, label)` where the label string IS the state: first
line the name, then `entry:` actions. Transitions by
`mktrans(chart, src, dst, label, order)` where order is the evaluation
priority when several transitions leave one state (1 wins).

| State | entry actions | waits for |
|---|---|---|
| WAIT_HOME | `logging_enable=1`; latch `target_row/load_row/ball_row` from the TP row; `target_state=1`; `phase=0`; `event_code=0` | hand inside home |
| HOLD | `TimeInterval = Trial_Protocol[HoldTime]` | hold time (hand must stay) |
| RELEASE_WAIT | `phase=1` (ball parked, visible); `TimeInterval = delay_fb` | random delay (hand must stay) |
| ROLLING | `phase=2` (physics live); `event_code=E_BALL_RELEASE`; `TimeInterval = timeout_fb` | contact / abort / timeout |
| IMPACT | `event_code=E_CONTACT_START` | ball settles |
| EndOfTrial | `logging_enable=0`; `target_state=0`; `phase=0`; `send(e_Trial_End)` | 1 s inter-trial pause |

Transitions (priority order):

- WAIT_HOME -> HOLD: `[HandInTarget[target_row] == 1]`
- HOLD -> RELEASE_WAIT: `after(TimeInterval, e_clk)`; HOLD -> WAIT_HOME on hand-out
- RELEASE_WAIT -> ROLLING: `after(TimeInterval, e_clk)`; -> WAIT_HOME on hand-out
- ROLLING -> IMPACT: `[pen_fb > 0]`
- ROLLING -> EndOfTrial: hand-out, with **transition action**
  `{event_code = E_HAND_LEFT_HOME;}` (this replaced the old ABORT_LEAVE
  state); or `after(TimeInterval, e_clk)` trial timeout
- IMPACT -> EndOfTrial: `after(300, e_clk)[speed_fb < 0.02 && pen_fb <= 0]`
  (settled) or `after(2500, e_clk)` (hard cap since first contact) — both
  with `{event_code = E_CONTACT_END;}`
- EndOfTrial -> WAIT_HOME: `after(1000, e_clk)`

Mechanics you need to know before editing:

- **`after(n, e_clk)` counts chart wake-ups** = milliseconds, because the
  chart is triggered on the rising edge of the 1 kHz task clock. So
  `after(300, e_clk)` = 300 ms. `TimeInterval` is a chart-local variable so
  the duration can come from a table.
- **`event_code` is a plain output that persists.** Dexterit-E logs it when
  it changes. A state's entry writes it; nothing resets it until WAIT_HOME
  writes 0. That is why stamping a code in a *transition action* works —
  the value survives into EndOfTrial.
- **The old CONTACT <-> POST_IMPACT pair is gone on purpose.** Physics
  (bounces included) is entirely inside Ball_Engine; the chart pair only
  stamped event codes, and re-fired them on every micro-bounce. Per-bounce
  timing is still in the 1 kHz analog log (`pen`, `Fx`, `Fy`).
- **R2013a chart codegen limits** (will crash the build with a cryptic CGIR
  FixptType assertion): no `rand()`, no arithmetic on booleans in state
  actions. That is why the random release delay and the zero-timeout
  default are computed in Ball_Engine (`delay_ms`, `timeout_ms` outputs)
  and fed back through UnitDelays as `delay_fb`/`timeout_fb`; the chart
  only *samples* them at state entry.
- The loop at the end of section 3 pins the four End-bound transition
  label positions — cosmetic only, so renders stay readable.

To change the logic: edit the `mkstate`/`mktrans` strings, re-run the full
pipeline (section 2), re-verify TID[2], and re-render if you want to see it:
`rt=sfroot; ch=rt.find('-isa','Stateflow.Chart','Name','Trial_Control'); sfprint(ch,'png','chart.png')`.

## 5. Ball_Engine (`ball_engine_eml.m`)

Inputs: `phase, home_row, ball_row, load_row` (from the chart),
`KINdata, Load_Table, Target_Table, Task_Wide, TP_Table, tp_row, seed`
(From-tag globals), `hand_in` (either-hand vector, for the ring colour).
Outputs: `vcodes` (9x70), `hand_forces` (4x1 = `[a1Fx a1Fy a2Fx a2Fy]`, N at
the handle, global frame), `ball_log` (8 analog values), `pen_out`,
`speed_out`, `delay_ms`, `timeout_ms`.

**Geometry**: the ball is constrained to the straight rail from the
BallTarget row's position toward the HomeTarget row's position
(unit vector `u`); its one degree of freedom is the path distance `s`.
Target coordinates are **global cm** (origin fixed by the robot bases, NOT
the display); display centre is at about global (-22.25, 10) cm —
eyeballed, see memory/protocol.

**Physics** (phase 2 only; phase 0/1 holds `s=v=0` and resets contact
state): rolling-ball acceleration `(5/7)*g*sin(theta)` while `s < SlopeLength`,
rolling resistance `-RollRes*g*sign(v)` always. Per hand (both robots):
penetration `pen = BallRadius + HandRadius - |p_hand - p_ball|`; if positive,
force `clamp(Kc*pen + Bc*dpen/dt, 0, Fmax)` along the ball-to-hand normal,
plus a decaying `TransientAmp * exp(-t/10ms) * sin(2*pi*TransientFreq*t)`
burst for the first 30 ms of each NEW contact (the "click"). The reaction
is projected onto the rail and decelerates the ball (bounce). `Fmax` is
hard-clamped at 45 N regardless of the table. `HapticsOn=0` zeroes the
commanded force but keeps the visual bounce.

**Why the LCG**: `rand()` is unavailable (section 4), so a linear
congruential generator seeded from Dexterit-E's `seed` tag produces the
release delay in [ReleaseDelayMin, ReleaseDelayMax] — the protocol's seed
option therefore still gives reproducible sequences.

**VCODE rows** (the custom graphics; one row = one primitive):

| Row | What | Colour notes |
|---|---|---|
| 1 | flat run-out bar, slope foot -> ring edge | 0x303030 |
| 2–5 | slope bar, 4 segments, lightest at top | 0x5A5A5A -> 0x393939 |
| 6 | slope-foot tick (perpendicular) | 0xC8C8C8 |
| 7 | home ring, hollow | stroke white / 0x2ECC71 green when `hand_in(hr)>0.5`; fill 16777216 = none |
| 8 | ball | 0xF5C542 yellow -> white while `pen>0`; stroke -2147483648 = none |
| 9 | ball highlight (upper-left, 0.3 r) | 0xFFF3C0 -> 0xF5E0A0 on contact |

Column conventions: `[1]` type (4 = line, 1 = circle), `[2]` show (0/1),
`[3,4]` position (m, global), `[5]` fill colour, `[6]` stroke colour,
`[7]` stroke width (m), `[9]` opacity 100, `[10,11]` = relative endpoint for
a line / `[10]` = radius for a circle. Colours are decimal 0xRRGGBB.
Rows 8–9 show only when `phase > 0.5` and hide when `s > dd + 0.6` (rolled
off scene); track and ring are always drawn. The home target's own filled
circle is hidden by `VisRadius = 0` in the protocol (LogRadius still sets
the logical zone and the ring radius).

To change physics or visuals: edit `ball_engine_eml.m`, re-run the pipeline.

## 6. Force path and robot types (the 3-day lesson)

The lab robot is a **KINARM End-Point**. Dexterit-E writes
`a1_robot_type = 1` at task load, and the Exoskeleton chain
(`Forces_to_Torques -> KINARM_Apply_Loads`) ramp-gates to zero on robot
type 1 **by design, silently**. The model therefore carries BOTH chains
(like Victor's working task), and only the one matching the robot engages:

- EP (the lab): `Ball_Engine/hand_forces -> KINARM_EP_Apply_Loads`
  (mask: 500/500 ms ramps, max_force 30 N vector-magnitude clip) ->
  Goto `KINARMEPTorqueCMD` -> `AddTorques` port 2 inside
  DataLogging/Poll KINARM (`add_ep_loads` does the Goto/From swap).
- Exo: `hand_forces -> Forces_to_Torques -> KINARM_Apply_Loads` (12 Nm).

Two force clamps stack: the engine's `Fmax` (<=45 N) and the EP block's
`max_force` (30 N). Raise both if you ever need more than 30 N.

EP grip interlock: a handle only outputs force while fully grasped —
KINdata column 37 is 3 (motors disabled) until gripped, 0 when enabled.
Logged as analog ch 15/16; check these first if "no force on one hand".

## 7. Logging

- **Event codes** (defined in `define_param_tables.m`, PTD events tab):
  1 BALL_RELEASE, 2 CONTACT_START, 3 CONTACT_END, 4 HAND_LEFT_HOME (error).
- **Analog channels** (names/gains come from the protocol's analog rows):
  1–8 from `ball_log`: `ball_x, ball_y, ball_v, pen, Fx, Fy, phase, s`
  (Fx/Fy are the two-hand sums);
  9–16 debug gates from `add_debug_taps` (+`add_ep_loads` retarget):
  `scal1, scal2` EP ramp scalings, `tq_s, tq_e` EP command (robot-1 pair),
  `mon` Monitor_status force_scale, `runstat` Run_Status,
  `m37_r1, m37_r2` grip/motor status.
- If you ever strip the debug channels for the final build, note that
  `add_ep_loads` section 3 `set_param`s the DBG blocks — you must edit both
  scripts together, and drop the 8 analog rows from the protocol.

## 8. The protocol (.dtp) — change values WITHOUT rebuilding

Table schemas (column meanings) live in the model; the `.dtp` holds values.

- **Target Table** (global cm): X, Y, VisRadius (drawn; 0 = invisible),
  LogRadius (logical zone + our ring radius), Colour.
  Current rows: 1 = home (-22.25, 10, Vis 0, Log 1.5), 2 = slope top
  (7.75, 10) — user-eyeballed display centre.
- **Load Table** (one row = one haptic condition): BallMass kg, BallRadius
  cm, SlopeAngle deg, SlopeLength cm, FlatLength cm (schema only — the
  drawn flat length is computed from the geometry), RollRes, Kc N/m,
  Bc Ns/m, Fmax N, HapticsOn 0/1, TransientAmp, TransientFreq Hz.
  All-zero row falls back to safe visual-only defaults.
- **TP Table** (one row = one trial type): HomeTarget row, BallTarget row,
  Load row, HoldTime ms, ReleaseDelayMin ms, ReleaseDelayMax ms,
  TrialTimeout ms (0 -> 10 s default).
- **Task Wide**: HandRadius cm (contact paddle), ApproachDir (reserved).

Contact-feel tuning is therefore a protocol edit only: Kc/Bc harder or
softer, TransientAmp 5–10 for a sharp click, Fmax up to 30 (EP clamp).

## 9. Change recipes

| I want to… | Edit | Rebuild? |
|---|---|---|
| tune impact feel / mass / slope | Load Table row in the `.dtp` | no — reload protocol |
| move the layout | Target Table rows in the `.dtp` | no |
| change hold / delay / timeout per trial | TP Table row in the `.dtp` | no |
| change trial sequencing / settle rule / events | `build_trial_logic.m` (mkstate/mktrans strings) | yes, full pipeline |
| change physics equations or graphics | `ball_engine_eml.m` | yes, full pipeline |
| add a table column or event | `define_param_tables.m`, then everything | yes, run it before `build_trial_logic` |
| add an analog channel | `ball_log` in the engine + mux in `add_debug_taps.m` + protocol analog rows | yes |
| raise force ceiling past 30 N | `Fmax` in Load row AND `max_force` in `add_ep_loads.m` | yes |

After ANY rebuild: check the TID[2] guard (section 2), commit, copy
`ball_impact.dlm` (and the `.dtp` if changed) to the lab PC by USB.
