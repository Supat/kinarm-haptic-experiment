# Kinarm task: ball_impact

`ball_impact.mdl` is the Dexterit-E 3.5 Task Program (MATLAB R2013a + TDK 3.5).
It currently holds the required skeleton (GUI Control, Trial_Control chart,
DataLogging, Parameter Table Defn, video chain, KINARM_HandInTarget) with a
two-state placeholder trial. The real trial logic is specified in
`docs/experiment-design.md` section 5 and goes in once the event sequence is
decided. `build_task_model.m` generated the skeleton; once the model is
hand-edited in Simulink, the .mdl is the source of truth — do not regenerate.

**Next build: see `REBUILD-SPEC.md`** (Parameter Table Defn columns; the first lab test
ran but exposed that the TP/Load tables have no columns).

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
