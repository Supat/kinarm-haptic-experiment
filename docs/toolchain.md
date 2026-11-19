# Toolchain decision (2026-11-19)

## Facts from Kinarm's compatibility table

Source: https://kinarm.com/learning-support/installing-maintaining-your-kinarm-lab/

| MATLAB release | Compiler | Dexterit-E range |
|---|---|---|
| R2007b | VC++ 6.0 SP6 / VC++ 2005 Express / Open Watcom 1.3 | 2.2 to 3.5 (deprecated, needs patch) |
| R2010a | VC++ 2008 Express / Open Watcom 1.8 | 3.0 to 3.6 |
| **R2013a 64-bit** | **Windows SDK 7.1** | **3.4 to 3.8** |
| R2015a SP1 | Windows SDK 7.1 | 3.6 or greater |
| R2019b Update 7 | Visual Studio 2017 Community | 3.9 or greater |

Rules Kinarm states:
- "Task Programs must be developed and built using the specific MATLAB version that matches the version of the operating system (OS) on the Robot Computer."
- Robot computer boot images for older machines: xPC 4.3 (R2010a), xPC 5.4 (R2013a), SLRT 6.2 (R2015a SP1).
- Only MATLAB and its compiler may be installed on the Dexterit-E computer, but that computer *may* be used for task development.
- Custom tasks must be rebuilt for each minor Dexterit-E version.

## Why the build host must be Windows

xPC Target (the R2013a name for Simulink Real-Time) runs only on a Windows host.
The macOS/Linux installer (`R2013a_UNIX.iso`) does not include xPC Target and cannot
produce the `.dlm` target application Dexterit-E loads. In addition, R2013a for Mac is
Intel-only and depends on Apple's Java 6 runtime, which cannot be installed on current
macOS, so it will not run on an Apple Silicon Mac at all.

## Host machine options, best first

1. **The lab's Dexterit-E computer.** Kinarm explicitly allows it. Already Windows,
   already offline, no file transfer needed. Install only MATLAB R2013a + SDK 7.1.
2. **Any Intel/AMD Windows PC or laptop** (Windows 7 to 10 is safest; 11 may work).
   Build there, carry the `.dlm` and `.dtp` to the lab by USB.
3. **x86-64 Windows VM on the Mac via UTM/QEMU emulation.** Works in principle but
   emulation is slow and SDK 7.1 install is fragile. Parallels on Apple Silicon only runs
   ARM Windows, where the 2011-era x64 compiler toolchain is unproven. Last resort.

## Build output

R2013a + xPC Target builds a `<model>.dlm`. Copy it (and the `.dtp` protocol) into the
Dexterit-E custom tasks folder on the Dexterit-E computer. Do not rename the `.dlm`.

## Data format for Dexterit-E 3.5

Pre-3.9 Dexterit-E saves each exam as a `.zip` of per-trial `.c3d` files. The current
Kinarm Analysis Scripts (v3.1.5) target the 3.9+ `.kinarm` format; older script releases
(`zip_load`, `c3d_load`) or a generic C3D reader (Python `ezc3d`) are needed for 3.5 data.
Dexterit-E Explorer (free, Mac/Windows) can open and re-export these files.

## Protocol file format (observed in community repos)

`.dtp` files are plain XML (CRLF) with Python-literal tables: `loadtable` / `loadtable_defs`,
`targettable` / `targettable_defs`, `tptable`, `blocktable`, `tasklevelparams`,
`analog_inputs`, `binary_data` (lookup-table files referenced by name), `data_rate`,
`feedback_mode`, `random_seed`. They diff cleanly in git, so keep them in `protocols/`.

## Can the model be developed on macOS and compiled on Windows later? No.

- Any MATLAB that runs on an Apple Silicon Mac is R2023b or newer. Simulink's
  "Export to Previous Version" reaches back only seven years, so R2013a is out of range,
  and R2013a cannot open a newer `.slx` at all.
- The Dexterit-E 3.5 TDK is an R2013a Simulink library. The task model is mostly links
  into it; opening the model elsewhere leaves the Kinarm blocks unresolved, and opening
  the library in a newer release upgrades it irreversibly.
- Kinarm's rule: develop and build in the MATLAB release matching the robot computer OS.

Workflow: author the Simulink/Stateflow model in R2013a on the Windows build machine
(remote desktop from the Mac is fine). Develop everything else on the Mac:
trial-logic spec and diagrams, `.dtp` protocol generation (plain XML), lookup tables
and stimuli, and the analysis pipeline (`.c3d` in `.zip`, readable with Python `ezc3d`).

Sources: https://www.mathworks.com/help/simulink/slref/simulink.exporttoversion.html
