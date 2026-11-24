# Kinarm task: ball_impact

`ball_impact.mdl` is the Dexterit-E 3.5 Task Program (MATLAB R2013a + TDK 3.5)
implementing the full experiment (built 2026-11-24, after the smoke test of the
parameter tables passed at the lab):

- **Trial_Control chart**: WAIT_HOME -> HOLD -> RELEASE_WAIT -> ROLLING ->
  CONTACT <-> POST_IMPACT -> EndOfTrial. Hand must stay in the home target
  until impact (leave during ROLLING -> HAND_LEFT_HOME error event + abort);
  repeated CONTACT/POST cycles log each bounce. Timeouts: TP TrialTimeout
  (0 means 10 s), post-impact window 2.5 s or |v| < 2 cm/s.
- **Ball_Engine** (MATLAB Function, source `ball_engine_eml.m`, 1 kHz):
  rolls the ball from the BallTarget row toward the HomeTarget row —
  a = (5/7)·g·sin(SlopeAngle) on the slope, −RollRes·g on the flat; penalty
  contact `clamp(Kc·pen + Bc·dpen, 0, min(Fmax,45))` plus a decaying
  TransientFreq burst per new contact; full bounce (reaction decelerates the
  ball). Draws the slope line + ball circle as hand-built VCODEs. An all-zero
  Load row falls back to safe defaults with **HapticsOn=0** (visual only).
- **Forces** go out as `hand_forces -> Forces_to_Torques ->
  KINARM_Apply_Loads` (Exoskeleton; torque limit 12 Nm, 500 ms ramps).
- **Events** (defined in the PTD events tab): BALL_RELEASE, CONTACT_START,
  CONTACT_END, HAND_LEFT_HOME (error). **Analog channels** logged per trial:
  ball x, y, v, pen, Fx, Fy, phase, s.

Scripts, in build order (all rerunnable; run from `task/`):
`build_task_model.m` (original skeleton — retired), then
`define_param_tables.m` (embeds tables/buttons/events into Parameter Table
Defn), then `build_trial_logic.m` (installs chart + Ball_Engine + loads chain
+ wiring), then `buildxpc('ball_impact.mdl')`.

## First haptic test protocol (suggested `impact_v1`)

Target 1 = home (0, 10, 1, 1.5, white); Target 2 = slope top, e.g. (0, 40).
Load 1: BallMass 0.2, BallRadius 3, SlopeAngle 25, SlopeLength 20,
FlatLength 10, RollRes 0.01, Kc 2000, Bc 10, Fmax 20, **HapticsOn 0 first**,
TransientAmp 0, TransientFreq 150. TP 1: HomeTarget 1, BallTarget 2, Load 1,
HoldTime 1000, ReleaseDelay 500–1500, TrialTimeout 8000. Watch a few visual
trials, then set HapticsOn 1 (Fmax 20 keeps it gentle; safety ladder in
`docs/lab-deployment.md`). Do NOT set BallTarget = HomeTarget — the ball
would spawn on the hand.

## Building the .dlm (on this build machine)

In MATLAB (launched from **E:\matlabR2013a**, see gotchas):

```matlab
cd C:\Users\Supat\Documents\kinarm-haptic-experiment\task
buildxpc('ball_impact.mdl')      % note: WITH the .mdl extension
```

Output: `ball_impact.dlm` — copy it plus the matching `.dtp` protocol files to
the Dexterit-E custom tasks folder on the lab PC. Do not rename the `.dlm`.

## Build-machine gotchas (learned 2026-11-20, the hard way)

1. **MATLAB must run from a path without spaces.** The xPC makefiles put
   `matlabroot` unquoted into nmake rules; `E:\Program Files\...` dies with
   `NMAKE U1073: don't know how to make 'E:\Program'`. 8.3 short names are
   disabled on E:, and a junction does not help (the launcher canonicalizes
   it). Hence the full copy at `E:\matlabR2013a` — use that one for builds.
   The original install at `E:\Program Files\MATLAB\R2013a` still works for
   everything except xPC builds.
2. **The TDK must also be on a space-free path**: working copy at
   `E:\kinarm\TDK-3.5` (on the MATLAB path; pristine archive stays in
   `E:\Supat\Kinarm PC`).
3. **`buildxpc` must be called with the `.mdl` extension** when passing a
   model name; `buildxpc('ball_impact')` mangles the name to `ball_im`
   (cell-array handling bug in the TDK script).
4. **One-time setups already done**: `mex -setup` (SDK 7.1) and
   `xpcsetCC('VisualC','C:\Program Files (x86)\Microsoft Visual Studio 10.0')`
   — xPC keeps its own compiler registration separate from mex.
5. **Headless builds from Claude Code**: clear the environment variable
   `NoDefaultCurrentDirectoryInExePath` before launching MATLAB, or Stateflow
   sfun builds fail with `'General_sfun.bat' is not recognized`. Interactive
   desktop MATLAB is unaffected.
