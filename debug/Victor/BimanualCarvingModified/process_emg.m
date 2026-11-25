function process_emg(experiment)

% dat = load([experiment '.mat']);
emgdat = load([experiment '_emg.mat']);
results_emg = emgdat.results;

expdat = load([experiment '.mat']);
results_exp = expdat.results;

emg_mvc = results_emg(1).emg;
femg_mvc = results_emg(1).femg;
sampfreq = 2000;
[b_emglpf, a_emglpf] = butter(2,5*2/sampfreq);
z_emglpf = zeros(max(length(a_emglpf),length(b_emglpf))-1,1);

norm_emg_mvc = abs(emg_mvc);
%Filtering
femg_mvc_extracted = filter(b_emglpf,a_emglpf,norm_emg_mvc - repmat(mean(norm_emg_mvc(1:500,:)),size(norm_emg_mvc,1),1));%,z_emglpf);
% Obtain MVC value
femg_mvc_extracted = femg_mvc_extracted + repmat(mean(norm_emg_mvc(1:500,:)),size(norm_emg_mvc,1),1);
mvc = max(femg_mvc_extracted);

% plot(femg_mvc_extracted(:,2),'b');
% hold on
% plot(femg_mvc(:,2),'r');

mvc_extracted = mvc;
mvc_measured = max(results_emg(1).femg);


for iTrial = 2:length(results_emg)
    
    % Filtering and baseline estimate of initial EMG (waiting phase)
    time_start = results_exp(iTrial).events.TIMES(1);
    start_index = fix((time_start)/0.001 + 1);
    emg = results_emg(iTrial).emg;
    norm_emg = abs(emg);
    femg = filter(b_emglpf,a_emglpf,norm_emg- repmat(mean(norm_emg(1:500,:)),size(norm_emg,1),1));
    femg = femg + repmat(mean(norm_emg(1:500,:)),size(norm_emg,1),1);
    
    femg_initial = femg(1:start_index-1,:);
    femg_initial_measured = results_emg(iTrial).femg(1:start_index-1,:);

    plot(femg_initial(:,3),'b');
    hold on
    plot(femg_initial_measured(:,3),'r');
    
    min_emg = mean(femg_initial);
    min_emg_measured = mean(femg_initial_measured);

    
    % Filtering, baseline removal and normalization of trial EMG
    femg_trial = femg(start_index:end,:);
    %femg = filter(b_emglpf,a_emglpf,abs(emg_trial),z_emglpf);
%     femg_trial = (femg_trial)*diag(1./(mvc));
%     femg_trial = (femg_trial - repmat(min_emg,size(femg_trial,1),1))*diag(1./(mvc-min_emg));
    femg_trial(femg_trial<0) = 0;
    femg_trial_measured = results_emg(iTrial).femg(start_index:end,:);
    
    plot(femg_trial(:,1),'b')
    hold on
    plot(femg_trial_measured(:,1),'r')
    % mvc_block = repmat(mvc,size(femg_trial,1),1);
    % femg_trial_normalized_2 = femg_trial./mvc_block;
    
%     C = [ 0.4473    0.3964    0.1653    0.0355    0.1020    0.5229    0.0261    0.0115
%         0.0517    0.0993    0.1484    0.6898    0.3641         0    0.0003         0
%         0    0.1156    0.0027    0.4693    0.2537    0.0006         0    0.0081
%         0.0281    0.0338    0.4232    0.4431    0.0439    0.1244         0    0.0362
%         0.5959    0.0444    0.1387    0.0688    0.5056    0.0768    0.0286    0.0373
%         0.5523    0.3729    0.0916    0.0230    0.0091    0.0773    0.4871    0.5104
%         0.2321    0.2706    0.0940    0.0305    0.0456    0.0082    0.1862    0.3985
%         0.1892    0.0177    0.1459    0.2290    0.2196    0.2362    0.0772    0.0182
%         0.0285    0.7249    0.0686    0.0500    0.0628    0.2279    0.0889    0.3301
%         0.0250         0         0         0         0    0.0867    0.4422    0.1256
%         0.0285    0.0118    0.0145         0    0.1628    0.3434    0.7008         0
%         0.1715    0.0510         0    0.0856         0    0.5682    0.1402    0.2302
%         0.0052         0    0.0548    0.0259    0.2395    0.0613    0.0407    0.5230
%         0.0226    0.2717    0.8393    0.1750    0.2185    0.0406    0.0678    0.1765
%         0    0.0440    0.0002         0    0.5584         0         0    0.1577
%         0.1200    0.0002    0.0386    0.0810    0.1930    0.3711         0    0.2650];
% % C = eye(16);
%     for i = 1:length(femg_trial)
%         x(:,i) = lsqnonneg(C,femg_trial(i,:)');
%     end
%     
%     count = 0;
%     for i = 1:length(femg)-10000
%         count = count+1;
%         sse = sum(sum((C*x(:,i:i+9999) - femg_trial(i:i+9999,:)').^2));
%         sst = sum(sum((femg_trial(i:i+9999,:) - mean(femg_trial(i:i+9999,:))).^2));
%         R2(count) = 1 - sse/sst;
%     end
%     
% %      sse = sum(sum((C*x - femg_trial').^2));
% %      sst = sum(sum((femg_trial - mean(femg_trial)).^2));
% %      R2 = 1 - sse/sst;
%     
%     R2_measured = dat.results(iTrial).R2Score;
%     
%     results_emg(iTrial).femg = femg_trial;
    
    
end
end



