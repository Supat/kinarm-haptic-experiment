function force_filter_design()

sampfreq = 2000;
[b_emglpf, a_emglpf] = butter(2,5*2/sampfreq);

end