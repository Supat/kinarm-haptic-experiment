function add_ep_loads()
% ADD_EP_LOADS  The lab robot is a KINARM End-Point, not an Exoskeleton.
% The Exo loads chain (Forces_to_Torques -> KINARM_Apply_Loads) is ramp-gated
% to zero on an EP robot (its ramp requires robot_type 0/2; Dexterit-E writes
% a1_robot_type = 1 for an EP). This script adds the EP loads chain in
% parallel, Victor-style, so the task works on either robot type:
%   Ball_Engine hand_forces --(branch)--> KINARM_EP_Apply_Loads
%   Poll KINARM EP branch: ZeroEPTorque -> From KINARMEPTorqueCMD
% and retargets the debug taps at the EP scaling/torque tags.
% Rerunnable. Run AFTER build_trial_logic + add_debug_taps.

name = 'ball_impact';
load_system(name);
load_system('KINARM_EP_loads');

%% 1. EP apply block (rerunnable)
epb = [name '/KINARM_EP_Apply_Loads'];
if ~isempty(find_system(name, 'SearchDepth', 1, 'Name', 'KINARM_EP_Apply_Loads'))
    rip_block(epb);
end
add_block('KINARM_EP_loads/KINARM_EP_Apply_Loads', epb, ...
    'Position', [800 560 920 606]);
set_param(epb, 'up_duration', '500', 'down_duration', '500', 'max_force', '30');
add_line(name, 'Ball_Engine/2', 'KINARM_EP_Apply_Loads/1', 'autorouting', 'on');
fprintf('Added KINARM_EP_Apply_Loads (ramps 500/500, force limit 30 N)\n');

%% 2. Poll KINARM EP torque branch (mirror of the Exo swap; link already broken)
pk = [name '/DataLogging/Poll KINARM'];
zt = find_system(pk, 'LookUnderMasks', 'all', 'FollowLinks', 'on', ...
    'SearchDepth', 1, 'BlockType', 'Constant', 'Name', 'ZeroEPTorque');
if ~isempty(zt)
    pos = get_param(zt{1}, 'Position');
    delete_line(pk, 'ZeroEPTorque/1', 'AddTorques/2');
    delete_block(zt{1});
    add_block('built-in/From', [pk '/EPTorqueCMD'], 'GotoTag', ...
        'KINARMEPTorqueCMD', 'Position', pos);
    add_line(pk, 'EPTorqueCMD/1', 'AddTorques/2');
    fprintf('Poll KINARM: ZeroEPTorque replaced with From KINARMEPTorqueCMD\n');
else
    fr = find_system(pk, 'LookUnderMasks', 'all', 'FollowLinks', 'on', ...
        'SearchDepth', 1, 'BlockType', 'From', 'GotoTag', 'KINARMEPTorqueCMD');
    fprintf('ZeroEPTorque already swapped (From count: %d)\n', numel(fr));
end

%% 3. Retarget debug taps at the EP chain (channels/names stay the same)
set_param([name '/DBG_From_Scal1'], 'GotoTag', 'KINARMEPScalingRobot1');
set_param([name '/DBG_From_Scal2'], 'GotoTag', 'KINARMEPScalingRobot2');
set_param([name '/DBG_From_TqCmd'], 'GotoTag', 'KINARMEPTorqueCMD');
fprintf('Debug taps retargeted: scal1/2 -> EP ramp scaling, tq -> EP command\n');

%% 4. Sanity: every consumed tag must have exactly one Goto
need = {'KINARMEPTorqueCMD', 'KINARMEPScalingRobot1', 'KINARMEPScalingRobot2', ...
        'KINARMTorqueCMD'};
for i = 1:numel(need)
    g = find_system(name, 'LookUnderMasks', 'all', 'FollowLinks', 'on', ...
        'BlockType', 'Goto', 'GotoTag', need{i});
    fprintf('Goto %-24s: %d found\n', need{i}, numel(g));
    if numel(g) ~= 1
        error('Expected exactly 1 Goto for %s', need{i});
    end
end

save_system(name);
fprintf('\nSaved %s.mdl with EP loads chain.\nNext: buildxpc(''%s.mdl'')\n', name, name);
end

function rip_block(blk)
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
