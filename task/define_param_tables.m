function define_param_tables()
%DEFINE_PARAM_TABLES Populate ball_impact's Parameter Table Defn and TP-aware chart.
%
% Implements task/REBUILD-SPEC.md (written 2026-11-21 after the first lab test):
%   1. breaks the Parameter Table Defn library link (the GUI does the same on OK;
%      the mask's apply step cannot modify a linked subsystem, which is why the
%      skeleton shipped with only the library-default X/Y columns),
%   2. writes the full table definitions into the block's UserData and sets
%      apply=true so the mask init embeds them as named Constant blocks that
%      Dexterit-E reads out of the .dlm,
%   3. updates the placeholder chart: Init shows the TP row's HomeTarget and
%      holds for HoldTime + 1500 ms (guide convention Trial_Protocol[COL]; the
%      chart inputs get Props.Array.FirstIndex='1' so the 1-based column
%      constants index correctly in the C-action chart - BKIN's own blocks use
%      the same trick),
%   4. saves the model and prints verification output.
%
% Run from task/ in MATLAB R2013a (E:\matlabR2013a) with TDK 3.5 on the path,
% then build with buildxpc('ball_impact.mdl').
%
% Serialization note: each parameter is embedded as a Constant block whose NAME
% is 'constantname;label;type;desc;enableevents;disableevents;option;group;'
% and whose VALUE is the column number (verified against the TDK library
% default 'col_x;X;float;...;;;none;;'). Types verified against protocols from
% tasks that ran on the lab robot: float, int, integer, colour, label, target,
% load. The enable/disable/group slot order for BUTTONS is inferred, not
% verified - check buttons render correctly in Dexterit-E on the next visit.

name = 'ball_impact';
cd(fileparts(mfilename('fullpath')));
load_system(name);
ptd = [name '/Parameter Table Defn'];

%% 1. Break the library link so the mask apply can rebuild block contents
if ~strcmp(get_param(ptd, 'LinkStatus'), 'none')
    set_param(ptd, 'LinkStatus', 'none');
    fprintf('Broke library link on Parameter Table Defn\n');
end

%% 2. Table definitions (REBUILD-SPEC.md section 1)
ud = get_param(ptd, 'UserData');   % keep tab order, sub_block_names, tab 1

% Target Table: library X/Y kept first so existing protocols stay valid
tt = [ ...
    mkcol(1, 'col_x',     'X',         'float',  'X Position (cm) of the target relative to  local (0,0)'), ...
    mkcol(2, 'col_y',     'Y',         'float',  'Y Position (cm) of the target relative to  local (0,0)'), ...
    mkcol(3, 'VisRadius', 'VisRadius', 'float',  'Drawn radius of the target circle (cm)'), ...
    mkcol(4, 'LogRadius', 'LogRadius', 'float',  'Hand-in-target logical radius (cm)'), ...
    mkcol(5, 'Colour',    'Colour',    'colour', 'Target colour')];

% Load Table: one row = one ball/haptic condition
lt = [ ...
    mkcol(1,  'BallMass',      'BallMass',      'float', 'Ball mass (kg)'), ...
    mkcol(2,  'BallRadius',    'BallRadius',    'float', 'Ball radius (cm)'), ...
    mkcol(3,  'SlopeAngle',    'SlopeAngle',    'float', 'Slope angle (deg)'), ...
    mkcol(4,  'SlopeLength',   'SlopeLength',   'float', 'Slope length (cm)'), ...
    mkcol(5,  'FlatLength',    'FlatLength',    'float', 'Flat run-out length (cm)'), ...
    mkcol(6,  'RollRes',       'RollRes',       'float', 'Rolling resistance coefficient'), ...
    mkcol(7,  'Kc',            'Kc',            'float', 'Contact stiffness (N per m)'), ...
    mkcol(8,  'Bc',            'Bc',            'float', 'Contact damping (N s per m)'), ...
    mkcol(9,  'Fmax',          'Fmax',          'float', 'Contact force clamp (N), also hard-clamped in the model'), ...
    mkcol(10, 'HapticsOn',     'HapticsOn',     'int',   'Contact force on (1) or visual only (0)'), ...
    mkcol(11, 'TransientAmp',  'TransientAmp',  'float', 'Impact transient amplitude (N per unit impact speed)'), ...
    mkcol(12, 'TransientFreq', 'TransientFreq', 'float', 'Impact transient frequency (Hz)'), ...
    mkcol(13, 'DrawRadius',    'DrawRadius',    'float', 'Drawn ball radius (cm); 0 = draw at BallRadius. Physics always uses BallRadius (visuo-haptic decoupling, SPIDAR port)')];

