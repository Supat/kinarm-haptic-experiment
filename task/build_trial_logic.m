function build_trial_logic()
%BUILD_TRIAL_LOGIC Install the real ball-impact trial logic into ball_impact.mdl.
%
% Replaces the placeholder two-state chart with the trial state machine
% (WAIT_HOME -> HOLD -> RELEASE_WAIT -> ROLLING -> IMPACT -> RINGDOWN ->
% EndOfTrial; hand-left-home and timeout aborts are transition actions),
% adds the Ball_Engine
% MATLAB Function block (physics + penalty contact + ball/slope VCODEs, source
% in ball_engine_eml.m), the Forces_to_Torques -> KINARM_Apply_Loads chain
% (Exoskeleton), event-code and analog logging, and rewires the model.
%
% Design: docs/experiment-design.md sections 3-5 (decisions of 2026-11-24:
% hand must stay in home until impact; full bounce physics).
%
% Run AFTER define_param_tables.m (which embeds tables + events), then build:
%   define_param_tables; build_trial_logic; buildxpc('ball_impact.mdl')
%
% Rerunnable: deletes and rebuilds the chart contents, custom blocks, and all
% root-level wiring each time.

name = 'ball_impact';
cd(fileparts(mfilename('fullpath')));
load_system(name);
load_system('simulink');
load_system('KINARM_loads');

%% 0. Custom code so rand()/RAND_MAX resolve in generated chart code
for p = {'SimCustomSourceCode', 'CustomSourceCode'}
    try
        set_param(name, p{1}, '#include <stdlib.h>');
    catch e
        fprintf('NOTE: %s: %s\n', p{1}, e.message);
    end
end

%% 0.5 Robot torque path (lives in DataLogging/Poll KINARM). The General-
% library mask init rewires the torque adder when a KINARMTorqueCMD Goto
% exists in the model: it replaces the internal ZeroTorque constant
% [0 0 0 0] with a From 'KINARMTorqueCMD'. Mask inits never run under
% headless load_system, so after Apply_Loads was added programmatically the
% model still fed zeros to the motors - commanded torque stayed 0 despite
% Ball_Engine outputting force (lab data 2026-11-24 18:06: Fy -17 N,
% M1/M2TorCMD flat 0). Replicate the mask's branch here.
zt = find_system(name, 'LookUnderMasks', 'all', 'FollowLinks', 'on', ...
    'BlockType', 'Constant', 'Name', 'ZeroTorque');
if ~isempty(zt)
    set_param([name '/GUI Control'], 'LinkStatus', 'none');
    zt = find_system(name, 'LookUnderMasks', 'all', 'FollowLinks', 'on', ...
        'BlockType', 'Constant', 'Name', 'ZeroTorque');
    ztb = zt{1};
    parent = get_param(ztb, 'Parent');
    % Break every linked ancestor, outermost first, so the edit is allowed.
    chain = {};
    p = parent;
    while ~strcmp(p, name)
        chain{end+1} = p; %#ok<AGROW>
        p = get_param(p, 'Parent');
    end
    for k = numel(chain):-1:1
        try
            ls = get_param(chain{k}, 'LinkStatus');
            if strcmp(ls, 'resolved') || strcmp(ls, 'implicit')
                set_param(chain{k}, 'LinkStatus', 'none');
                fprintf('  broke link: %s (%s)\n', strrep(chain{k}, sprintf('\n'), ' '), ls);
            end
        catch
        end %#ok<CTCH>
    end
    pos = get_param(ztb, 'Position');
    delete_line(parent, 'ZeroTorque/1', 'AddTorques/1');
    delete_block(ztb);
    add_block('built-in/From', [parent '/TorqueCMD'], ...
        'Position', mat2str(pos), 'GotoTag', 'KINARMTorqueCMD');
    add_line(parent, 'TorqueCMD/1', 'AddTorques/1');
    fprintf('GUI Control: ZeroTorque replaced with From KINARMTorqueCMD in %s\n', parent);
