addpath('C:\Users\BKIN TECHNOLOGIES\Documents\Victor\Kinarm_analysis_code')

% data = zip_load; 

mvc_phase_data = data.c3d(1);
trials = data.c3d(2);

%Raw EMG
emg_mvc = mvc_phase_data.emg_palmLong_R;
femg_mvc_measured = mvc_phase_data.femg_palmLong_R;

%Filtering
sampfreq = 2000;
[b_emglpf, a_emglpf] = butter(2,5*2/sampfreq);
z_emglpf = zeros(max(length(a_emglpf),length(b_emglpf))-1,1);

femg_mvc_extracted = filter(b_emglpf,a_emglpf,abs(emg_mvc),z_emglpf);

% Verify filtering at mvc_phase
figure
plot(emg_mvc);
hold on
plot(femg_mvc_extracted,'r');
plot(femg_mvc_measured,'g');
ylim([-1.25,1.25])

% Obtain MVC value
mvc_value = max(femg_mvc_extracted);

% Verify filtering and normalization in trial;
emg_trial = trials.emg_palmLong_R;
femg_trial_measured = trials.femg_palmLong_R;

femg_trial_extracted = filter(b_emglpf,a_emglpf,abs(emg_trial),z_emglpf);
femg_trial_extracted = femg_trial_extracted/mvc_value;

figure
plot(emg_trial);
hold on
plot(femg_trial_extracted,'r');
plot(femg_trial_measured,'g');
ylim([-0.06,0.06])

% Caluculate baseline value
min = femg_trial_extracted(1);
nsamp = 1;
for iSample = 2:length(femg_trial_extracted)
    nsamp = nsamp + 1;
    min = min + (1/(nsamp + 1))*(femg_trial_extracted(iSample) - min);
end

disp(min)

