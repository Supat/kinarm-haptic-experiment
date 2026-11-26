# SPIDAR-UNITY: the predecessor experiment (reference for the Kinarm port)

Distilled 2026-11-26 from inspection of the student's Unity project, the lab
admin scripts, and full extraction of both Raspberry Pi servers. Everything
referenced here lives OUTSIDE this repo on the build PC under
`E:\Supat\Kinarm PC\SPIDAR-UNITY\` (the Unity project copy, `newAhsCmd`
admin scripts, and `pi-backup\` with complete archives of both Pis).
This doc contains lab-internal addresses — keep the repo private.

## 1. What it is

A student-built experiment (June run; data logs March–June) on the **AHS
framework** by Katsuhito Akahane (Tokyo Tech): Unity is only the renderer;
rigid-body physics runs in an external **ODE server** and the SPIDAR haptic
device in a **haptics server**, both on Raspberry Pis, talking UDP.
The subject **passively receives** a ball that approaches along the X axis
and strikes the hand (SPIDAR haptic pointer). Goal: run the equivalent
experiment on the Kinarm End-Point.

- Unity 2022.3.1f1, project `AhsUnityTest010のコピー2 6月の実験`
  (original path on the student's Mac: `/Users/klab/AhsUnityTest010のコピー2`).
- The experiment scene is **`3dpuzzle.unity`** (name reused from a framework
  demo; it contains the 実験説明 instructions object).

## 2. Experiment design (reconstructed and verified from the scene YAML)

- One physical ball (the measured "blue ball", Unity Rigidbody mass 0.3;
  a second "transparent ball", mass 3, is part of the haptic interaction
  chain). A **slope** object starts the approach.
- **Ten condition objects** `0_standard`, `1_big_low` … `9_normal_high`:
  a 3×3 matrix plus standard. Verified factor meanings:
  - *big / normal / small* = **visual scale** 0.8 / 0.5656 / 0.4 only.
  - *low / normal / high* = **start distance** x ≈ −9.8 / −12.3 / −25
    → approach speed at impact.
  - All ten have placeholder mass (1e-7): they are **visual-only spheres**
    registered ODE-side as `sphere_id0..9` (hardcoded into the student's
    copy of `CsAhsOde.cs`, plus 2 decoy "dummy" bodies).
  - Physics is therefore **constant across conditions**: a visuo-haptic
    decoupling design (visual size and approach speed vary, contact
    dynamics do not).
- **Measurement** (`maxX.cs` on the blue ball): when the ball crosses the
  zones redzone (x=0.03) → migi START (0.4) → migi END (10), it logs per
  trial: condition number, **max X travel, movement time, velocity**, to
  `Assets/Data/<name>.txt` and a CSV.
- **Data caveats**: output filename hardcoded per subject (`6_10chin.txt`);
  timing accumulated in `Update()` (frame-rate dependent, ~60–90 Hz);
  velocity formula divides by a magic 50 — distrust absolute velocities,
  distances are more reliable. Condition switching appears manual
  (experimenter enables one sphere per trial). Several mono crash dumps in
  the project root: the setup crashed in use.
- Session logs exist for subjects takeuchi, fushimi, chin (standard vs test
  alternation visible in chin's 6/10 session).

## 3. System architecture

```
Unity (Mac, renderer only)
   │ UDP (physics 12348, spidar 12346; multicast 239.192.1.x)
   ▼
Physics server  ahs@192.168.11.235   Pi 4B "rpsahs235s", Raspbian 11
   ODE binary ~/test053_ode_7dof_raspi (systemd test053.service)
   eth0 = 192.168.11.235 (rig subnet)   eth1 = 192.168.13.1 (gateway/NAT)
   wlan0 = 192.168.200.170 (auto-joins lab Wi-Fi "aterm-15983a-a")
   │ (second subnet behind NAT)
   ▼