else
    fprintf('GUI Control: ZeroTorque not found (already rewired)\n');
end

%% 1. Block settings
% Hand-in-target uses the logical radius column (4), not the drawn one (3)
set_param([name '/KINARM_HandInTarget'], 'attribcol1', '[4]');
% DataLogging: log event codes and analog (custom) channels
set_param([name '/DataLogging'], 'log_event_codes', 'on', 'log_analog_inputs', 'on');
% Video concatenation grows to 3 inputs (Show_Target, Hand_Feedback, Ball_Engine)
set_param([name '/VCODES'], 'NumInputs', '3');
% Report DataLogging inport order (wired by index below)
dlg_in = find_system([name '/DataLogging'], 'LookUnderMasks', 'all', ...
    'FollowLinks', 'on', 'SearchDepth', 1, 'BlockType', 'Inport');
fprintf('DataLogging inports:\n');
for i = 1:numel(dlg_in), fprintf('  %d: %s\n', i, dlg_in{i}); end

%% 2. Remove custom blocks from a previous run (rerunnability)
for b = {'Ball_Engine', 'Forces_to_Torques', 'KINARM_Apply_Loads', ...
         'UD_pen', 'UD_speed', 'UD_delay', 'UD_timeout', 'UD_hand', ...
         'KINARM_HandInTarget2', 'HIT_any', ...
         'From_KINdata', 'From_LoadTable', 'From_TargetTable', ...
         'From_TaskWide', 'From_TPTable', 'From_TPRow', 'From_Seed', ...
         'C_pen', 'C_speed', 'C_alog'}
    try, delete_block([name '/' b{1}]); catch, end %#ok<CTCH>
end

%% 3. Rebuild the Trial_Control chart
rt = sfroot;
machine = rt.find('-isa', 'Stateflow.Machine', 'Name', name);
ch = machine.find('-isa', 'Stateflow.Chart', 'Name', 'Trial_Control');

% wipe graphical content
for obj = [ch.find('-isa', 'Stateflow.Transition'); ch.find('-isa', 'Stateflow.Junction')]'
    delete(obj);
end
for obj = ch.find('-isa', 'Stateflow.State')'
    delete(obj);
end

% data: keep Trial_Protocol/HandInTarget/TimeInterval + outputs, add the rest
addin = {'pen_fb', 'speed_fb', 'delay_fb', 'timeout_fb'};
for i = 1:numel(addin)
    if isempty(ch.find('-isa', 'Stateflow.Data', 'Name', addin{i}))
        d = Stateflow.Data(ch); d.Name = addin{i}; d.Scope = 'Input';
    end
end
addout = {'event_code', 'phase', 'load_row', 'ball_row'};
for i = 1:numel(addout)
    if isempty(ch.find('-isa', 'Stateflow.Data', 'Name', addout{i}))
        d = Stateflow.Data(ch); d.Name = addout{i}; d.Scope = 'Output';
    end
end
if isempty(ch.find('-isa', 'Stateflow.Data', 'Name', 'TimeInterval'))
    d = Stateflow.Data(ch); d.Name = 'TimeInterval'; d.Scope = 'Local';
end

% states ---------------------------------------------------------------------
W = 300; H = 130; X1 = 40; X2 = 420; X3 = 800; Y1 = 40; Y2 = 240; Y3 = 440; Y4 = 640;

sWait = mkstate(ch, [X1 Y1 W H], sprintf(['WAIT_HOME\nentry:\n' ...
    'logging_enable = 1;\n' ...
    'target_row = Trial_Protocol[HomeTarget];\n' ...
    'target_state = 1;\n' ...
    'load_row = Trial_Protocol[Load];\n' ...
    'ball_row = Trial_Protocol[BallTarget];\n' ...
    'phase = 0;\nevent_code = 0;']));

