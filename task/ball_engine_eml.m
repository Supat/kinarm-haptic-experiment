function [vcodes, hand_forces, ball_log, pen_out, speed_out, delay_ms, timeout_ms] = ball_engine(phase, home_row, ball_row, load_row, KINdata, Load_Table, Target_Table, Task_Wide, TP_Table, tp_row, seed, hand_in) %#codegen
%BALL_ENGINE Ball physics, penalty contact force, and ball/slope VCODEs.
%
% Runs every 1 ms. The Trial_Control chart sequences the trial and sets:
%   phase 0 = no ball (reset), 1 = ball parked at slope top, 2 = physics live.
% The ball is constrained to the line from the slope top (Target Table row
% ball_row) toward the home target (row home_row): gravity component
% (5/7)*g*sin(theta) acts along it while the path distance s < SlopeLength,
% rolling resistance -RollRes*g*sign(v) always. Contact with the hand disk is
% penalty-based: pen = BallRadius + HandRadius - |p_hand - p_ball|, force
% clamp(Kc*pen + Bc*dpen/dt, 0, Fmax) along the ball-to-hand normal, plus a
% decaying TransientFreq sinusoid for the first 30 ms of each new contact.
% The reaction decelerates the ball (bounce); HapticsOn=0 zeroes the commanded
% force but keeps the visual bounce. Fmax is hard-clamped at 45 N.
%
% Units: Target Table and lengths in the Load Table are cm (converted to m
% here); KINdata hand position/velocity are m, m/s, global frame; forces N.

persistent s v prev_pen t_contact have_contact initd rngstate
if isempty(initd)
    s = 0; v = 0; initd = 1;
    prev_pen = [0 0]; t_contact = [1e9 1e9]; have_contact = [0 0];
    rngstate = mod(abs(seed), 4294967296);
    if rngstate <= 0; rngstate = 12345; end
end

dt = 0.001;
g  = 9.81;

% ---- per-trial timing for the chart (sampled by Stateflow at state entry).
% R2013a chart codegen cannot lower rand()/boolean arithmetic, so the random
% release delay and the zero-timeout guard are computed here instead. LCG
% seeded from Dexterit-E's 'seed' tag, so the protocol seed option holds.
rngstate = mod(1664525 * rngstate + 1013904223, 4294967296);
u = rngstate / 4294967296;
tr = max(1, min(100, round(tp_row)));
dmin = TP_Table(tr, 5);
dmax = TP_Table(tr, 6);
if dmax > dmin
    delay_ms = dmin + (dmax - dmin) * u;
else
    delay_ms = dmin;
end
if delay_ms < 0; delay_ms = 0; end
timeout_ms = TP_Table(tr, 7);
if timeout_ms <= 0; timeout_ms = 10000; end

vcodes      = zeros(9, 70);
hand_forces = zeros(4, 1);

% ---- parameters ------------------------------------------------------------
hr = max(1, min(32, round(home_row)));
br = max(1, min(32, round(ball_row)));
lr = max(1, min(20, round(load_row)));

m_b    = Load_Table(lr, 1);
r_b    = Load_Table(lr, 2) * 0.01;
theta  = Load_Table(lr, 3) * pi / 180;
Lslope = Load_Table(lr, 4) * 0.01;
crr    = Load_Table(lr, 6);
kc     = Load_Table(lr, 7);
bc     = Load_Table(lr, 8);
Fmax   = Load_Table(lr, 9);
hapt   = Load_Table(lr, 10);
tamp   = Load_Table(lr, 11);
tfreq  = Load_Table(lr, 12);
rdraw  = Load_Table(lr, 13) * 0.01;   % drawn radius; 0 -> same as physics

% Defaults so an all-zero Load row stays safe and visible
if m_b <= 0;    m_b = 0.2;     end
if r_b <= 0;    r_b = 0.03;    end
if rdraw <= 0;  rdraw = r_b;   end   % SPIDAR-style size illusion: the drawn
                                     % ball may differ from the contact ball
if Lslope <= 0; Lslope = 0.20; end
if kc <= 0;     kc = 2000;     end
if Fmax <= 0;   Fmax = 20;     end
if Fmax > 45;   Fmax = 45;     end   % hardware envelope hard clamp
if tfreq < 50;  tfreq = 150;   end

