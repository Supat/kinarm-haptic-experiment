# kinarm-haptic-experiment

Custom haptic task for a KINARM lab running **Dexterit-E 3.5.2**.

| Component | Required version | Why |
|---|---|---|
| Dexterit-E | 3.5.2 (lab, July 2015) | Fixed by the lab installation |
| MATLAB | **R2013a 64-bit, Windows** | Only release in Kinarm's table that covers 3.5 and is not deprecated |
| Toolboxes | Simulink, Stateflow, MATLAB Coder, Simulink Coder, **xPC Target** | xPC Target builds the real-time task (`.dlm`) |
| Compiler | Microsoft Windows SDK 7.1 | Kinarm's listed compiler for R2013a 64-bit |
| Kinarm TDK | 3.5.x (from kinarm.com downloads, login needed) | Simulink block library for this Dexterit-E version |
| Robot computer OS | xPC Target 5.4 boot image | Must match the MATLAB release used to build |

**The build machine must be Windows x64.** xPC Target only supports a Windows host.
See `docs/toolchain.md` for the options and `setup/windows/` for scripted install.

## Experiment

A ball rolls down a slope shown on the display and strikes the subject's hand; the robot
renders the impact with a penalty spring-damper contact model. Design: `docs/experiment-design.md`.

## Python environment (Mac side)

```sh
python3 -m venv .venv && .venv/bin/pip install numpy matplotlib ezc3d
```

## Layout

- `task/` Simulink/Stateflow model source (`.slx` / `.mdl`). Built `.dlm` files are not committed.
- `protocols/` Dexterit-E task protocol (`.dtp`) files.
- `analysis/` Scripts for reading exported data. Dexterit-E 3.5 saves trials as `.c3d` inside a `.zip`.
- `docs/` Research notes, toolchain decisions, and `experiment-design.md` (ball-on-slope impact task).
- `sim/` Python impact simulator for tuning contact gains before using the robot. `.venv/bin/python sim/ball_impact_sim.py`.
- `setup/windows/` Silent-install scripts for MATLAB R2013a and Windows SDK 7.1.
