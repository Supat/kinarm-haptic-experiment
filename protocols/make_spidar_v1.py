"""Generate protocols/spidar_v1.dtp - the Kinarm port of the SPIDAR experiment.

Design (docs/spidar-unity-system.md section 6):
  One physical ball everywhere: mass, contact radius, Kc/Bc/Fmax and the
  transient are IDENTICAL in every condition (values inherited from the
  confirmed-feel smoke_v1 row). Conditions vary only
    - DrawRadius (visual size: small/normal/big = 2.1/3.0/4.2 cm, sqrt(2)
      steps like SPIDAR's 0.4/0.5656/0.8 scales), and
    - SlopeLength (approach speed: low/normal/high = 10/15/25 cm).
  Load rows mirror SPIDAR numbering: row 1 = standard (0_standard),
  rows 2..10 = conditions 1..9 (big/small/normal x low/normal/high).

Improvements over the student's SPIDAR implementation:
  - automatic condition sequencing (seeded shuffle, standard interleaved
    before every test trial - no manual enabling of condition balls)
  - random release delay 500-1500 ms (anticipation control)
  - hand-at-home enforcement with abort events
  - per-subject files + event codes + 1 kHz logging come from Dexterit-E

Run:  py -3.12 -I protocols/make_spidar_v1.py
Deterministic (seeded): rerunning reproduces the same file.
"""
import random
from pathlib import Path

OUT = Path(__file__).with_name("spidar_v1.dtp")

REPS = 5          # repetitions of each of the 9 test conditions
SEED = 20261126   # trial-order shuffle seed (protocol content, not runtime)

# ---- tables -----------------------------------------------------------------
# Load columns: BallMass BallRadius SlopeAngle SlopeLength FlatLength RollRes
#               Kc Bc Fmax HapticsOn TransientAmp TransientFreq DrawRadius
BASE = [0.2, 3.0, 25.0, None, 10.0, 0.01, 2000.0, 10.0, 20.0, 1, 0.0, 150.0, None]
SPEED = {"low": 10.0, "normal": 15.0, "high": 25.0}     # SlopeLength (cm)
SIZE = {"small": 2.1, "normal": 3.0, "big": 4.2}        # DrawRadius (cm)

# SPIDAR condition order: 1..3 big x low/normal/high, 4..6 small, 7..9 normal
conds = [("big", "low"), ("big", "normal"), ("big", "high"),
         ("small", "low"), ("small", "normal"), ("small", "high"),
         ("normal", "low"), ("normal", "normal"), ("normal", "high")]

def load_row(size, speed):
    r = BASE[:]
    r[3] = SPEED[speed]
    r[12] = SIZE[size]
    return r

loadtable = [load_row("normal", "normal")]              # row 1 = standard
loadtable += [load_row(sz, sp) for sz, sp in conds]     # rows 2..10
loadtable += [[0.0]*9 + [0] + [0.0]*3 for _ in range(20 - len(loadtable))]

targettable = [[-22.25, 10.0, 0.0, 1.5, "255255255"],   # home ring @ display centre
               [7.75, 10.0, 0.0, 0.0, "0"]]             # slope top (30 cm track)
targettable += [[0.0, 0.0, 0.0, 0.0, "0"] for _ in range(32 - len(targettable))]

# TP columns: HomeTarget BallTarget Load HoldTime DelayMin DelayMax Timeout
tptable = [[1, 2, k, 1000, 500, 1500, 0] for k in range(1, 11)]
tptable += [[0]*7 for _ in range(100 - len(tptable))]

# ---- trial sequence: standard (TP 1) before every test trial ----------------
rng = random.Random(SEED)
seq, prev = [], None
for _ in range(REPS):
    order = list(range(2, 11))
    rng.shuffle(order)
    if order[0] == prev:
        order[0], order[1] = order[1], order[0]
    for k in order:
        seq += [1, k]
    prev = order[-1]
# Dexterit-E's get_tp_list_from_expr splits ONLY on commas; a space-separated
# list is one giant token and fails task load with "contains invalid value".
blockseq = ", ".join(str(n) for n in seq)               # 90 trials

