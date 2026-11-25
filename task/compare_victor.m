% compare_victor.m - structural comparison of Victor's working task vs ours
function compare_victor()
vic = 'C:\Users\Supat\Documents\kinarm-haptic-experiment\debug\Victor\BimanualCarvingModified\BimanualCarvingModified.slx';
load_system(vic);
v = 'BimanualCarvingModified';

fprintf('=== Victor: %s ===\n', v);

% 1. Apply_Loads instances and link status
al = find_system(v, 'SearchDepth', 1, 'BlockType', 'SubSystem');
for i = 1:numel(al)
    b = al{i};
    try
        ls = get_param(b, 'LinkStatus');
        rb = get_param(b, 'ReferenceBlock');
        if ~isempty(rb) || ~strcmp(ls, 'none')
            fprintf('TOP %-45s link=%s ref=%s\n', get_param(b, 'Name'), ls, rb);
        else
            fprintf('TOP %-45s (local)\n', get_param(b, 'Name'));
        end
    catch
    end
end

% 2. Any From/Goto with the torque / clock tags
for tag = {'KINARMTorqueCMD', 'global_clock', 'Run_Status'}
    g = find_system(v, 'LookUnderMasks', 'all', 'FollowLinks', 'on', ...
        'BlockType', 'Goto', 'GotoTag', tag{1});
    f = find_system(v, 'LookUnderMasks', 'all', 'FollowLinks', 'on', ...
        'BlockType', 'From', 'GotoTag', tag{1});
    fprintf('tag %-18s: %d Goto, %d From\n', tag{1}, numel(g), numel(f));
end

% 3. His chart(s): name, trigger wiring at root
charts = find_system(v, 'SearchDepth', 1, 'MaskType', 'Stateflow');
for i = 1:numel(charts)
    fprintf('root Stateflow block: %s\n', charts{i});
    pc = get_param(charts{i}, 'PortConnectivity');
    for k = 1:numel(pc)
        p = pc(k);
        if strcmp(p.Type, 'trigger') && ~isempty(p.SrcBlock) && p.SrcBlock ~= -1
            fprintf('  trigger fed by: %s port %d\n', get_param(p.SrcBlock, 'Name'), p.SrcPort);
        end
    end
end

% 4. GUI Control block: outport names (via its PortHandles / mask label order)
gc = find_system(v, 'SearchDepth', 1, 'Regexp', 'on', 'Name', 'GUI.Control');
if ~isempty(gc)
    fprintf('GUI Control: link=%s\n', get_param(gc{1}, 'LinkStatus'));
    op = find_system(gc{1}, 'LookUnderMasks', 'all', 'FollowLinks', 'on', ...
        'SearchDepth', 1, 'BlockType', 'Outport');
    for i = 1:numel(op)
        fprintf('  GUI outport %s: %s\n', get_param(op{i}, 'Port'), get_param(op{i}, 'Name'));
    end
end

% 5. Solver settings comparison (sample times matter for the pulse gen)
fprintf('Victor solver: %s  FixedStep: %s\n', get_param(v, 'Solver'), get_param(v, 'FixedStep'));

bdclose(v);

% Ours for comparison
load_system('ball_impact');
fprintf('\n=== ours: ball_impact ===\n');
fprintf('ours solver: %s  FixedStep: %s\n', get_param('ball_impact', 'Solver'), ...
    get_param('ball_impact', 'FixedStep'));
op = find_system('ball_impact/GUI Control', 'LookUnderMasks', 'all', 'FollowLinks', 'on', ...
    'SearchDepth', 1, 'BlockType', 'Outport');
for i = 1:numel(op)
    fprintf('  GUI outport %s: %s\n', get_param(op{i}, 'Port'), get_param(op{i}, 'Name'));
end
pc = get_param('ball_impact/Trial_Control', 'PortConnectivity');
for k = 1:numel(pc)
    p = pc(k);
    if strcmp(p.Type, 'trigger') && ~isempty(p.SrcBlock) && p.SrcBlock ~= -1
        fprintf('  our chart trigger fed by: %s port %d\n', get_param(p.SrcBlock, 'Name'), p.SrcPort);
    end
end
bdclose('all');
end