sHold = mkstate(ch, [X2 Y1 W H], sprintf(['HOLD\nentry:\n' ...
    'TimeInterval = Trial_Protocol[HoldTime];']));

% NOTE: rand()/RAND_MAX and boolean arithmetic in entry actions crash the
% R2013a chart code generator (CGIR FixptType assertion). The random release
% delay and the zero-timeout guard are computed in Ball_Engine instead; the
% chart samples the precomputed inputs at state entry.
sRel = mkstate(ch, [X3 Y1 W H], sprintf(['RELEASE_WAIT\nentry:\n' ...
    'phase = 1;\n' ...
    'TimeInterval = delay_fb;']));

sRoll = mkstate(ch, [X3 Y2 W H], sprintf(['ROLLING\nentry:\n' ...
    'phase = 2;\n' ...
    'event_code = E_BALL_RELEASE;\n' ...
    'TimeInterval = timeout_fb;']));

% IMPACT -> RINGDOWN replaces the old CONTACT <-> POST_IMPACT ping-pong:
% physics (bounces included) lives in Ball_Engine; the chart stamps
% E_CONTACT_START once at first contact and E_CONTACT_END once at the end
% of the FIRST contact episode (RINGDOWN's entry, while logging is still
% on - stamping on the exit transition raced the same-tick logging-off and
% the event never reached the data; 2026-11-26 verification). There is NO
% transition back: later bounces re-fire nothing, and per-bounce timing is
% recovered from the 1 kHz analog log (pen, Fx, Fy). A during-action 'if'
% is not an option: this chart uses C action language, where if-statements
% in state actions are a parse error (tlc_c "syntax error").
sImp = mkstate(ch, [X3 Y3 W H], sprintf(['IMPACT\nentry:\n' ...
    'event_code = E_CONTACT_START;']));
sRing = mkstate(ch, [X2 Y3 W H], sprintf(['RINGDOWN\nentry:\n' ...
    'event_code = E_CONTACT_END;']));

sEnd = mkstate(ch, [X1 Y4 W H], sprintf(['EndOfTrial\nentry:\n' ...
    'logging_enable = 0;\n' ...
    'target_state = 0;\n' ...
    'phase = 0;\n' ...
    'send(e_Trial_End);']));

% transitions ------------------------------------------------------------------
t0 = Stateflow.Transition(ch);
t0.Destination = sWait; t0.DestinationOClock = 0;
t0.SourceEndPoint = [X1 + W/2, Y1 - 35]; t0.MidPoint = [X1 + W/2, Y1 - 18];

mktrans(ch, sWait, sHold,  '[HandInTarget[target_row] == 1]', 1);
mktrans(ch, sHold, sRel,   'after(TimeInterval, e_clk)', 1);
mktrans(ch, sHold, sWait,  '[HandInTarget[target_row] == 0]', 2);
mktrans(ch, sRel,  sRoll,  'after(TimeInterval, e_clk)', 1);
mktrans(ch, sRel,  sWait,  '[HandInTarget[target_row] == 0]', 2);
mktrans(ch, sRoll, sImp,   '[pen_fb > 0]', 1);
% Hand-left-home abort: the event is stamped on the transition itself (the
% old ABORT_LEAVE state existed only to hold it for 10 ms; the value now
% persists until WAIT_HOME resets event_code to 0).
tAb = mktrans(ch, sRoll, sEnd, ['[HandInTarget[target_row] == 0]' ...
    '{event_code = E_HAND_LEFT_HOME;}'], 2);
tTo = mktrans(ch, sRoll, sEnd, 'after(TimeInterval, e_clk)', 3);
% First contact episode ends -> RINGDOWN (stamps E_CONTACT_END on entry).
mktrans(ch, sImp, sRing, '[pen_fb <= 0]', 1);
% Cap for a contact that never releases (rare): exit stamps the code too;
% the same-tick race may swallow it there, but the analog log has the truth.
tCp = mktrans(ch, sImp, sEnd, 'after(2500, e_clk){event_code = E_CONTACT_END;}', 2);
% Settled: >=300 ms after the first contact ended, ball slow and out of
% contact; or a hard 2.5 s cap after the first contact ended.
tSe = mktrans(ch, sRing, sEnd, ['after(300, e_clk)' ...
    '[speed_fb < 0.02 && pen_fb <= 0]'], 1);