r_h = Task_Wide(1) * 0.01;
if r_h <= 0; r_h = 0.02; end

% ---- geometry (global metres; Target_Table is global cm on the target) -----
tx  = Target_Table(br, 1) * 0.01;
ty  = Target_Table(br, 2) * 0.01;
hx0 = Target_Table(hr, 1) * 0.01;
hy0 = Target_Table(hr, 2) * 0.01;
dx = hx0 - tx; dy = hy0 - ty;
dd = sqrt(dx*dx + dy*dy);
if dd < 1e-6; dd = 1; end
ux = dx / dd; uy = dy / dd;

% ---- hand state: BOTH hands can strike the ball (row 1 = robot 1, row 2 =
% robot 2; an absent robot reads position (0,0), far from the track, so its
% penetration never goes positive) ---------------------------------------
hpx = [KINdata(1, 23) KINdata(2, 23)];
hpy = [KINdata(1, 24) KINdata(2, 24)];

% ---- physics ----------------------------------------------------------------
Fxh = [0 0]; Fyh = [0 0]; pen = 0;
if phase < 1.5
    % phase 0: hidden/reset. phase 1: parked at slope top.
    s = 0; v = 0;
    prev_pen = [0 0]; have_contact = [0 0]; t_contact = [1e9 1e9];
else
    a = 0;
    if s < Lslope
        a = a + (5/7) * g * sin(theta);   % downhill along +u while on the slope
    end
    if v > 1e-4
        a = a - crr * g;
    elseif v < -1e-4
        a = a + crr * g;
    end

    bxp = tx + ux * s; byp = ty + uy * s;
    for h = 1:2
        rx = hpx(h) - bxp; ry = hpy(h) - byp;
        dist = sqrt(rx*rx + ry*ry);
        if dist < 1e-6; dist = 1e-6; end
        penh = (r_b + r_h) - dist;

        if penh > 0
            dpen = (penh - prev_pen(h)) / dt;
            fmag = kc * penh + bc * dpen;
            if fmag < 0; fmag = 0; end
            if have_contact(h) == 0
                have_contact(h) = 1;
                t_contact(h) = 0;    % new contact: restart transient
            end
            if t_contact(h) < 0.03 && tamp > 0
                fmag = fmag + tamp * exp(-t_contact(h) / 0.01) * sin(2 * pi * tfreq * t_contact(h));
                if fmag < 0; fmag = 0; end
            end
            if fmag > Fmax; fmag = Fmax; end
            nx = rx / dist; ny = ry / dist;
            Fxh(h) = fmag * nx; Fyh(h) = fmag * ny;
            % equal and opposite on the ball, projected on the rail
            a = a - (Fxh(h) * ux + Fyh(h) * uy) / m_b;
        else
            have_contact(h) = 0;
        end
        t_contact(h) = t_contact(h) + dt;
        prev_pen(h) = penh;
        if penh > pen; pen = penh; end
    end

    v = v + a * dt;
    s = s + v * dt;
    if s < 0
        s = 0; v = -0.2 * v;   % cannot leave the top of the slope
    end
end

% ---- haptics gate (visual bounce unaffected) --------------------------------
if hapt < 0.5
    Fxh = [0 0]; Fyh = [0 0];
end
hand_forces(1) = Fxh(1); hand_forces(2) = Fyh(1);
hand_forces(3) = Fxh(2); hand_forces(4) = Fyh(2);
Fx = Fxh(1) + Fxh(2);               % total contact force, for the log
Fy = Fyh(1) + Fyh(2);

