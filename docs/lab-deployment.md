# Deploying and running the task on the lab Kinarm (Dexterit-E 3.5.2)

Status: v0.1 (2026-11-21). Items marked (verify) must be checked against the copied
*Dexterit-E 3.5 User Guide* / *Creating Task Programs 3.5* PDFs or the lab PC itself.

## The loop you will repeat

```
Windows build machine                    USB                 Lab Dexterit-E PC (offline)
----------------------                   ---                 ---------------------------
edit ball_impact.mdl in Simulink
buildxpc('ball_impact.mdl') -> .dlm  --> copy -->  Tasks\ball_impact\ball_impact.dlm
                                                   create / edit protocols (.dtp) in Dexterit-E
                                                   run on robot, test, collect exam .zip
git: commit .dtp + notes             <-- copy <--  exam data + .dtp back to USB
```

Budget one full cycle per lab visit at first; later, batch several model changes per visit.

## 0. Before the first visit (on the build machine)

1. Build the current `.dlm` and keep it with its git commit hash in the file name of the
   USB folder (e.g. `ball_impact_02a9ecc\`) so you always know which model is on the robot.
2. Verified 2026-11-21: custom tasks live in
   `C:\Users\BKIN TECHNOLOGIES\My Documents\BKIN Dexterit-E 3.5 Tasks\<TaskName>\`
   (Dexterit-E Options menu → Custom Tasks Location). One subfolder per task holding the
   `.dlm` plus its `.dtp` files. A plain `ball_impact.dlm` is accepted.
3. Put on the USB: the `.dlm`, any image or `.dat` files the task references, a printed copy
   of this checklist, and the `exam_load`-free analysis notes (the lab PC has no internet).

## 1. Power-up and robot checks (every session)

1. Power on the robot computer and confirm it boots the **xPC 5.4** image. On this
   generation that is a boot menu or boot CD choice, not a Dexterit-E menu item (verify).
2. Start Dexterit-E on the Dexterit-E PC. Check Help > About shows 3.5.2 once (first visit).
3. Run the robot calibration from Dexterit-E (both arms; it moves the arms to hard stops).
4. End-Point lab: zero the handle force sensors with nothing touching the handles.
5. Confirm the display is aligned: Dexterit-E's display calibration pattern should sit on
   the handle when the hand is at known points (first visit, or whenever the mirror has
   been moved).

## 2. Install the task (first visit and after every rebuild)

1. Copy the task folder from the USB into the Dexterit-E tasks location. Do not rename
   `ball_impact.dlm`.
2. Restart Dexterit-E (the tree is read at startup). On the **Subjects** tab select a
   subject, then on **Custom tasks** choose the **Study** "Ball Impact": the task tree is
   filtered by study, so tasks of other studies are hidden. `ball_impact` should appear.
   If it does not, check the folder structure against a sibling task or the xPC target.
3. Select the task. Dexterit-E reads the parameter table definitions from the `.dlm` and
   offers to create a protocol.

## 3. Create the protocols (on the Dexterit-E PC) — verified from the 3.5 UI, 2026-11-21

Protocols (`.dtp`) are created inside Dexterit-E from the task's compiled table
definitions, not in Simulink. On the **Custom tasks** tab: select the task in the tree,
then click the green **+** beside "Protocol" in the Task information panel. The
**Edit Task Protocol** dialog opens with these tabs:

| Tab | What goes there for ball_impact |
|---|---|
| General | Default/Customized instructions (operator script), optional instructional Video, protocol Code and Description, Hand Feedback behaviour (needs the Hand_Feedback block in the model, which the skeleton has), Gaze Feedback (Off), Pause/Unpause behaviour ("Pause at next trial"), Use random seed, Data Rate 1000 Hz (use 1000, not 200) |
| Target Table | one row per visual object: home ring, slope strip, foot marker, ball |
| Load Table | one row per haptic condition: ball mass, slope angle/length, k_c, b_c, F_max |
| TP Table | one row per trial type: load row, target rows, hold time, timeouts |
| Task Wide Params | single values for the whole run (e.g. hand-disk radius, transient gain) |
| Block Table | which TP rows, how many reps, randomised or not |
| Analog Inputs | only if EMG or other analog channels are recorded |

Buttons: **Apply** (keep editing), **Apply and Save**, **Apply and Save As...** (use this
to clone an existing protocol under a new name, e.g. for the mirrored-hand variant),
Cancel. The pencil icon reopens a saved protocol; the red cross deletes it.

Other run-time settings seen on the Custom tasks tab:
- **Active arm for task** (Left / Right) is chosen on the main tab before Go, not in the
  protocol. One task serves both hands; only the target geometry needs mirroring.
- **Task Controls** shows the buttons the task defines (the EMG task shows "EMG pos
  done" and "MVC done"); ours appear there once the Parameter Table Defn declares them.
- Run order: Calibrate..., then Go. Reset clears the task status.

Copy saved `.dtp` files back by USB at the end of the visit and commit them under
`protocols/`. Once a first protocol exists, later ones can be generated by script
and copied into the task folder.

### First lab test, 2026-11-21
Skeleton `.dlm` (commit 5c75d73) loaded and ran one placeholder trial with no protocol.
A protocol could not be made because the skeleton declares no TP/Load columns; see
`task/REBUILD-SPEC.md`. The lab is an **Exoskeleton** (both arms drawn as linkages).

## 4. First run: safety ladder

Run these in order, with the experimenter's own hand, before any subject:
1. **Haptics off** protocol row (contact force gain 0). Checks the visuals, timing, and
   that the ball reaches the home position where the hand is.
2. **Lightest ball, lowest slope** with the force clamp at 20 N. Feel the impact. Check
   the robot does not oscillate at contact (if it buzzes, lower `k_c` or raise `b_c`).
3. Step up through the sweep to the heaviest planned condition with the clamp at 45 N.
4. Check Dexterit-E's own safety limits are still active and that pressing the
   emergency stop ends the trial cleanly.
5. Measure display latency once: step a target on and off from the task and compare the
   logged event time with the photodiode or a high-frame-rate phone video of the screen.
   Record the number in `docs/display-design.md`.

## 5. Running a subject

1. Create or select the subject in the Dexterit-E subject database; record handedness.
2. Seat the subject, adjust chair and display height per the lab's standard procedure,
   place the unused handle out of the way (End-Point) or rest the other arm (Exoskeleton).
3. Familiarisation block: 10 trials at the lightest condition, haptics on.
4. Run the experimental protocols in the planned block order. Use the task buttons
   (start block, repeat trial, pause) rather than stopping the task.
5. After the session, export or copy the exam `.zip` (per-trial `.c3d` inside) to the USB.

## 6. Bringing data back

- Analysis on the Mac: `ezc3d` reads the `.c3d` files directly. The lab's MATLAB readers
  (`C3D_load_v2.18`, `KINARM_C3D_load`) are still to be copied on the next visit per the
  inventory; they are optional if the Python path works.
- Keep raw data out of git (`.gitignore` already excludes `data/`, `.c3d`, `.zip`).

## Known traps

- The lab PC has no internet; everything moves by USB.
- A `.dlm` built for the wrong xPC version is silently ignored by the Custom Tasks list.
- Patch releases (3.5.x) share a TDK; a future Dexterit-E 3.8 switch would require a
  TDK 3.8 and rebuild, and no TDK 3.8 exists on the lab PC.
- Dexterit-E overwrites a protocol with the same name; version protocol names.
