function build_task_model()
%BUILD_TASK_MODEL Generate the ball_impact task skeleton for Dexterit-E 3.5.
%
% Creates task/ball_impact.mdl with the structure required by the Creating
% Task Programs 3.5 guide (sections 3.3-3.4): configuration parameters for
% xPC Target, the four mandatory top-level blocks (GUI Control, Trial_Control
% Stateflow chart, DataLogging, Parameter Table Defn), the video chain
% (Show_Target + Hand_Feedback -> Process_Video_CMD) and KINARM_HandInTarget.
% The Stateflow chart holds a minimal two-state placeholder; the real trial
% logic (docs/experiment-design.md section 5) is added in Simulink once the
% event sequence is decided.
%
% Run in MATLAB R2013a with the TDK 3.5 on the path, from the task/ folder:
%   build_task_model
%
% Regenerating OVERWRITES ball_impact.mdl. Once the model is hand-edited in
% Simulink, treat the .mdl as the source of truth and retire this script.

name = 'ball_impact';
outfile = fullfile(fileparts(mfilename('fullpath')), [name '.mdl']);

if bdIsLoaded(name), close_system(name, 0); end
if exist(outfile, 'file'), delete(outfile); end

% TDK libraries (must be on the MATLAB path)
load_system('General');
load_system('KINARM_general');
load_system('Video');
load_system('sflib');

new_system(name);
open_system(name);

%% Configuration parameters (guide Figure 3-1)
set_param(name, 'StartTime', '0.0', 'StopTime', 'inf');
set_param(name, 'SolverType', 'Fixed-step', 'Solver', 'ode4', ...
    'FixedStep', '0.0005', 'SampleTimeConstraint', 'Unconstrained', ...
    'SolverMode', 'SingleTasking');
set_param(name, 'SystemTargetFile', 'xpctarget.tlc');   % sets make_rtw + xpc_default_tmf
set_param(name, 'GenerateReport', 'off');
% xPC Target options: Real-Time execution, timer interrupt, TET logging,
% 100000-double log buffer, no auto-download. Parameter names vary by
% release, so set each individually and report any that fail.
xpcopts = {'RL32ModeModifier', 'Real-Time'; ...
           'RL32IRQSourceModifier', 'Timer'; ...
           'RL32LogTETModifier', 'on'; ...
           'RL32LogBufSizeModifier', '100000'; ...
           'xPCisDownloadable', 'off'};
for i = 1:size(xpcopts, 1)
    try
        set_param(name, xpcopts{i,1}, xpcopts{i,2});
    catch e
        fprintf('NOTE: could not set %s: %s\n', xpcopts{i,1}, e.message);
    end
end

%% Required top-level blocks (guide section 3.4) + video chain (Figure 3-3)
add_block('General/GUI Control',          [name '/GUI Control'],          'Position', [50 100 230 220]);
add_block('sflib/Chart',                  [name '/Trial_Control'],        'Position', [330 90 510 230]);
add_block('General/DataLogging',          [name '/DataLogging'],          'Position', [620 60 790 120]);
add_block('General/Parameter Table Defn', [name '/Parameter Table Defn'], 'Position', [50 320 230 380]);
add_block('KINARM_general/KINARM_HandInTarget', [name '/KINARM_HandInTarget'], 'Position', [50 240 230 290]);
% The Parameter Table Defn block stores its definition in persistent UserData
% with an 'apply' flag; when true, its mask init rebuilds internal sub-blocks,
% which fails during a headless diagram update. The library copy already
% contains the default sub-blocks, so clear the flag.
ptd = [name '/Parameter Table Defn'];
ud = get_param(ptd, 'UserData');
if ~isempty(ud) && isfield(ud, 'apply')
    ud(1).apply = false;
    set_param(ptd, 'UserData', ud);
end
add_block('Video/Show_Target',            [name '/Show_Target'],          'Position', [620 150 790 210]);
add_block('KINARM_general/Hand_Feedback', [name '/Hand_Feedback'],        'Position', [620 250 790 300]);
add_block('simulink/Math Operations/Matrix Concatenate', [name '/VCODES'], ...
    'NumInputs', '2', 'ConcatenateDimension', '1', 'Position', [840 190 870 260]);
add_block('Video/Process_Video_CMD',      [name '/Process_Video_CMD'],    'Position', [910 190 1080 260]);

%% Stateflow chart: required events + data, placeholder states
rt = sfroot;
machine = rt.find('-isa', 'Stateflow.Machine', 'Name', name);
ch = machine.find('-isa', 'Stateflow.Chart', 'Name', 'Trial_Control');

