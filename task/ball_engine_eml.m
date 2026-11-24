function [vcodes, hand_forces, ball_log, pen_out, speed_out, delay_ms, timeout_ms] = ball_engine(phase, home_row, ball_row, load_row, KINdata, Load_Table, Target_Table, Task_Wide, TP_Table, tp_row, seed) %#codegen
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
    s = 0; v = 0; prev_pen = 0; t_contact = 1e9; have_contact = 0; initd = 1;
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

vcodes      = zeros(2, 70);
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

% Defaults so an all-zero Load row stays safe and visible
if m_b <= 0;    m_b = 0.2;     end
if r_b <= 0;    r_b = 0.03;    end
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

% ---- hand state (active = dominant arm; row 1 = right on bilateral) --------
arm = KINdata(3, 1);
if arm ~= 2; arm = 1; end
phx = KINdata(arm, 23);
phy = KINdata(arm, 24);

% ---- physics ----------------------------------------------------------------
Fx = 0; Fy = 0; pen = 0;
if phase < 1.5
    % phase 0: hidden/reset. phase 1: parked at slope top.
    s = 0; v = 0; prev_pen = 0; have_contact = 0; t_contact = 1e9;
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
    rx = phx - bxp; ry = phy - byp;
    dist = sqrt(rx*rx + ry*ry);
    if dist < 1e-6; dist = 1e-6; end
    pen = (r_b + r_h) - dist;

    if pen > 0
        dpen = (pen - prev_pen) / dt;
        fmag = kc * pen + bc * dpen;
        if fmag < 0; fmag = 0; end
        if have_contact == 0
            have_contact = 1;
            t_contact = 0;    % new contact: restart transient
        end
        if t_contact < 0.03 && tamp > 0
            fmag = fmag + tamp * exp(-t_contact / 0.01) * sin(2 * pi * tfreq * t_contact);
            if fmag < 0; fmag = 0; end
        end
        if fmag > Fmax; fmag = Fmax; end
        nx = rx / dist; ny = ry / dist;
        Fx = fmag * nx; Fy = fmag * ny;
        % equal and opposite on the ball, projected on the rail
        a = a - (Fx * ux + Fy * uy) / m_b;
    else
        have_contact = 0;
    end
    t_contact = t_contact + dt;
    prev_pen = pen;

    v = v + a * dt;
    s = s + v * dt;
    if s < 0
        s = 0; v = -0.2 * v;   % cannot leave the top of the slope
    end
end

% ---- haptics gate (visual bounce unaffected) --------------------------------
if hapt < 0.5
    Fx = 0; Fy = 0;
end
if arm == 1
    hand_forces(1) = Fx; hand_forces(2) = Fy;
else
    hand_forces(3) = Fx; hand_forces(4) = Fy;
end

% ---- VCODEs: row 1 slope line, row 2 ball circle ----------------------------
show = 0;
if phase > 0.5; show = 1; end

vcodes(1, 1)  = 4;                 % line
vcodes(1, 2)  = show;
vcodes(1, 3)  = tx;
vcodes(1, 4)  = ty;
vcodes(1, 5)  = 5921370;           % 0x5A5A5A grey
vcodes(1, 6)  = 5921370;
vcodes(1, 7)  = 0.004;             % 4 mm stroke
vcodes(1, 9)  = 100;
vcodes(1, 10) = ux * Lslope;       % endpoint relative to start (m)
vcodes(1, 11) = uy * Lslope;

bx = tx + ux * s; by = ty + uy * s;
vcodes(2, 1)  = 1;                 % circle
vcodes(2, 2)  = show;
vcodes(2, 3)  = bx;
vcodes(2, 4)  = by;
vcodes(2, 5)  = 16777215;          % 0xFFFFFF white fill
vcodes(2, 6)  = -2147483648;       % no stroke colour
vcodes(2, 7)  = 0;
vcodes(2, 9)  = 100;
vcodes(2, 10) = r_b;
if s > dd + 0.6
    vcodes(2, 2) = 0;              % rolled far out of the scene
end

ball_log  = [bx; by; v; pen; Fx; Fy; phase; s];
pen_out   = pen;
speed_out = v;
if speed_out < 0; speed_out = -speed_out; end
