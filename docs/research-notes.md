# Research notes: KINARM task development options (2026-11-19)

## Ways to run an experiment on a KINARM
1. Kinarm Standard Tests: licensed, no programming, 9 tests with normative data.
2. Task Protocols: re-parameterize an existing task in Dexterit-E (trial order, targets, loads). No programming.
3. Custom Task Program via the Task Development Kit: Simulink + Stateflow, compiled for the real-time robot computer. The only route for a new haptic/force-field task.
4. Paid programming services from Kinarm.
No Python, Unity, or scripting API exists for task control.

## Current Kinarm software line (for reference, not our lab)
- Dexterit-E 3.11.1 and TDK 3.11.0 (Nov 2025). 3.12 expected Fall 2026 with Windows 11 kit.
- 3.11 requires R2019b Update 7 and Visual Studio 2017; builds `.mldatx`.
- Upgrading from 3.5 needs Dexterit-E PC PN 13108+ and robot PC PN 11103+ (3.11 drops 11103 too), plus a support subscription.

## Community references
- https://github.com/Neuromechanics-Lab/Spasticity-Emulator  (build and deploy walkthrough, torque lookup tables)
- https://github.com/Boisgontier-Lab/KinarmApproachAvoidTask  (task + MATLAB analysis chain, Kinarm c3d/kinarm readers)
- https://github.com/CML-lab/KINARM_Imitation_VisProp  (PID position controller caveats)
- https://github.com/lukekproj/GECKO  (Python .kinarm parser; 3.9+ format only)
- Official Python reader: https://kinarm.com/download/kinarm-reading-in-python/ (3.9+ format)

## Primary sources
- https://kinarm.com/solutions/system-software/dexterit-e/
- https://kinarm.com/learning-support/installing-maintaining-your-kinarm-lab/
- https://kinarm.com/dexterit-e-dexterit-e-explorer-3-11-has-been-released/
- https://kinarm.com/community-forum/built-with-out-of-date-tdk/
- https://kinarm.com/download/basic-task/
- https://kinarm.com/3-5-0-dexterit-e-and-dexterit-e-explorer-1-2-0-released/
- https://www.bkintechnologies.com/download/task-using-gaze-tracking/ (compiled for 3.5.2 + MATLAB 2013a)
