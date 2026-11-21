# Lab Kinarm PC inventory (copied 2026-11-19 to E:\Supat\Kinarm PC)

## What was copied

| Item | Location in copy | Notes |
|---|---|---|
| **TDK 3.5 (complete)** | `BKIN Technologies\BKIN Task Development Kit 3.5` | All block libraries (`DexteritE.mdl`, `General.mdl`, `KINARM_loads.mdl`, `KINARM_EP_loads.mdl`, `KINARM_general.mdl`, `KINARM_IO.mdl`, `Video.mdl`), `buildxpc.m`, mexw32+mexw64 binaries, `slblocks.m`, release notes. Files dated 2015. |
| Dexterit-E 3.5 install | `BKIN Technologies\BKIN Dexterit-E 3.5` | 2015 vintage. Robot targets: xPC 3.3 / 4.3 / 5.4. |
| Dexterit-E 3.8 install | `BKIN Technologies\Dexterit-E 3.8` and `Kinarm\Dexterit-E 3.8` | Two byte-identical copies (Dex.exe MD5 match), files dated Dec 2019. Robot targets: xPC 5.4 / SLRT 6.2 / 6.8. Only stock Kinarm tasks, each shipped as `*54.dlm` + `*62.dlm`; no custom tasks. No exact 3.8.x patch marker found in the files. |
| User guides | `BKIN User Guides` | Includes *Creating Task Programs for Dexterit-E 3.5.pdf* and *Dexterit-E 3.5 User Guide.pdf*. |
| `pathdef.m` | copy root | Lab MATLAB path adds: `C:\C3D_load_v2.18`, `...\Documents\MATLAB\KINARM_C3D_load`, TDK 3.5, TDK 3.5\PMAC-PCI. |
| C3D analysis scripts (added 2026-11-21) | `C3D_load_v2.18` and `KINARM_C3D_load` | Both folders copied; identical contents (`c3d_load.m` v2.18 + helpers + sample `.c3d` files). `KINARM_C3D_load` is the lab's working copy of `C3D_load_v2.18`. |
| Sample custom task (added 2026-11-21) | `Victor_Bimanual_Carving_Modified` | A custom task that ran on this robot: plain-named `BimanualCarvingModified.dlm` + 5 `.dtp` protocols. Confirms plain `.dlm` naming for custom tasks and the 3.5 protocol XML format; its `.dtp` defs show the live type keywords (`float`, `int`, `integer`, `colour`, `label`, `target`, `load`). No `.mdl` source included. |

## Resolved: the lab runs Dexterit-E 3.5.2; the 3.8 install is unused

The lab PC has both a 2015-era Dexterit-E 3.5 and a Dec-2019 Dexterit-E 3.8
install (duplicated under the newer "Kinarm" branding folder), but per the user
the **recently working version is 3.5.2** — the 3.8 install is an abandoned or
never-commissioned upgrade (it contains only stock tasks and no TDK 3.8 exists
on the machine).

Toolchain confirmation from the copied files:
- TDK 3.5 `buildxpc.m` accepts exactly R2007b / R2010a / R2013a (prefers
  `.slx` + `mexw64` under R2013a).
- The lab `pathdef.m` contains `toolbox\matlab\apps` and `slproject` entries
  (introduced in R2012b) plus xPC Target entries, so the lab's own MATLAB was
  **R2013a with xPC Target** — the robot computer therefore boots **xPC 5.4**.

So the full chain is settled: Dexterit-E 3.5.2 + TDK 3.5 (in hand) +
MATLAB R2013a 64-bit + Windows SDK 7.1 + xPC 5.4 robot image. Patch releases
share a TDK, so TDK 3.5 covers 3.5.2. No kinarm.com download is needed for the
TDK; the Learning+Support account is optional (forum, future updates).

## Remaining on the next lab visit

1. ~~Copy `C:\C3D_load_v2.18` and `KINARM_C3D_load`~~ — done 2026-11-21.
2. Sanity-check Help > About in Dexterit-E (expect 3.5.2) — first lab test
   2026-11-21 confirmed the skeleton `.dlm` loads and runs, so the toolchain
   match is proven (see `task/REBUILD-SPEC.md` for what was learned).
3. If available, copy the Bimanual Carving task's Simulink source (`.mdl`)
   from wherever it was developed — useful as a worked example of loads and
   Parameter Table Defn on this exact system.
