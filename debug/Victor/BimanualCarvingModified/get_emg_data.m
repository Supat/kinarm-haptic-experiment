function get_emg_data(data_file)
addpath('C:\Users\BKIN TECHNOLOGIES\Documents\Victor\Kinarm_analysis_code')
data = zip_load([data_file '*.zip']);
muscles = {'emg_palmLong_R','emg_biceps_R','emg_pectM_R','emg_brachio_R','emg_extDig_R','emg_triceps_R','emg_deltP_R',...%'emg_extCarpR_R',...
    'emg_palmLong_L','emg_biceps_L','emg_pectM_L','emg_brachio_L','emg_extDig_L','emg_triceps_L','emg_deltP_L'};%,'emg_extCarpR_L'};
for iTrial = 1:length(data.c3d)
    for iMusc = 1:length(muscles)
        results(iTrial).emg(:,iMusc) = data.c3d(iTrial).(muscles{iMusc});
        results(iTrial).femg(:,iMusc) = data.c3d(iTrial).(['f' muscles{iMusc}]);
    end
end
save([data_file '_emg.mat'],'results');
end