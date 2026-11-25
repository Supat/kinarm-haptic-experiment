function add_debug_taps()
% ADD_DEBUG_TAPS  Instrument ball_impact.mdl to log every runtime gate in
% the torque path as analog channels 9-16:
%   9  scal1    KINARMScalingRobot1 (Apply_Loads ramp, robot 1)
%   10 scal2    KINARMScalingRobot2 (robot 2)
%   11 tq_s     KINARMTorqueCMD(1) post-ramp shoulder torque, robot 1 (Nm)
%   12 tq_e     KINARMTorqueCMD(2) post-ramp elbow torque, robot 1 (Nm)
%   13 mon      Monitor_status force_scale (0 = hardware kill switch)
%   14 runstat  Run_Status (1 = running)
%   15 m37_r1   KINdata(1,37) motor status bit field, robot 1
%   16 m37_r2   KINdata(2,37) motor status bit field, robot 2
% Rerunnable. Run AFTER build_trial_logic. Then buildxpc('ball_impact.mdl').

name = 'ball_impact';
load_system(name);

%% 1. Remove any previous debug taps (rerunnable)
dbg = {'DBG_From_Scal1', 'DBG_From_Scal2', 'DBG_From_TqCmd', 'DBG_Sel_Tq', ...
       'DBG_From_Mon', 'DBG_From_Run', 'DBG_Sel_M37', 'DBG_Mux', ...
       'DBG_R_ball', 'DBG_R_tq', 'DBG_R_m37'};
for i = 1:numel(dbg)
    blk = find_system(name, 'SearchDepth', 1, 'Name', dbg{i});
    if ~isempty(blk)
        rip_block(blk{1});
    end
end
pk = [name '/DataLogging/Poll KINARM'];
mg = find_system(pk, 'LookUnderMasks', 'all', 'FollowLinks', 'on', ...
    'SearchDepth', 1, 'BlockType', 'Goto', 'GotoTag', 'DBG_MonStat');
for i = 1:numel(mg)
    rip_block(mg{i});
end

%% 2. Goto on the Monitor_status output inside Poll KINARM
% (DataLogging link was already broken by build_trial_logic step 0.5)
add_block('built-in/Goto', [pk '/DBG_Mon_Goto'], 'GotoTag', 'DBG_MonStat', ...
    'TagVisibility', 'global', 'Position', [1650 950 1790 980]);
add_line(pk, 'Monitor_status/1', 'DBG_Mon_Goto/1');
fprintf('Tapped Monitor_status inside Poll KINARM\n');

%% 3. Sanity: the Goto tags we are about to consume must exist
need = {'KINARMScalingRobot1', 'KINARMScalingRobot2', 'KINARMTorqueCMD', ...
        'Run_Status', 'DBG_MonStat'};
for i = 1:numel(need)
    g = find_system(name, 'LookUnderMasks', 'all', 'FollowLinks', 'on', ...
        'BlockType', 'Goto', 'GotoTag', need{i});
    fprintf('Goto %-22s: %d found\n', need{i}, numel(g));
    if isempty(g)
        error('Goto tag %s not found - aborting before creating a dangling From', need{i});
    end
end

%% 4. Root-level taps
X = 900;
add_block('built-in/From', [name '/DBG_From_Scal1'], 'GotoTag', 'KINARMScalingRobot1', ...
    'Position', [X 600 X+120 620]);
add_block('built-in/From', [name '/DBG_From_Scal2'], 'GotoTag', 'KINARMScalingRobot2', ...
    'Position', [X 640 X+120 660]);
add_block('built-in/From', [name '/DBG_From_TqCmd'], 'GotoTag', 'KINARMTorqueCMD', ...
    'Position', [X 680 X+120 700]);
add_block('built-in/From', [name '/DBG_From_Mon'], 'GotoTag', 'DBG_MonStat', ...
    'Position', [X 760 X+120 780]);
add_block('built-in/From', [name '/DBG_From_Run'], 'GotoTag', 'Run_Status', ...
    'Position', [X 800 X+120 820]);

