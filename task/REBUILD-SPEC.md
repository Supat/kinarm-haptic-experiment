# Rebuild spec for ball_impact (next Windows build)

Written 2026-11-21 after the first lab test. Audience: the Simulink session on the Windows
build machine. The current `.dlm` (commit 5c75d73 skeleton) **loads and runs** on the lab's
Dexterit-E 3.5.2 / xPC 5.4 robot computer: pressing Go with no protocol executed one trial
of the placeholder chart (Trials Completed 1, Blocks Completed 1). Toolchain, target version
and TDK compatibility are therefore proven.

## What blocked the smoke test

In the Edit Task Protocol dialog the **TP Table tab says "This task does not define any
columns for this table"**, the Load Table is likewise empty, and the Target Table has only
X and Y. Those columns come solely from the **Parameter Table Defn** block compiled into the
`.dlm`. The skeleton copied the library block with its `apply` flag cleared, so only the
library defaults (target X, Y) were embedded. No TP columns means no TP rows, no block, no
trials from a protocol.

## 1. Parameter Table Defn: columns to declare

Use the names below verbatim (they become the `.dtp` column names and the Stateflow
lookups). Types as the 3.5 guide allows (float / int / colour / target-row / load-row);
where a dedicated row-reference type exists, use it so Dexterit-E validates the index.
Check the stock tasks' `.dtp` files on the USB for the exact type keywords the 3.5 block
expects.

### Target Table (one row = one visual object)
| Column | Type | Note |
|---|---|---|
| X | float, cm | relative to handle frame (Dexterit-E default) |
| Y | float, cm | |
| VisRadius | float, cm | drawn radius |
| LogRadius | float, cm | hand-in-target radius |
| Colour | colour | |

Keep the library's X and Y first so existing protocols stay valid.

### Load Table (one row = one ball/haptic condition)
| Column | Type | Default for smoke test |
|---|---|---|
| BallMass | float, kg | 0.2 |
| BallRadius | float, cm | 3 |
| SlopeAngle | float, deg | 25 |
| SlopeLength | float, cm | 20 |
| FlatLength | float, cm | 5 |
| RollRes | float | 0.02 |
| Kc | float, N/m | 2000 |
| Bc | float, N s/m | 10 |
| Fmax | float, N | 45 (hard-clamped again in the model) |
| HapticsOn | int 0/1 | 1 |
| TransientAmp | float, N per m/s | 0 |
| TransientFreq | float, Hz | 150 |

### TP Table (one row = one trial type)
| Column | Type | Default |
|---|---|---|
| HomeTarget | target row | 1 |
| BallTarget | target row | 2 (the ball graphic; its X/Y are overridden each tick) |
| Load | load row | 1 |
| HoldTime | int, ms | 500 |
| ReleaseDelayMin | int, ms | 500 |
| ReleaseDelayMax | int, ms | 1500 |
| TrialTimeout | int, ms | 5000 |

### Task Wide Params
| Name | Type | Default |
|---|---|---|
| HandRadius | float, cm | 2 |
| ApproachDir | float, deg | 90 (lateral: ball travels from +X toward -X; 0 = straight toward the body) |

### Task buttons (Task Control Buttons section of the block)
| Btn# | Constant | Label |
|---|---|---|
| 2 | BTN_MARK | Mark event |
| 3 | BTN_REPEAT | Repeat trial |

Button clicks are logged automatically as `TASK_BUTTON_n_CLICKED`.

### Analog inputs
None for now (EMG undecided).

## 2. Minimal chart change so the smoke test shows something

Keep the two-state placeholder, but make `Init` display the TP row's `HomeTarget` instead
of the hard-coded row 1, and hold it for `HoldTime` + 1500 ms before ending the trial.
`target_row = Trial_Protocol(<index of HomeTarget column>)` per the guide's TP-vector
convention. Everything else (ball physics, contact, loads) waits for the event sequence.

## 3. Build and hand-off

1. `buildxpc('ball_impact.mdl')` → `ball_impact.dlm`. Confirm the Parameter Table Defn's
   `apply` was run (or the mask re-applied in the Simulink GUI) so the definitions embed;
   verify by opening the `.dlm` folder's generated `*.dtp` template if the TDK emits one,
   or simply by the protocol dialog on the lab PC showing the new columns.
2. Commit the `.mdl` and `.dlm`; name the USB folder `ball_impact_<commit>`.
3. On the lab PC: replace the `.dlm` in
   `C:\Users\BKIN TECHNOLOGIES\My Documents\BKIN Dexterit-E 3.5 Tasks\ball_impact\`,
   restart Dexterit-E, select study "Ball Impact", subject, Custom tasks → ball_impact →
   green + → fill Target 1 (0, 10, 1, 1.5, white), Load 1 defaults, TP 1 defaults,
   Block 1 = TP 1 × 5 → Apply and Save As `smoke_v1` → Go.
   Expect 5 trials, a target 10 cm ahead of the hand each trial.

## 4. Lab facts learned 2026-11-21 (also in docs/lab-deployment.md)

- Lab is a **Kinarm Exoskeleton**: Dexterit-E draws both arms as two-link linkages. Use
  the `KINARM_loads` (exoskeleton) library for forces, not `KINARM_EP_loads`. Joint torque
  limits 5.1 Nm continuous / 15.3 Nm intermittent.
- Custom tasks root: `C:\Users\BKIN TECHNOLOGIES\My Documents\BKIN Dexterit-E 3.5 Tasks`
  (Options menu → Custom Tasks Location). One subfolder per task holding the `.dlm` and
  its `.dtp` files; plain `ball_impact.dlm` name works.
- The task tree is filtered by **Study**; the user created study "Ball Impact".
- **Active arm** (Left/Right) is chosen on the Custom tasks tab at run time. The Target
  Table has "Invert X values when active arm is left arm" (ticked by default) and a
  Handle frame of reference at (0, -44 cm) from the robot origin, so a lateral slope is
  mirrored for the left arm automatically.
- Protocol editor tabs: General, Target Table, Load Table, TP Table, Task Wide Params,
  Block Table, Analog Inputs. Data rate 1000 Hz or 200 Hz.