Haptics server  pi@192.168.13.233    Pi "rpsahs233d" (aarch64)
   SPIDAR server ~/test003_ndof_W8D6_1 (6-DOF, 8-wire; test003.service)
   Calibration: Maxon 271107 motors (Kt 21.3 mNm/A, R 6.78 Ω),
   512 PPR encoders (×4), 5 mm pulleys; sources in ~/ahs/src/*.h
   (~/ahs/config/ahs.config is packed/obfuscated — not human-readable)
```

- Body masses / contact parameters are **sent by Unity over UDP at init**
  — the Pi-side `.cfg` files hold only network settings. The Unity project
  is the complete parameter source for the experiment physics.
- ODE server **source is not on the Pis** (deployed binaries; git repo is
  Akahane's, last build June 2023 on dev Pi `rpsdev189`).
- `/var/tmp` on the physics Pi holds ~1.9 GB of old `AhsData*.xls` raw
  dumps (2023 / Jan 2025 runs — predate the June experiment; left on the
  Pi, not copied).

## 4. Access runbook

- **Preferred (no cable):** the physics Pi is on the lab Wi-Fi —
  `ssh -i <key> ahs@192.168.200.170` from any machine on the Aterm router
  (the build PC is wired to it).
- **Haptics Pi (always via hop):**
  `ssh -o ProxyCommand="ssh -i <key> -W %h:%p ahs@192.168.11.235" -i <key> pi@192.168.13.233`
  (from Wi-Fi, use 192.168.200.170 as the hop host).
- **Cable fallback:** plug the rig Ethernet into a USB adapter, static IP
  `192.168.11.50/24`, no gateway, then reach 192.168.11.235 directly.
- **Key:** `key_ahs_user_202002031447_klab` (no passphrase), kept at
  `C:\Users\Supat\.ssh\` on the build PC — never in this repo. Same key
  for both hosts.
- **Admin scripts** (`SPIDAR-UNITY\newAhsCmd\AhsCmd010_script\`):
  `isAlive / status / update / reboot / shutdown _ahs_system.sh`
  (first run takes `ahs@<phy-ip> pi@<dev-ip>` args, then remembers them).
- The student's Mac (`klab`) is NOT usable for network work: Sophos
  Endpoint blocks all interface configuration, even as root.

## 5. What is archived where (build PC)

| Location | Contents |
|---|---|
| `SPIDAR-UNITY\AhsUnityTest010のコピー2 6月の実験\` | full Unity project incl. `Assets/Data` behavioral logs |
| `SPIDAR-UNITY\newAhsCmd\` | lab admin scripts + host address files |
| `SPIDAR-UNITY\pi-backup\rpsahs235s_home.tgz` (+unpacked) | physics Pi home: ODE binary, service, cfg, firmware backups |
| `SPIDAR-UNITY\pi-backup\rpsahs233d_home.tgz` (+unpacked) | haptics Pi home: SPIDAR servers, `ahs/src` calibration headers |
| `SPIDAR-UNITY\pi-backup\*_sysconfig.txt`, `*_system_survey.txt` | dhcpcd/boot/NAT configs, OS + service survey |

## 6. Mapping onto the Kinarm task

| SPIDAR condition factor | Kinarm equivalent |
|---|---|
| visual size (3 levels) | `BallRadius` (drawn) per Load Table row — decoupled from mass |
| start distance → impact speed (3 levels) | `SlopeLength` / release point per Load row |
| constant contact feel | one Kc/Bc/mass setting shared across all rows |
| standard-vs-test alternation | TP row sequence in the protocol |
| maxX / movement time / velocity | 1 kHz analog log (ball x, v, s, per-hand forces) — strictly richer |

Design decision carried over: subject is **passive** at impact (confirmed).
Default for the port: drawn radius varies per condition, contact radius
stays fixed (mirrors the SPIDAR design where physics never changed).

Next step: generate `impact_v1.dtp` — 9 condition Load rows + standard,
TP rows alternating standard/test, stimuli anchored at the display centre
(≈ global (−22.25, 10) cm, user-eyeballed).
