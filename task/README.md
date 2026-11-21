# Kinarm task: ball_impact

`ball_impact.mdl` is the Dexterit-E 3.5 Task Program (MATLAB R2013a + TDK 3.5).
It holds the required skeleton (GUI Control, Trial_Control chart, DataLogging,
Parameter Table Defn, video chain, KINARM_HandInTarget) with a two-state
placeholder trial that shows the TP row's HomeTarget for HoldTime + 1500 ms.
The full parameter tables (Target/Load/TP/task-wide + 2 task buttons) are
defined per `task/REBUILD-SPEC.md`. The real trial logic is specified in
`docs/experiment-design.md` section 5 and goes in once the event sequence is
decided.

Scripts: `build_task_model.m` generated the original skeleton;
`define_param_tables.m` added the parameter tables and the TP-aware chart
(rerunnable — it rewrites the Parameter Table Defn contents from scratch).
Once the model is hand-edited in Simulink, the .mdl is the source of truth —
do not regenerate.

**REBUILD-SPEC.md implemented 2026-11-21** by `define_param_tables.m` (the
first lab test ran but exposed that the TP/Load tables had no columns). To
check at the lab: protocol editor shows all tables' columns, and the two task
buttons render (the button serialization is inferred, see gotcha 8).

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