% ---- VCODEs (subject display mock, lateral slope) ---------------------------
% Rows: 1 flat run-out (darkest), 2-5 slope bar (4 shaded segments, lightest
% at the top), 6 slope-foot tick, 7 home ring (hollow; green when the hand is
% inside the home target), 8 ball (yellow; flashes white during contact),
% 9 ball highlight. Track and ring are always visible; the ball exists only
% during RELEASE_WAIT/ROLLING (phase > 0). The home target's filled circle is
% suppressed in the protocol via VisRadius = 0 (LogRadius still defines the
% logical zone and this ring's radius).
show = 0;
if phase > 0.5; show = 1; end

ringr = Target_Table(hr, 4) * 0.01;
if ringr <= 0; ringr = 0.015; end

footx = tx + ux * Lslope;  footy = ty + uy * Lslope;
flat_len = (dd - ringr - 0.005) - Lslope;
if flat_len < 0; flat_len = 0; end

barw = 0.02;

vcodes(1, 1)  = 4;                 % flat run-out: foot -> ring edge
vcodes(1, 2)  = 1;
vcodes(1, 3)  = footx;
vcodes(1, 4)  = footy;
vcodes(1, 5)  = 3158064;           % 0x303030
vcodes(1, 6)  = 3158064;
vcodes(1, 7)  = barw;
vcodes(1, 9)  = 100;
vcodes(1, 10) = ux * flat_len;
vcodes(1, 11) = uy * flat_len;

segc = [5921370 5197647 4473924 3750201];   % 0x5A5A5A -> 0x393939
seg  = Lslope / 4;
for i = 1:4
    vcodes(1+i, 1)  = 4;
    vcodes(1+i, 2)  = 1;
    vcodes(1+i, 3)  = tx + ux * seg * (i - 1);
    vcodes(1+i, 4)  = ty + uy * seg * (i - 1);
    vcodes(1+i, 5)  = segc(i);
    vcodes(1+i, 6)  = segc(i);
    vcodes(1+i, 7)  = barw;
    vcodes(1+i, 9)  = 100;
    vcodes(1+i, 10) = ux * seg;
    vcodes(1+i, 11) = uy * seg;
end

px = -uy; py = ux;                 % slope-foot tick, perpendicular to rail
vcodes(6, 1)  = 4;
vcodes(6, 2)  = 1;
vcodes(6, 3)  = footx - px * 0.014;
vcodes(6, 4)  = footy - py * 0.014;
vcodes(6, 5)  = 13158600;          % 0xC8C8C8
vcodes(6, 6)  = 13158600;
vcodes(6, 7)  = 0.0025;
vcodes(6, 9)  = 100;
vcodes(6, 10) = px * 0.028;
vcodes(6, 11) = py * 0.028;

ringc = 16777215;                  % white; green while the hand is at home
if hand_in(hr) > 0.5
    ringc = 3066993;               % 0x2ECC71
end
vcodes(7, 1)  = 1;                 % home ring (hollow circle)
vcodes(7, 2)  = 1;
vcodes(7, 3)  = hx0;
vcodes(7, 4)  = hy0;
vcodes(7, 5)  = 16777216;          % no fill
vcodes(7, 6)  = ringc;
vcodes(7, 7)  = 0.003;
vcodes(7, 9)  = 100;
vcodes(7, 10) = ringr;

bx = tx + ux * s; by = ty + uy * s;
ballc = 16106818;                  % 0xF5C542 yellow
hilc  = 16774080;                  % 0xFFF3C0 warm white highlight
if pen > 0
    ballc = 16777215;              % contact flash: white ball,
    hilc  = 16113824;              % 0xF5E0A0 pale yellow highlight
end
vcodes(8, 1)  = 1;                 % ball (drawn radius; physics stays r_b)
vcodes(8, 2)  = show;
vcodes(8, 3)  = bx;
vcodes(8, 4)  = by;
vcodes(8, 5)  = ballc;
vcodes(8, 6)  = -2147483648;       % no stroke colour
vcodes(8, 7)  = 0;
vcodes(8, 9)  = 100;
vcodes(8, 10) = rdraw;

vcodes(9, 1)  = 1;                 % highlight, upper-left of the ball centre
vcodes(9, 2)  = show;
vcodes(9, 3)  = bx - 0.35 * rdraw;
vcodes(9, 4)  = by + 0.35 * rdraw;
vcodes(9, 5)  = hilc;
vcodes(9, 6)  = -2147483648;
vcodes(9, 7)  = 0;
vcodes(9, 9)  = 100;
vcodes(9, 10) = 0.3 * rdraw;

if s > dd + 0.6
    vcodes(8, 2) = 0;              % rolled far out of the scene
    vcodes(9, 2) = 0;
end

ball_log  = [bx; by; v; pen; Fx; Fy; phase; s];
pen_out   = pen;
speed_out = v;
if speed_out < 0; speed_out = -speed_out; end