blocktable = [[blockseq, 1, "", False, 1]]
blocktable += [["", 0, "", False, 0] for _ in range(50 - len(blocktable))]

analog = [["ball_x", "m"], ["ball_y", "m"], ["ball_v", "m/s"], ["pen", "m"],
          ["Fx", "N"], ["Fy", "N"], ["phase", ""], ["s", "m"],
          ["scal1", ""], ["scal2", ""], ["tq_s", "Nm"], ["tq_e", "Nm"],
          ["mon", ""], ["runstat", ""], ["m37_r1", ""], ["m37_r2", ""]]
analog_inputs = [[n, u, 1.0, 0.0, "", True] for n, u in analog]

loadtable_defs = [["BallMass", "float"], ["BallRadius", "float"],
                  ["SlopeAngle", "float"], ["SlopeLength", "float"],
                  ["FlatLength", "float"], ["RollRes", "float"],
                  ["Kc", "float"], ["Bc", "float"], ["Fmax", "float"],
                  ["HapticsOn", "int"], ["TransientAmp", "float"],
                  ["TransientFreq", "float"], ["DrawRadius", "float"]]

# ---- emit -------------------------------------------------------------------
def tag(name, body):
    return "\t<%s>\n\t\t%s\n\t</%s>\n" % (name, body, name)

parts = ['<?xml version="1.0" ?>\n<task_protocol>\n']
parts.append(tag("analog_inputs", repr(analog_inputs)))
parts.append(tag("blocktable", repr(blocktable)))
parts.append(tag("code", "''"))
parts.append(tag("data_rate", "1000"))
parts.append(tag("description", repr(
    "SPIDAR port: 3 drawn sizes x 3 approach speeds over constant contact "
    "physics; passive reception; standard before every test trial "
    "(seed %d, %d reps, %d trials)" % (SEED, REPS, len(seq)))))
parts.append(tag("feedback_mode", "3"))
parts.append(tag("gaze_feedback_mode", "0"))
parts.append(tag("instructions", "''"))
parts.append(tag("instructions_default", "u''"))
parts.append(tag("last_modified", "'2026-11-26  09:00 PM'"))
parts.append(tag("loadtable", repr(loadtable)))
parts.append(tag("loadtable_defs", repr(loadtable_defs)))
parts.append(tag("name", "'spidar_v1'"))
parts.append(tag("pause_behaviour", "0"))
parts.append(tag("random_seed", "1"))
parts.append(tag("targetfor_ep", "['Handle', ['Active', 0, -44], True]"))
parts.append(tag("targetfor_exo", "('Fingertip', ['Active', 30, 90], True)"))
parts.append(tag("targettable", repr(targettable)))
parts.append(tag("targettable_defs",
    "[['X', 'float'], ['Y', 'float'], ['VisRadius', 'float'], "
    "['LogRadius', 'float'], ['Colour', 'colour']]"))
parts.append(tag("tasklevelparams", "[['ApproachDir', '90.00'], ['HandRadius', '2.00']]"))
parts.append(tag("tasklevelparams_defs", "[['HandRadius', 'float'], ['ApproachDir', 'float']]"))
parts.append(tag("tptable", repr(tptable)))
parts.append(tag("tptable_defs",
    "[['HomeTarget', 'target'], ['BallTarget', 'target'], ['Load', 'load'], "
    "['HoldTime', 'int'], ['ReleaseDelayMin', 'int'], ['ReleaseDelayMax', 'int'], "
    "['TrialTimeout', 'int']]"))
# 1 = error trials (hand-left-home aborts) are re-queued: the task raises
# Repeat_Trial_Flag in its ABORT state and Dexterit-E re-runs that TP at the
# END of the block (BKIN semantics - the repeat is not paired with a fresh
# standard trial). Needs the repeat-aware build (2026-11-27) on the robot.
parts.append(tag("use_repeat_trial_flag", "1"))
parts.append(tag("version", "3.5"))
parts.append(tag("video", "''"))
parts.append("</task_protocol>\n")

OUT.write_text("".join(parts), encoding="ascii")
print("wrote %s  (%d trials: %d pairs of standard+test)" % (OUT, len(seq), len(seq)//2))
print("sequence head:", blockseq[:60], "...")