tCa = mktrans(ch, sRing, sEnd, 'after(2500, e_clk)', 2);
mktrans(ch, sEnd,  sWait,  'after(1000, e_clk)', 1);
% Spread the End-bound labels so the render stays readable (the
% auto-placed positions pile up mid-chart). Cosmetic only.
for lp = {{tAb, [60 378]}, {tTo, [60 404]}, {tSe, [150 545]}, ...
          {tCa, [150 585]}, {tCp, [460 660]}}
    try
        p = lp{1}{1}.LabelPosition;
        lp{1}{1}.LabelPosition = [lp{1}{2} p(3) p(4)];
    catch
    end %#ok<CTCH>
end

%% 4. Custom blocks
add_block('simulink/User-Defined Functions/MATLAB Function', ...
    [name '/Ball_Engine'], 'Position', [330 420 560 620]);
emlc = rt.find('-isa', 'Stateflow.EMChart', 'Path', [name '/Ball_Engine']);
emlc.Script = fileread(fullfile(pwd, 'ball_engine_eml.m'));
try
    emlc.ChartUpdateMethod = 'DISCRETE';
    emlc.SampleTime = '0.001';
    fprintf('Ball_Engine sample time set to 0.001 s\n');
catch e
    fprintf('NOTE: Ball_Engine sample time: %s (will inherit)\n', e.message);
end
% R2013a's EMChart API has no sample-time property, and inheritance put the
% block in the 0.0005 s base-rate section once hand_in was added (breaking
% dt = 0.001). Pin the rate on the block itself, the way BKIN pins its own
% EML charts (e.g. Monitor_status has SystemSampleTime ".001").
set_param([name '/Ball_Engine'], 'SystemSampleTime', '0.001');
fprintf('Ball_Engine SystemSampleTime pinned to 0.001 s\n');

add_block('built-in/From', [name '/From_KINdata'], 'GotoTag', 'KINdata', ...
    'Position', [180 430 280 450]);
add_block('built-in/From', [name '/From_LoadTable'], 'GotoTag', 'Load_Table', ...
    'Position', [180 470 280 490]);
add_block('built-in/From', [name '/From_TargetTable'], 'GotoTag', 'Target_Table', ...
    'Position', [180 510 280 530]);
add_block('built-in/From', [name '/From_TaskWide'], 'GotoTag', 'Task_Wide_Parameters', ...
    'Position', [180 550 280 570]);
add_block('built-in/From', [name '/From_TPTable'], 'GotoTag', 'TP_Table', ...
    'Position', [180 590 280 610]);
add_block('built-in/From', [name '/From_TPRow'], 'GotoTag', 'TP_row', ...
    'Position', [180 630 280 650]);
add_block('built-in/From', [name '/From_Seed'], 'GotoTag', 'seed', ...
    'Position', [180 670 280 690]);

add_block('KINARM_loads/Forces_to_Torques', [name '/Forces_to_Torques'], ...
    'Position', [620 480 760 530]);
add_block('KINARM_loads/KINARM_Apply_Loads', [name '/KINARM_Apply_Loads'], ...
    'Position', [800 480 920 530], 'max_torque', '12');

add_block('built-in/UnitDelay', [name '/UD_pen'], 'SampleTime', '0.001', ...
    'Position', [620 560 660 590]);
add_block('built-in/UnitDelay', [name '/UD_speed'], 'SampleTime', '0.001', ...
    'Position', [620 610 660 640]);
add_block('built-in/UnitDelay', [name '/UD_delay'], 'SampleTime', '0.001', ...
    'Position', [620 660 660 690]);
