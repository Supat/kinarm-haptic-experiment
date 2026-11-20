"""Render a mock storyboard of the subject display (top-down Kinarm workspace).

Output: docs/mockups/display_storyboard.png
Run:    .venv/bin/python sim/mock_display.py
"""
import argparse
import math
import os

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib.patches import Circle, Polygon

# workspace (cm), origin at Kinarm centre, x right, y away from subject
XLIM, YLIM = (-20, 20), (-15, 15)
_ap = argparse.ArgumentParser()
_ap.add_argument("--orientation", choices=["diagonal", "lateral"], default="diagonal",
                 help="diagonal: ball from upper-left toward the body; lateral: ball from the right, travelling left")
ORIENT = _ap.parse_args().orientation
if ORIENT == "diagonal":
    HOME = (0.0, -8.0)
    ANG = math.radians(25)                 # slope tilt from +y toward -x
else:
    HOME = (-8.0, -6.0)                    # hand left of centre so the 25 cm path fits to the right
    ANG = math.radians(-90)                # slope runs along +x: ball starts at the right
U = (-math.sin(ANG), math.cos(ANG))        # unit vector up the slope from home
L_FLAT, L_SLOPE, STRIP_W = 5.0, 20.0, 3.0
R_BALL, R_HOME, R_CURSOR = 2.5, 1.5, 0.5


def pt(dist):
    return (HOME[0] + U[0] * dist, HOME[1] + U[1] * dist)


def strip_polygon(d0, d1, w):
    n = (-U[1], U[0])
    a, b = pt(d0), pt(d1)
    return [(a[0] + n[0] * w / 2, a[1] + n[1] * w / 2), (b[0] + n[0] * w / 2, b[1] + n[1] * w / 2),
            (b[0] - n[0] * w / 2, b[1] - n[1] * w / 2), (a[0] - n[0] * w / 2, a[1] - n[1] * w / 2)]


def draw_static(ax, home_colour="white"):
    ax.set_facecolor("black")
    # slope strip with brightness gradient (lighter at the top = "far/high")
    steps = 12
    for i in range(steps):
        d0 = L_FLAT + L_SLOPE * i / steps
        d1 = L_FLAT + L_SLOPE * (i + 1) / steps
        g = 0.18 + 0.22 * (i / steps)
        ax.add_patch(Polygon(strip_polygon(d0, d1, STRIP_W), closed=True, color=(g, g, g), lw=0))
    ax.add_patch(Polygon(strip_polygon(L_FLAT, L_FLAT + L_SLOPE, STRIP_W), closed=True, fill=False, ec=(0.6, 0.6, 0.6), lw=1.2))
    # flat run
    ax.add_patch(Polygon(strip_polygon(0, L_FLAT, STRIP_W), closed=True, color=(0.12, 0.12, 0.12), lw=0))
    # foot marker
    n = (-U[1], U[0])
    f = pt(L_FLAT)
    ax.plot([f[0] - n[0] * STRIP_W / 2, f[0] + n[0] * STRIP_W / 2], [f[1] - n[1] * STRIP_W / 2, f[1] + n[1] * STRIP_W / 2], color=(0.8, 0.8, 0.8), lw=2)
    # home ring + cursor
    ax.add_patch(Circle(HOME, R_HOME, fill=False, ec=home_colour, lw=2))
    ax.add_patch(Circle(HOME, R_CURSOR, color="white"))
    ax.set_xlim(*XLIM); ax.set_ylim(*YLIM); ax.set_aspect("equal"); ax.set_xticks([]); ax.set_yticks([])
    for s in ax.spines.values():
        s.set_color((0.3, 0.3, 0.3))


def draw_ball(ax, dist, flash=False):
    c = pt(dist)
    ax.add_patch(Circle(c, R_BALL, color="#ffcc33" if not flash else "white"))
    ax.add_patch(Circle((c[0] - R_BALL * 0.35, c[1] + R_BALL * 0.35), R_BALL * 0.28, color="#fff2b3"))


fig, axes = plt.subplots(2, 2, figsize=(11, 8.5), facecolor="#111")
fig.subplots_adjust(wspace=0.06, hspace=0.18, left=0.03, right=0.97, top=0.92, bottom=0.03)
titles = ["1  WAIT_HOME / HOLD  (ring turns green when hand is inside)",
          "2  ROLLING  (ball accelerates down the slope, ~1 m/s at the foot)",
          "3  CONTACT  (impact force rendered; 1-frame flash optional)",
          "4  FEEDBACK  (500 ms text, ball hidden, then next trial)"]

ax = axes[0, 0]; draw_static(ax, "#3ddc84")
ax = axes[0, 1]; draw_static(ax, "#3ddc84"); draw_ball(ax, L_FLAT + L_SLOPE * 0.45)
ax = axes[1, 0]; draw_static(ax, "#3ddc84"); draw_ball(ax, R_BALL + R_CURSOR - 0.3, flash=True)
ax = axes[1, 1]; draw_static(ax, "white"); ax.text(HOME[0], HOME[1] + 5, "Good", color="white", ha="center", va="center", fontsize=16)

for ax, t in zip(axes.flat, titles):
    ax.set_title(t, color="#ddd", fontsize=10, loc="left", pad=6)
fig.suptitle(f"Subject display mock, {ORIENT} slope (top-down view through the Kinarm mirror, 40 x 30 cm workspace, subject sits below the bottom edge)",
             color="#eee", fontsize=11)
suffix = "" if ORIENT == "diagonal" else "_lateral"
out = os.path.join(os.path.dirname(__file__), "..", "docs", "mockups", f"display_storyboard{suffix}.png")
fig.savefig(out, dpi=140, facecolor=fig.get_facecolor())
print("wrote", os.path.abspath(out))