ev = Stateflow.Event(ch); ev.Name = 'e_clk';          ev.Scope = 'Input';  ev.Trigger = 'Rising';       % port 1
ev = Stateflow.Event(ch); ev.Name = 'e_ExitTrialNow'; ev.Scope = 'Input';  ev.Trigger = 'Either';       % port 2
ev = Stateflow.Event(ch); ev.Name = 'e_Trial_End';    ev.Scope = 'Output'; ev.Trigger = 'Either';

d = Stateflow.Data(ch); d.Name = 'Trial_Protocol'; d.Scope = 'Input';  d.Props.Array.Size = '-1';
d = Stateflow.Data(ch); d.Name = 'HandInTarget';   d.Scope = 'Input';  d.Props.Array.Size = '-1';
d = Stateflow.Data(ch); d.Name = 'logging_enable'; d.Scope = 'Output';
d = Stateflow.Data(ch); d.Name = 'target_row';     d.Scope = 'Output';
d = Stateflow.Data(ch); d.Name = 'target_state';   d.Scope = 'Output';

% Placeholder trial: show home target (TP row 1) for 2 s, then end the trial.
% TODO replace with the WAIT_HOME/ROLLING/CONTACT/POST machine once the
% trial event sequence in docs/experiment-design.md section 5 is decided.
sInit = Stateflow.State(ch);
sInit.Position = [30 30 220 110];
sInit.LabelString = sprintf('Init\nentry:\nlogging_enable = 1;\ntarget_row = 1;\ntarget_state = 1;');
sEnd = Stateflow.State(ch);
sEnd.Position = [320 30 220 110];
sEnd.LabelString = sprintf('EndOfTrial\nentry:\nlogging_enable = 0;\ntarget_state = 0;\nsend(e_Trial_End);');

t0 = Stateflow.Transition(ch);           % default transition into Init
t0.Destination = sInit; t0.DestinationOClock = 0;
t0.SourceEndPoint = [140 5]; t0.MidPoint = [140 15];

t1 = Stateflow.Transition(ch);
t1.Source = sInit; t1.Destination = sEnd;
t1.SourceOClock = 3; t1.DestinationOClock = 9;
t1.LabelString = 'after(4000, e_clk)';   % 4000 ticks at 0.5 ms = 2 s

t2 = Stateflow.Transition(ch);
t2.Source = sEnd; t2.Destination = sInit;
t2.SourceOClock = 7; t2.DestinationOClock = 5;
t2.LabelString = 'after(10, e_clk)';

%% Wiring (guide sections 3.4 and 3.7)
gui  = get_param([name '/GUI Control'], 'PortHandles');
chrt = get_param([name '/Trial_Control'], 'PortHandles');
dlog = get_param([name '/DataLogging'], 'PortHandles');
hit  = get_param([name '/KINARM_HandInTarget'], 'PortHandles');
shw  = get_param([name '/Show_Target'], 'PortHandles');
hfb  = get_param([name '/Hand_Feedback'], 'PortHandles');
cat2 = get_param([name '/VCODES'], 'PortHandles');
pvc  = get_param([name '/Process_Video_CMD'], 'PortHandles');

add_line(name, gui.Outport(1), chrt.Trigger(1),  'autorouting', 'on'); % e_clk + e_ExitTrialNow
add_line(name, gui.Outport(2), chrt.Inport(1),   'autorouting', 'on'); % Trial_Protocol
add_line(name, hit.Outport(1), chrt.Inport(2),   'autorouting', 'on'); % HandInTarget vector
add_line(name, chrt.Outport(1), dlog.Inport(1),  'autorouting', 'on'); % logging_enable
add_line(name, chrt.Outport(2), shw.Inport(1),   'autorouting', 'on'); % target_row
add_line(name, chrt.Outport(3), shw.Inport(2),   'autorouting', 'on'); % target_state
add_line(name, chrt.Outport(4), gui.Inport(1),   'autorouting', 'on'); % e_Trial_End
add_line(name, shw.Outport(1), cat2.Inport(1),   'autorouting', 'on'); % VCODEs
add_line(name, hfb.Outport(1), cat2.Inport(2),   'autorouting', 'on');
add_line(name, cat2.Outport(1), pvc.Inport(1),   'autorouting', 'on');

%% Save
save_system(name, outfile);
fprintf('Wrote %s\n', outfile);
end