add_block('built-in/UnitDelay', [name '/UD_timeout'], 'SampleTime', '0.001', ...
    'Position', [620 710 660 740]);
% hand_in goes through a 1 kHz UnitDelay: keeps Ball_Engine's inherited rate
% at 0.001 s (wired straight from HandInTarget it inherits the 0.0005 s base
% rate and the physics dt breaks).
add_block('built-in/UnitDelay', [name '/UD_hand'], 'SampleTime', '0.001', ...
    'Position', [620 760 660 790]);

% Either hand counts as "at home": the library HandInTarget tracks exactly
% one hand (use_dominant_hand on = active arm, off = the other arm), so a
% second instance watches the other hand and a max() ORs the two vectors.
% Feeds the chart (trial start/hold) and the ring colour alike.
add_block('KINARM_general/KINARM_HandInTarget', [name '/KINARM_HandInTarget2'], ...
    'Position', [30 410 160 450]);
set_param([name '/KINARM_HandInTarget2'], 'use_dominant_hand', 'off', ...
    'attribcol1', '[4]');
add_block('built-in/MinMax', [name '/HIT_any'], 'Function', 'max', ...
    'Inputs', '2', 'Position', [95 470 125 500]);

%% 5. Rewire the root level from scratch
for h = find_system(name, 'SearchDepth', 1, 'FindAll', 'on', 'Type', 'line')'
    try, delete_line(h); catch, end %#ok<CTCH>
end

gui  = get_param([name '/GUI Control'],         'PortHandles');
chrt = get_param([name '/Trial_Control'],       'PortHandles');
dlog = get_param([name '/DataLogging'],         'PortHandles');
hit  = get_param([name '/KINARM_HandInTarget'], 'PortHandles');
shw  = get_param([name '/Show_Target'],         'PortHandles');
hfb  = get_param([name '/Hand_Feedback'],       'PortHandles');
cat3 = get_param([name '/VCODES'],              'PortHandles');
pvc  = get_param([name '/Process_Video_CMD'],   'PortHandles');
eml  = get_param([name '/Ball_Engine'],         'PortHandles');
f2t  = get_param([name '/Forces_to_Torques'],   'PortHandles');
apl  = get_param([name '/KINARM_Apply_Loads'],  'PortHandles');
udp  = get_param([name '/UD_pen'],              'PortHandles');
uds  = get_param([name '/UD_speed'],            'PortHandles');
udd  = get_param([name '/UD_delay'],            'PortHandles');
udt  = get_param([name '/UD_timeout'],          'PortHandles');
fKIN = get_param([name '/From_KINdata'],        'PortHandles');
fLT  = get_param([name '/From_LoadTable'],      'PortHandles');
fTT  = get_param([name '/From_TargetTable'],    'PortHandles');
fTW  = get_param([name '/From_TaskWide'],       'PortHandles');
fTP  = get_param([name '/From_TPTable'],        'PortHandles');
fTR  = get_param([name '/From_TPRow'],          'PortHandles');
fSD  = get_param([name '/From_Seed'],           'PortHandles');

fprintf('Ports: chart %d out, DataLogging %d in\n', numel(chrt.Outport), numel(dlog.Inport));

AL = {'autorouting', 'on'};
hit2 = get_param([name '/KINARM_HandInTarget2'], 'PortHandles');
any_ = get_param([name '/HIT_any'],              'PortHandles');

