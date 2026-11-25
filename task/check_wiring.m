% check_wiring.m - print port connectivity of the loads chain and the
% DataLogging torque path in ball_impact.mdl (headless diagnostic).
function check_wiring()
mdl = 'ball_impact';
load_system(mdl);

show_block_conn(mdl, 'Forces_to_Torques');
show_block_conn(mdl, 'KINARM_Apply_Loads');

% The From we added inside DataLogging/Poll KINARM
fr = find_system(mdl, 'LookUnderMasks', 'all', 'FollowLinks', 'on', ...
    'BlockType', 'From', 'GotoTag', 'KINARMTorqueCMD');
fprintf('From KINARMTorqueCMD blocks: %d\n', numel(fr));
for i = 1:numel(fr)
    fprintf('  %s\n', fr{i});
end

% All Goto blocks with that tag (should come from inside Apply_Loads)
gt = find_system(mdl, 'LookUnderMasks', 'all', 'FollowLinks', 'on', ...
    'BlockType', 'Goto', 'GotoTag', 'KINARMTorqueCMD');
fprintf('Goto KINARMTorqueCMD blocks: %d\n', numel(gt));
for i = 1:numel(gt)
    fprintf('  %s (vis=%s)\n', gt{i}, get_param(gt{i}, 'TagVisibility'));
end

% Check the AddTorques feed inside Poll KINARM
pk = find_system(mdl, 'LookUnderMasks', 'all', 'FollowLinks', 'on', ...
    'Name', 'AddTorques');
for i = 1:numel(pk)
    show_conn_of(pk{i});
end

% Link status of Apply_Loads + its mask values
al = [mdl '/KINARM_Apply_Loads'];
fprintf('Apply_Loads LinkStatus=%s Ref=%s\n', get_param(al, 'LinkStatus'), ...
    get_param(al, 'ReferenceBlock'));
mn = get_param(al, 'MaskNames'); mv = get_param(al, 'MaskValues');
for i = 1:numel(mn)
    fprintf('  mask %s = %s\n', mn{i}, mv{i});
end

bdclose('all');
end

function show_block_conn(mdl, name)
b = [mdl '/' name];
fprintf('--- %s ---\n', name);
fprintf('LinkStatus=%s Ref=%s\n', get_param(b, 'LinkStatus'), ...
    get_param(b, 'ReferenceBlock'));
show_conn_of(b);
end

function show_conn_of(b)
pc = get_param(b, 'PortConnectivity');
fprintf('block %s: %d ports\n', b, numel(pc));
for k = 1:numel(pc)
    p = pc(k);
    src = '';
    dst = '';
    if ~isempty(p.SrcBlock)
        if p.SrcBlock == -1
            src = 'UNCONNECTED-INPUT';
        else
            src = get_param(p.SrcBlock, 'Name');
        end
    end
    if ~isempty(p.DstBlock)
        for d = 1:numel(p.DstBlock)
            dst = [dst get_param(p.DstBlock(d), 'Name') ' ']; %#ok<AGROW>
        end
    elseif isempty(p.SrcBlock)
        dst = 'UNCONNECTED-OUTPUT';
    end
    fprintf('  port %s: src=[%s] dst=[%s]\n', p.Type, src, dst);
end
end
