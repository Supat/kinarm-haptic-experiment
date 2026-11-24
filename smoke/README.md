# Smoke-test exams (lab, 2026-11-24)

Three runs of the `smoke_v1` protocol on the lab Kinarm Exoskeleton with the
rebuilt `task/ball_impact.dlm` (commit b9be41a, parameter tables embedded).
Operator Supat, study "Ball Impact", active arm RIGHT. Each `.zip` is one
Dexterit-E 3.5 exam export; the `978270250_` prefix is the subject ID.

| File | Time | Trials | Notes |
|---|---|---|---|
| `978270250_2026-11-24_16-38-03.zip` | 16:38 | 5 | first run |
| `978270250_2026-11-24_16-38-54.zip` | 16:38 | 5 | second run |
| `978270250_2026-11-24_16-39-19.zip` | 16:39 | 5 | third run |

Each archive holds `version.txt`, `exam_info_3.txt`
(`task;protocol;;operator;study;;;arm;...`), `description.txt`, and
`raw/<run>_01_<trial>.c3d` per trial plus `raw/common.c3d` and
`raw/vcodes.dat`. Five trials per run matches the `smoke_v1` block
(TP 1 x 5), so the TP Table and Block Table now reach the task.

These are the only exam data kept in git (the `*.zip` rule in `.gitignore`
has a `!smoke/*.zip` exception). Real experiment data stays out of the repo.

Read them with the Python venv (`ezc3d`) or the lab's `c3d_load.m` v2.18
(see `docs/toolchain.md`).
