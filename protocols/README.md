# Protocols

- **smoke_v1.dtp** — development/sandbox protocol: one condition, 5 trials,
  hand-tuned target positions (home at the display centre). Loads on both
  the pre- and post-DrawRadius builds (the missing 13th Load column reads as
  0 = draw at BallRadius).
- **spidar_v1.dtp** — the SPIDAR experiment port. **Generated — do not hand
  edit**; run `py -3.12 -I protocols/make_spidar_v1.py` after changing
  `make_spidar_v1.py`, which is the single source of truth for the design:
  - Load rows 1–10 mirror SPIDAR numbering (1 = standard, 2–10 = conditions
    1–9): 3 drawn sizes (DrawRadius 2.1/3.0/4.2 cm, √2 steps like SPIDAR's
    0.4/0.5656/0.8 scales) × 3 approach speeds (SlopeLength 10/15/25 cm).
    Mass, contact radius, Kc/Bc/Fmax/transient are identical everywhere
    (inherited from the confirmed-feel smoke_v1 row).
  - 90 trials: a standard (TP 1) before every test trial, test order
    shuffled per repetition block with a fixed seed (reproducible).
  - Random release delay 500–1500 ms per trial; HoldTime 1000 ms.
  - Error trials re-queue (`use_repeat_trial_flag = 1`): a dodged trial
    (HAND_LEFT_HOME abort) is re-run at the **end of the block** — BKIN
    semantics, so the repeat is not preceded by a fresh standard trial.
    Trial timeouts do not re-queue (no error event).
  - Requires the 2026-11-27 build on the robot (DrawRadius col 13 +
    ABORT/repeat_trial chart).

Improvements over the original SPIDAR implementation, for the record:
automatic condition sequencing (vs. manually enabling spheres), anticipation
control via random release delay, hand-at-home enforcement with abort
events, single-source scripted protocol generation, deterministic 1 kHz
logging with event codes, and per-subject data files handled by Dexterit-E.