% KINARMTorqueCMD is 1x4 [s1 e1 s2 e2]; keep robot-1 pair
add_block('built-in/Selector', [name '/DBG_Sel_Tq'], ...
    'NumberOfDimensions', '1', 'IndexOptions', 'Index vector (dialog)', ...
    'Indices', '[1 2]', 'InputPortWidth', '4', 'Position', [X+140 680 X+180 700]);

% KINdata rows 1:2, col 37 (motor status bit fields)
add_block('built-in/Selector', [name '/DBG_Sel_M37'], ...
    'NumberOfDimensions', '2', ...
    'IndexOptions', 'Index vector (dialog),Index vector (dialog)', ...
    'Indices', '[1 2],37', 'Position', [X+140 840 X+180 860]);

% Everything entering the mux must be 1-D or DataLogging's inner Mux
% rejects the result as a matrix in strict bus mode.
add_block('built-in/Reshape', [name '/DBG_R_ball'], ...
    'OutputDimensionality', '1-D array', 'Position', [X+160 540 X+200 560]);
add_block('built-in/Reshape', [name '/DBG_R_tq'], ...
    'OutputDimensionality', '1-D array', 'Position', [X+250 680 X+280 700]);
add_block('built-in/Reshape', [name '/DBG_R_m37'], ...
    'OutputDimensionality', '1-D array', 'Position', [X+250 840 X+280 860]);

add_block('built-in/Mux', [name '/DBG_Mux'], 'Inputs', '7', ...
    'DisplayOption', 'bar', 'Position', [X+330 580 X+340 880]);

%% 5. Rewire the analog log through the mux
try
    delete_line(name, 'Ball_Engine/3', 'DataLogging/3');
catch %#ok<CTCH>
end
AL = {'autorouting', 'on'};
add_line(name, 'Ball_Engine/3',     'DBG_R_ball/1', AL{:});
add_line(name, 'DBG_R_ball/1',      'DBG_Mux/1', AL{:});
add_line(name, 'DBG_From_Scal1/1',  'DBG_Mux/2', AL{:});
add_line(name, 'DBG_From_Scal2/1',  'DBG_Mux/3', AL{:});
add_line(name, 'DBG_From_TqCmd/1',  'DBG_Sel_Tq/1', AL{:});
add_line(name, 'DBG_Sel_Tq/1',      'DBG_R_tq/1', AL{:});
add_line(name, 'DBG_R_tq/1',        'DBG_Mux/4', AL{:});
add_line(name, 'DBG_From_Mon/1',    'DBG_Mux/5', AL{:});
add_line(name, 'DBG_From_Run/1',    'DBG_Mux/6', AL{:});
add_line(name, 'From_KINdata/1',    'DBG_Sel_M37/1', AL{:});  % branch
add_line(name, 'DBG_Sel_M37/1',     'DBG_R_m37/1', AL{:});
add_line(name, 'DBG_R_m37/1',       'DBG_Mux/7', AL{:});
add_line(name, 'DBG_Mux/1',         'DataLogging/3', AL{:});

%% 6. Report the DataLogging mask (check for a channel-count setting)
mn = get_param([name '/DataLogging'], 'MaskNames');
mv = get_param([name '/DataLogging'], 'MaskValues');
fprintf('DataLogging mask:\n');
for i = 1:numel(mn)
    fprintf('  %s = %s\n', mn{i}, mv{i});
end

save_system(name);
fprintf('\nSaved %s.mdl with debug taps (16 analog channels).\n', name);
fprintf('Next: buildxpc(''%s.mdl'')\n', name);
end

function rip_block(blk)
% delete all lines attached to blk, then the block itself
lh = get_param(blk, 'LineHandles');
fn = fieldnames(lh);
for k = 1:numel(fn)
    hs = lh.(fn{k});
    for h = hs(:)'
        if ishandle(h) && h ~= -1
            try, delete_line(h); catch, end %#ok<CTCH>
        end
    end
end
delete_block(blk);
end