% TP Table: one row = one trial type
tp = [ ...
    mkcol(1, 'HomeTarget',      'HomeTarget',      'target', 'Target Table row of the home target'), ...
    mkcol(2, 'BallTarget',      'BallTarget',      'target', 'Target Table row of the ball graphic (X and Y overridden each tick)'), ...
    mkcol(3, 'Load',            'Load',            'load',   'Load Table row for this trial'), ...
    mkcol(4, 'HoldTime',        'HoldTime',        'int',    'Required hold at home before release (ms)'), ...
    mkcol(5, 'ReleaseDelayMin', 'ReleaseDelayMin', 'int',    'Minimum random delay before ball release (ms)'), ...
    mkcol(6, 'ReleaseDelayMax', 'ReleaseDelayMax', 'int',    'Maximum random delay before ball release (ms)'), ...
    mkcol(7, 'TrialTimeout',    'TrialTimeout',    'int',    'Maximum trial duration (ms)')];

% Task Wide Parameters
tw = [ ...
    mkcol(1, 'HandRadius',  'HandRadius',  'float', 'Hand contact (paddle) radius (cm)'), ...
    mkcol(2, 'ApproachDir', 'ApproachDir', 'float', 'Ball approach direction (deg) with 90 = lateral from +X and 0 = toward body')];

