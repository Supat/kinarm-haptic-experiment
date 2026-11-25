function get_experiment_data(data_file)

data = zip_load([data_file '*.zip']);

for iTrial = 1:length(data.c3d)
%     results(iTrial).R2Score = data.c3d(iTrial).R2Score;
    results(iTrial).R2Score = data.c3d(iTrial).R2Score_real;
    results(iTrial).smoothnessScore = data.c3d(iTrial).smoothnessScore;
    results(iTrial).HandVelXR = data.c3d(iTrial).HandVelXR;
    results(iTrial).HandVelYR = data.c3d(iTrial).HandVelYR;
    results(iTrial).HandVelXL = data.c3d(iTrial).HandVelXL;
    results(iTrial).HandVelYL = data.c3d(iTrial).HandVelYL;
    results(iTrial).events = data.c3d(iTrial).EVENTS;
end

save([data_file '.mat'],'results');

end