add_line(name, gui.Outport(1),  chrt.Trigger(1), AL{:});  % e_clk / e_ExitTrialNow
add_line(name, gui.Outport(2),  chrt.Inport(1),  AL{:});  % Trial_Protocol
add_line(name, hit.Outport(1),  any_.Inport(1),  AL{:});  % active hand
add_line(name, hit2.Outport(1), any_.Inport(2),  AL{:});  % other hand
add_line(name, any_.Outport(1), chrt.Inport(2),  AL{:});  % either-hand InTarget
add_line(name, udp.Outport(1),  chrt.Inport(3),  AL{:});  % pen_fb (1 ms delay)
add_line(name, uds.Outport(1),  chrt.Inport(4),  AL{:});  % speed_fb
add_line(name, udd.Outport(1),  chrt.Inport(5),  AL{:});  % delay_fb
add_line(name, udt.Outport(1),  chrt.Inport(6),  AL{:});  % timeout_fb

add_line(name, chrt.Outport(1), dlog.Inport(1),  AL{:});  % logging_enable
add_line(name, chrt.Outport(2), shw.Inport(1),   AL{:});  % target_row
add_line(name, chrt.Outport(2), eml.Inport(2),   AL{:});  % home_row (same signal)
add_line(name, chrt.Outport(3), shw.Inport(2),   AL{:});  % target_state
add_line(name, chrt.Outport(4), dlog.Inport(2),  AL{:});  % event_code
add_line(name, chrt.Outport(5), eml.Inport(1),   AL{:});  % phase
add_line(name, chrt.Outport(6), eml.Inport(4),   AL{:});  % load_row
add_line(name, chrt.Outport(7), eml.Inport(3),   AL{:});  % ball_row
add_line(name, chrt.Outport(8), gui.Inport(1),   AL{:});  % e_Trial_End

add_line(name, fKIN.Outport(1), eml.Inport(5),   AL{:});
add_line(name, fLT.Outport(1),  eml.Inport(6),   AL{:});
add_line(name, fTT.Outport(1),  eml.Inport(7),   AL{:});
add_line(name, fTW.Outport(1),  eml.Inport(8),   AL{:});
add_line(name, fTP.Outport(1),  eml.Inport(9),   AL{:});
add_line(name, fTR.Outport(1),  eml.Inport(10),  AL{:});
add_line(name, fSD.Outport(1),  eml.Inport(11),  AL{:});
udh = get_param([name '/UD_hand'], 'PortHandles');
add_line(name, any_.Outport(1), udh.Inport(1),   AL{:});  % hand_in (ring colour)
add_line(name, udh.Outport(1),  eml.Inport(12),  AL{:});  % 1 ms delay, rate 0.001

add_line(name, shw.Outport(1),  cat3.Inport(1),  AL{:});
add_line(name, hfb.Outport(1),  cat3.Inport(2),  AL{:});
add_line(name, eml.Outport(1),  cat3.Inport(3),  AL{:});  % ball + slope VCODEs
add_line(name, cat3.Outport(1), pvc.Inport(1),   AL{:});

add_line(name, eml.Outport(2),  f2t.Inport(1),   AL{:});  % hand forces (4x1)
add_line(name, f2t.Outport(1),  apl.Inport(1),   AL{:});  % joint torques

add_line(name, eml.Outport(3),  dlog.Inport(3),  AL{:});  % analog log vector
add_line(name, eml.Outport(4),  udp.Inport(1),   AL{:});  % pen -> delay -> chart
add_line(name, eml.Outport(5),  uds.Inport(1),   AL{:});  % speed -> delay -> chart
add_line(name, eml.Outport(6),  udd.Inport(1),   AL{:});  % release delay (ms)
add_line(name, eml.Outport(7),  udt.Inport(1),   AL{:});  % trial timeout (ms)

%% 6. Save
save_system(name);
fprintf('\nSaved %s.mdl with full trial logic.\nNext: buildxpc(''%s.mdl'')\n', name, name);
end

function s = mkstate(ch, pos, label)
s = Stateflow.State(ch);
s.Position = pos;
s.LabelString = label;
end

function t = mktrans(ch, src, dst, label, order)
t = Stateflow.Transition(ch);
t.Source = src;
t.Destination = dst;
t.LabelString = label;
try
    t.ExecutionOrder = order;
catch
end %#ok<CTCH>
end
