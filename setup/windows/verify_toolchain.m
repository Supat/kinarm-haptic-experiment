% verify_toolchain.m  Run inside MATLAB R2013a on the build machine.
% Confirms every piece Kinarm needs for Dexterit-E 3.5 task builds is present.
%
% Usage:  verify_toolchain            (checks MATLAB, toolboxes, compiler)
%         verify_toolchain('C:\path\to\TDK_3.5')   also adds the TDK to the path
function verify_toolchain(tdkDir)
ok = true;
v = ver('MATLAB');
fprintf('MATLAB %s (%s)\n', v.Version, v.Release);
if ~strcmp(v.Release, '(R2013a)'), warning('Expected R2013a. Dexterit-E 3.5 will not load tasks built with other releases.'); ok = false; end
if ~strcmp(computer('arch'), 'win64'), warning('Expected win64. Kinarm requires 64-bit R2013a on Windows.'); ok = false; end

need = {'Simulink','Stateflow','MATLAB Coder','Simulink Coder','xPC Target'};
allvers = ver;
have = {allvers.Name};
for i = 1:numel(need)
    if any(strcmp(have, need{i})), fprintf('  [ok] %s\n', need{i});
    else fprintf('  [MISSING] %s\n', need{i}); ok = false; end
end

% Compiler: mex -setup must have selected Windows SDK 7.1.
% (R2013a reports the name as just 'Microsoft SDK'; the release is in .Version.)
try
    cc = mex.getCompilerConfigurations('C', 'Selected');
    fprintf('C compiler: %s %s\n', cc.Name, cc.Version);
    if isempty(strfind(cc.Name, 'SDK')) || isempty(strfind(cc.Version, '7.1'))
        warning('Selected compiler is not Windows SDK 7.1. Run: mex -setup'); ok = false;
    end
catch
    warning('No C compiler selected. Run: mex -setup'); ok = false;
end

% Prove the compiler actually works: build a sample MEX in a temp folder.
try
    tdir = fullfile(tempdir, 'mexsmoketest');
    if ~exist(tdir, 'dir'), mkdir(tdir); end
    copyfile(fullfile(matlabroot,'extern','examples','mex','yprime.c'), tdir);
    olddir = cd(tdir);
    mex('-largeArrayDims', 'yprime.c');
    cd(olddir);
    if exist(fullfile(tdir, ['yprime.' mexext]), 'file')
        fprintf('  [ok] test MEX compile (yprime.c -> %s)\n', mexext);
    else
        warning('Test MEX compile produced no output.'); ok = false;
    end
catch e
    warning('Test MEX compile failed: %s', e.message); ok = false;
end

if nargin >= 1
    if exist(tdkDir, 'dir')
        addpath(genpath(tdkDir)); savepath;
        fprintf('TDK added to path: %s\n', tdkDir);
        if exist('KINARM_general', 'file') ~= 4
            warning('KINARM_general library not found under %s. Check this is the Dexterit-E 3.5 TDK.', tdkDir);
        end
    else
        warning('TDK directory not found: %s', tdkDir); ok = false;
    end
end

if ok, disp('Toolchain looks complete. Next: open the Kinarm Basic Task and press Ctrl+B to build a .dlm.');
else disp('Toolchain incomplete; see warnings above.'); end
end