6. The Parameter Table Defn block keeps its definition in block `UserData`
   with an `apply` flag; headless diagram updates need `apply=false` first
   (see `build_task_model.m`).
7. **How the definitions embed** (learned 2026-11-21): the mask init, when
   `apply` is set, materializes each parameter as a Constant block inside the
   masked subsystem whose NAME is the serialized definition
   (`constant;label;type;desc;enable;disable;option;group;`) and whose VALUE
   is the column number — that is what Dexterit-E reads out of the `.dlm`.
   The mask init never fires under `-nodesktop` (`load_system` draws nothing)
   and structural edits are locked during compile, so `define_param_tables.m`
   replicates the apply branch directly. The block must NOT be a library link
   (`set_param(...,'LinkStatus','none')` first) — a linked block is why the
   skeleton shipped with only X/Y columns. Column types verified in use on
   the lab robot: `float`, `int`, `integer`, `colour`, `label`, `target`,
   `load`. Labels/descriptions must avoid `/` (block-name separator) and `;`
   (field delimiter).
8. **Chart indexing**: the chart is C-action-language, so array indexing is
   zero-based by default — but the BKIN convention `Trial_Protocol[COL]` uses
   1-based column constants. Set `Props.Array.FirstIndex = '1'` on the
   `Trial_Protocol` and `HandInTarget` chart inputs (BKIN's own library
   charts do the same).
9. **Serialization verified against Dexterit-E's own parser** (2026-11-22):
   `library.zip` in the lab's Dexterit-E 3.5 install is Python 2.7 bytecode;
   `UI_Data_Management.pyo` decompiles cleanly (saved to
   `E:\Supat\Kinarm PC\Dexterit-E 3.5 decompiled\` — proprietary, keep out of
   git). Its `load_cfg_from_model` reads block paths starting
   `parameter table defn/` from the running target and splits the last path
   segment on `;`: parts[1]=name, [2]=type (`integer`→`int`), [3]=desc;
   buttons additionally use [4]/[5]=comma-separated enable/disable event
   codes and [7]=group (`groupID,RxC,gridLocation`; empty = plain button),
   with the Constant's value as Btn#. Our button rows match exactly — no
   longer inferred. Full editor type vocabulary (exact, lowercase):
   `float`, `int`/`integer`, `target`, `load`, `colour`/`color`, `bool`,
   `string`, `label`; anything else raises "An invalid column type".
   Colour cells hold a 9-digit `RRRGGGBBB` string (e.g. `255255255` white).
   Optional extras supported: `task_definition/INSTRUCTIONS=...` and
   `task_definition/LOAD_FOR=right|left` blocks.
10. **R2013a chart codegen crashes on rand() and boolean arithmetic**
    (2026-11-24): `rand()/RAND_MAX` (the guide 7.17 pattern) and expressions
    like `x + 10000*(y == 0)` in state entry actions abort the xPC build with
    a CGIR assertion (`FixptType::createFxpDtpProp ... wrong number of
    bits`). Compute such values in a MATLAB Function block instead and let
    the chart sample them at state entry (Ball_Engine outputs
    `delay_ms`/`timeout_ms`; its LCG is seeded from the `seed` From tag so
    the protocol's seed option still applies). Also: `Stateflow.EMChart` has
    no sample-time property in R2013a — the block inherits its rate; the
    generated `ball_impact.c` confirmed Ball_Engine runs in the 0.001 s
    section (`TaskCounters.TID[2]`), so `dt = 0.001` is correct. Useful From
    tags (guide 10.9): `KINdata` (hand pos m, global, row=arm, cols 23/24),
    `Load_Table`, `Target_Table` (global cm!), `Task_Wide_Parameters`,
    `TP_Table`, `TP_row`, `seed`, `task_control_button`. VCODE format (70
    doubles per target) documented in the Show_Target EML source.
11. **Adding KINARM_Apply_Loads headlessly does NOT connect the motors**
    (found via lab data 2026-11-24): the torque write lives in
    `DataLogging/Poll KINARM`, whose mask init swaps an internal
    `ZeroTorque` constant `[0 0 0 0]` for a `From KINARMTorqueCMD` only
    when it runs — which it never does under `-nodesktop`. Symptom: task
    physics and events perfect, `Fx/Fy` commanded (−17 N at impact), but
    `M1/M2TorCMD` flat zero and no felt force. `build_trial_logic.m` now
    replicates the mask branch (break the DataLogging link, delete
    ZeroTorque, add the From). Also: Dexterit-E auto-names a task's first
    four analog channels as measured motor torques — rename them in the
    protocol's Analog Inputs tab and tick Save? on every channel, or they
    are dropped from the .c3d.