% Task Control Buttons (Btn# 2-254; clicks auto-logged as TASK_BUTTON_n_CLICKED)
bt = [ ...
    mkbtn(2, 'BTN_MARK',   'Mark event',   'Marks a timestamp event in the data'), ...
    mkbtn(3, 'BTN_REPEAT', 'Repeat trial', 'Repeat the current trial')];

% Task Events (Evt# = event_code the chart writes; parser reads parts[1]=label,
% parts[3]=desc, parts[6]=='error' marks the event as an error in the GUI)
ev = [ ...
    mkevt(1, 'E_BALL_RELEASE',   'BALL_RELEASE',   'Ball released at the slope top', 'none'), ...
    mkevt(2, 'E_CONTACT_START',  'CONTACT_START',  'Ball-hand contact started (pen greater than 0)', 'none'), ...
    mkevt(3, 'E_CONTACT_END',    'CONTACT_END',    'Ball-hand contact ended', 'none'), ...
    mkevt(4, 'E_HAND_LEFT_HOME', 'HAND_LEFT_HOME', 'Hand left home before impact - trial aborted', 'error')];

ud(2).params = tt; ud(2).num_param = numel(tt);   % target_table
ud(3).params = lt; ud(3).num_param = numel(lt);   % load_table
ud(4).params = tp; ud(4).num_param = numel(tp);   % TP_table
ud(5).params = tw; ud(5).num_param = numel(tw);   % task_wide
ud(6).params = ev; ud(6).num_param = numel(ev);   % events
ud(7).params = bt; ud(7).num_param = numel(bt);   % buttons

ud(1).apply = true;
set_param(ptd, 'UserData', ud);
set_param(ptd, 'UserDataPersistent', 'on');

%% 3. Apply: replicate the mask init's apply branch directly. The mask init
%% only runs when Simulink draws the block, which never happens under
%% -nodesktop load_system, and it cannot run during compile (structural
%% edits are locked then). This is the same code the mask executes.
Simulink.SubSystem.deleteContents(ptd);
for tab = 1:numel(ud)
    block_pos = [100, -40, 240, 0] + tab * [0 60 0 60];
    sub_path = [ptd '/' ud(tab).sub_block_name];
    add_block('built-in/Subsystem', sub_path, 'Position', mat2str(block_pos));
    for row = 1:ud(tab).num_param
        cp = ud(tab).params(row);
        block_pos = [200, -40, 240, 0] + row * [0 60 0 60];
        add_block('built-in/Constant', [sub_path '/' cp.blockname], ...
            'Value', cp.paramindex, 'Position', mat2str(block_pos));
        tpos = block_pos + [100 10 100 -10];
        tname = ['Terminator' num2str(row)];
        add_block('built-in/Terminator', [sub_path '/' tname], 'Position', mat2str(tpos));
        add_line(sub_path, [cp.blockname '/1'], [tname '/1']);
    end
end
ud(1).apply = false;        % definitions are now materialized
set_param(ptd, 'UserData', ud);

% NOTE: no normal-mode compile here. A simulation compile initializes the
% BKIN S-functions (e.g. the xPC UDP Receive inside Process_Video_CMD), which
% abort off-target with "Simulation aborted". The block's InitFcn creates the
% named model-workspace constants during the RTW build instead, so the
% buildxpc that follows is the real verification: it fails if the chart's
% column constants do not resolve.

% Verify: embedded Constant blocks inside the Parameter Table Defn block
cbs = find_system(ptd, 'LookUnderMasks', 'all', 'BlockType', 'Constant');
fprintf('\nEmbedded definition blocks (%d):\n', numel(cbs));
for i = 1:numel(cbs), fprintf('  %s\n', strrep(cbs{i}, sprintf('\n'), ' ')); end

%% 4. Chart: read HomeTarget/HoldTime from the TP row (REBUILD-SPEC section 2)
rt = sfroot;
machine = rt.find('-isa', 'Stateflow.Machine', 'Name', name);
ch = machine.find('-isa', 'Stateflow.Chart', 'Name', 'Trial_Control');

% 1-based indexing for the BKIN Trial_Protocol[COL] convention
for nm = {'Trial_Protocol', 'HandInTarget'}
    dd = ch.find('-isa', 'Stateflow.Data', 'Name', nm{1});
    dd.Props.Array.FirstIndex = '1';
end

% local used by the after() hold
if isempty(ch.find('-isa', 'Stateflow.Data', 'Name', 'TimeInterval'))
    d = Stateflow.Data(ch); d.Name = 'TimeInterval'; d.Scope = 'Local';
end

sInit = ch.find('-isa', 'Stateflow.State', 'Name', 'Init');
if ~isempty(sInit)   % absent once build_trial_logic.m has installed the real chart
    sInit.LabelString = sprintf(['Init\nentry:\n' ...
        'logging_enable = 1;\n' ...
        'target_row = Trial_Protocol[HomeTarget];\n' ...
        'target_state = 1;\n' ...
        'TimeInterval = Trial_Protocol[HoldTime] + 1500;']);

    trs = ch.find('-isa', 'Stateflow.Transition');
    for i = 1:numel(trs)
        if strncmp(trs(i).LabelString, 'after(4000', 10)
            trs(i).LabelString = 'after(TimeInterval, e_clk)';   % e_clk is 1 kHz -> ms
        end
    end
end

%% 5. Save
save_system(name);
fprintf('\nSaved %s.mdl with parameter tables and TP-aware chart.\n', name);
fprintf('Next: buildxpc(''%s.mdl'')\n', name);

%% Extra diagnostics: current video/target block mask settings (for review)
for blk = {'Show_Target', 'KINARM_HandInTarget'}
    b = [name '/' blk{1}];
    fprintf('\n--- %s mask ---\n', blk{1});
    mn = get_param(b, 'MaskNames'); mv = get_param(b, 'MaskValues');
    for i = 1:numel(mn), fprintf('  %-28s = %s\n', mn{i}, mv{i}); end
end
end

function p = mkcol(idx, cn, label, type, desc)
p = mkparam(idx, cn, label, type, desc, 'none', '', '', '');
end

function p = mkbtn(idx, cn, label, desc)
p = mkparam(idx, cn, label, '', desc, '', '', '', '');
end

function p = mkevt(code, cn, label, desc, opt)
p = mkparam(code, cn, label, '', desc, opt, '', '', '');
end

function p = mkparam(idx, cn, label, type, desc, opt, en, dis, grp)
p.constantname  = cn;
p.paramindex    = sprintf('%d', idx);
p.paramlabel    = label;
p.paramtype     = type;
p.paramoption   = opt;
p.enableevent   = en;
p.disableevent  = dis;
p.buttongroup   = grp;
p.paramdesc     = desc;
% Field order verified against the TDK library default:
% 'col_x;X;float;X Position (cm) of the target relative to  local (0,0);;;none;;'
p.blockname = sprintf('%s;%s;%s;%s;%s;%s;%s;%s;', cn, label, type, desc, en, dis, opt, grp);
end
