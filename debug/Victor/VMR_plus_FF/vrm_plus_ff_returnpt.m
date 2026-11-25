function pt=vrm_plus_ff_returnpt
pt = [];
pt(1).blockname = 'DataLogging/analog_inputs';
pt(1).paramname = 'Value';
pt(1).class     = 'scalar';
pt(1).nrows     = 1;
pt(1).ncols     = 1;
pt(1).subsource = 'SS_DOUBLE';
pt(1).ndims     = '2';
pt(1).size      = '[]';
pt(getlenPT) = pt(1);

pt(2).blockname = 'DataLogging/custom_version';
pt(2).paramname = 'Value';
pt(2).class     = 'scalar';
pt(2).nrows     = 1;
pt(2).ncols     = 1;
pt(2).subsource = 'SS_UINT32';
pt(2).ndims     = '2';
pt(2).size      = '[]';

pt(3).blockname = 'GUI Control/Block Definitions';
pt(3).paramname = 'Value';
pt(3).class     = 'col-mat';
pt(3).nrows     = 50;
pt(3).ncols     = 500;
pt(3).subsource = 'SS_DOUBLE';
pt(3).ndims     = '2';
pt(3).size      = '[]';

pt(4).blockname = 'GUI Control/Block Sequence';
pt(4).paramname = 'Value';
pt(4).class     = 'col-mat';
pt(4).nrows     = 1000;
pt(4).ncols     = 2;
pt(4).subsource = 'SS_DOUBLE';
pt(4).ndims     = '2';
pt(4).size      = '[]';

pt(5).blockname = 'GUI Control/Constant';
pt(5).paramname = 'Value';
pt(5).class     = 'scalar';
pt(5).nrows     = 1;
pt(5).ncols     = 1;
pt(5).subsource = 'SS_DOUBLE';
pt(5).ndims     = '2';
pt(5).size      = '[]';

pt(6).blockname = 'GUI Control/Display Size (m)';
pt(6).paramname = 'Value';
pt(6).class     = 'vector';
pt(6).nrows     = 1;
pt(6).ncols     = 2;
pt(6).subsource = 'SS_DOUBLE';
pt(6).ndims     = '2';
pt(6).size      = '[]';

pt(7).blockname = 'GUI Control/Display Size (pels)';
pt(7).paramname = 'Value';
pt(7).class     = 'vector';
pt(7).nrows     = 1;
pt(7).ncols     = 2;
pt(7).subsource = 'SS_DOUBLE';
pt(7).ndims     = '2';
pt(7).size      = '[]';

pt(8).blockname = 'GUI Control/Docking Points';
pt(8).paramname = 'Value';
pt(8).class     = 'col-mat';
pt(8).nrows     = 5;
pt(8).ncols     = 2;
pt(8).subsource = 'SS_DOUBLE';
pt(8).ndims     = '2';
pt(8).size      = '[]';

pt(9).blockname = 'GUI Control/EL Camera Angle';
pt(9).paramname = 'Value';
pt(9).class     = 'vector';
pt(9).nrows     = 1;
pt(9).ncols     = 2;
pt(9).subsource = 'SS_DOUBLE';
pt(9).ndims     = '2';
pt(9).size      = '[]';

pt(10).blockname = 'GUI Control/EL Camera Focal Length';
pt(10).paramname = 'Value';
pt(10).class     = 'scalar';
pt(10).nrows     = 1;
pt(10).ncols     = 1;
pt(10).subsource = 'SS_DOUBLE';
pt(10).ndims     = '2';
pt(10).size      = '[]';

pt(11).blockname = 'GUI Control/EL Camera Position';
pt(11).paramname = 'Value';
pt(11).class     = 'vector';
pt(11).nrows     = 1;
pt(11).ncols     = 3;
pt(11).subsource = 'SS_DOUBLE';
pt(11).ndims     = '2';
pt(11).size      = '[]';

pt(12).blockname = 'GUI Control/EL Tracking Available';
pt(12).paramname = 'Value';
pt(12).class     = 'scalar';
pt(12).nrows     = 1;
pt(12).ncols     = 1;
pt(12).subsource = 'SS_DOUBLE';
pt(12).ndims     = '2';
pt(12).size      = '[]';

pt(13).blockname = 'GUI Control/Library Patch Version';
pt(13).paramname = 'Value';
pt(13).class     = 'scalar';
pt(13).nrows     = 1;
pt(13).ncols     = 1;
pt(13).subsource = 'SS_DOUBLE';
pt(13).ndims     = '2';
pt(13).size      = '[]';

pt(14).blockname = 'GUI Control/Library Version';
pt(14).paramname = 'Value';
pt(14).class     = 'scalar';
pt(14).nrows     = 1;
pt(14).ncols     = 1;
pt(14).subsource = 'SS_DOUBLE';
pt(14).ndims     = '2';
pt(14).size      = '[]';

pt(15).blockname = 'GUI Control/Load Table';
pt(15).paramname = 'Value';
pt(15).class     = 'col-mat';
pt(15).nrows     = 20;
pt(15).ncols     = 20;
pt(15).subsource = 'SS_DOUBLE';
pt(15).ndims     = '2';
pt(15).size      = '[]';

pt(16).blockname = 'GUI Control/Next Block';
pt(16).paramname = 'Value';
pt(16).class     = 'scalar';
pt(16).nrows     = 1;
pt(16).ncols     = 1;
pt(16).subsource = 'SS_DOUBLE';
pt(16).ndims     = '2';
pt(16).size      = '[]';

pt(17).blockname = 'GUI Control/Pause Type';
pt(17).paramname = 'Value';
pt(17).class     = 'scalar';
pt(17).nrows     = 1;
pt(17).ncols     = 1;
pt(17).subsource = 'SS_DOUBLE';
pt(17).ndims     = '2';
pt(17).size      = '[]';

pt(18).blockname = 'GUI Control/Repeat_Trial_Flag';
pt(18).paramname = 'Value';
pt(18).class     = 'scalar';
pt(18).nrows     = 1;
pt(18).ncols     = 1;
pt(18).subsource = 'SS_DOUBLE';
pt(18).ndims     = '2';
pt(18).size      = '[]';

pt(19).blockname = 'GUI Control/Run Task Clock Flag';
pt(19).paramname = 'Value';
pt(19).class     = 'scalar';
pt(19).nrows     = 1;
pt(19).ncols     = 1;
pt(19).subsource = 'SS_DOUBLE';
pt(19).ndims     = '2';
pt(19).size      = '[]';

pt(20).blockname = 'GUI Control/Seed';
pt(20).paramname = 'Value';
pt(20).class     = 'scalar';
pt(20).nrows     = 1;
pt(20).ncols     = 1;
pt(20).subsource = 'SS_DOUBLE';
pt(20).ndims     = '2';
pt(20).size      = '[]';

pt(21).blockname = 'GUI Control/Subject Height';
pt(21).paramname = 'Value';
pt(21).class     = 'scalar';
pt(21).nrows     = 1;
pt(21).ncols     = 1;
pt(21).subsource = 'SS_DOUBLE';
pt(21).ndims     = '2';
pt(21).size      = '[]';

pt(22).blockname = 'GUI Control/Subject Weight';
pt(22).paramname = 'Value';
pt(22).class     = 'scalar';
pt(22).nrows     = 1;
pt(22).ncols     = 1;
pt(22).subsource = 'SS_DOUBLE';
pt(22).ndims     = '2';
pt(22).size      = '[]';

pt(23).blockname = 'GUI Control/TP Table';
pt(23).paramname = 'Value';
pt(23).class     = 'col-mat';
pt(23).nrows     = 100;
pt(23).ncols     = 50;
pt(23).subsource = 'SS_DOUBLE';
pt(23).ndims     = '2';
pt(23).size      = '[]';

pt(24).blockname = 'GUI Control/Target Labels';
pt(24).paramname = 'Value';
pt(24).class     = 'col-mat';
pt(24).nrows     = 100;
pt(24).ncols     = 50;
pt(24).subsource = 'SS_DOUBLE';
pt(24).ndims     = '2';
pt(24).size      = '[]';

pt(25).blockname = 'GUI Control/Target Table';
pt(25).paramname = 'Value';
pt(25).class     = 'col-mat';
pt(25).nrows     = 32;
pt(25).ncols     = 25;
pt(25).subsource = 'SS_DOUBLE';
pt(25).ndims     = '2';
pt(25).size      = '[]';

pt(26).blockname = 'GUI Control/Task Version';
pt(26).paramname = 'Value';
pt(26).class     = 'scalar';
pt(26).nrows     = 1;
pt(26).ncols     = 1;
pt(26).subsource = 'SS_DOUBLE';
pt(26).ndims     = '2';
pt(26).size      = '[]';

pt(27).blockname = 'GUI Control/Task wide param';
pt(27).paramname = 'Value';
pt(27).class     = 'vector';
pt(27).nrows     = 50;
pt(27).ncols     = 1;
pt(27).subsource = 'SS_DOUBLE';
pt(27).ndims     = '2';
pt(27).size      = '[]';

pt(28).blockname = 'GUI Control/Use Repeat Trial Flag';
pt(28).paramname = 'Value';
pt(28).class     = 'scalar';
pt(28).nrows     = 1;
pt(28).ncols     = 1;
pt(28).subsource = 'SS_DOUBLE';
pt(28).ndims     = '2';
pt(28).size      = '[]';

pt(29).blockname = 'GUI Control/Use Task Protocol Block Sequence Flag';
pt(29).paramname = 'Value';
pt(29).class     = 'scalar';
pt(29).nrows     = 1;
pt(29).ncols     = 1;
pt(29).subsource = 'SS_DOUBLE';
pt(29).ndims     = '2';
pt(29).size      = '[]';

pt(30).blockname = 'GUI Control/dlm build time';
pt(30).paramname = 'Value';
pt(30).class     = 'scalar';
pt(30).nrows     = 1;
pt(30).ncols     = 1;
pt(30).subsource = 'SS_DOUBLE';
pt(30).ndims     = '2';
pt(30).size      = '[]';

pt(31).blockname = 'GUI Control/xPC Version';
pt(31).paramname = 'Value';
pt(31).class     = 'scalar';
pt(31).nrows     = 1;
pt(31).ncols     = 1;
pt(31).subsource = 'SS_DOUBLE';
pt(31).ndims     = '2';
pt(31).size      = '[]';

pt(32).blockname = 'Hand_Feedback/Dom_VCODE';
pt(32).paramname = 'Value';
pt(32).class     = 'vector';
pt(32).nrows     = 1;
pt(32).ncols     = 70;
pt(32).subsource = 'SS_DOUBLE';
pt(32).ndims     = '2';
pt(32).size      = '[]';

pt(33).blockname = 'Hand_Feedback/block_settings';
pt(33).paramname = 'Value';
pt(33).class     = 'scalar';
pt(33).nrows     = 1;
pt(33).ncols     = 1;
pt(33).subsource = 'SS_DOUBLE';
pt(33).ndims     = '2';
pt(33).size      = '[]';

pt(34).blockname = 'Hand_Feedback/feedback_status';
pt(34).paramname = 'Value';
pt(34).class     = 'scalar';
pt(34).nrows     = 1;
pt(34).ncols     = 1;
pt(34).subsource = 'SS_DOUBLE';
pt(34).ndims     = '2';
pt(34).size      = '[]';

pt(35).blockname = 'Hand_Feedback/non-Dom_VCODE';
pt(35).paramname = 'Value';
pt(35).class     = 'vector';
pt(35).nrows     = 1;
pt(35).ncols     = 70;
pt(35).subsource = 'SS_DOUBLE';
pt(35).ndims     = '2';
pt(35).size      = '[]';

pt(36).blockname = 'KINARM_EP_Apply_Loads/Force Limit';
pt(36).paramname = 'Value';
pt(36).class     = 'scalar';
pt(36).nrows     = 1;
pt(36).ncols     = 1;
pt(36).subsource = 'SS_DOUBLE';
pt(36).ndims     = '2';
pt(36).size      = '[]';

pt(37).blockname = 'KINARM_EP_Apply_Loads/down_duration(ms)';
pt(37).paramname = 'Value';
pt(37).class     = 'scalar';
pt(37).nrows     = 1;
pt(37).ncols     = 1;
pt(37).subsource = 'SS_DOUBLE';
pt(37).ndims     = '2';
pt(37).size      = '[]';

pt(38).blockname = 'KINARM_EP_Apply_Loads/up_duration(ms)';
pt(38).paramname = 'Value';
pt(38).class     = 'scalar';
pt(38).nrows     = 1;
pt(38).ncols     = 1;
pt(38).subsource = 'SS_DOUBLE';
pt(38).ndims     = '2';
pt(38).size      = '[]';

pt(39).blockname = 'KINARM_HandFeedbackInTarget/Selected States';
pt(39).paramname = 'Value';
pt(39).class     = 'scalar';
pt(39).nrows     = 1;
pt(39).ncols     = 1;
pt(39).subsource = 'SS_DOUBLE';
pt(39).ndims     = '2';
pt(39).size      = '[]';

pt(40).blockname = 'KINARM_HandFeedbackInTarget/Target_Type';
pt(40).paramname = 'Value';
pt(40).class     = 'scalar';
pt(40).nrows     = 1;
pt(40).ncols     = 1;
pt(40).subsource = 'SS_DOUBLE';
pt(40).ndims     = '2';
pt(40).size      = '[]';

pt(41).blockname = 'KINARM_HandFeedbackInTarget/Use_Dominant_Hand?';
pt(41).paramname = 'Value';
pt(41).class     = 'scalar';
pt(41).nrows     = 1;
pt(41).ncols     = 1;
pt(41).subsource = 'SS_DOUBLE';
pt(41).ndims     = '2';
pt(41).size      = '[]';

pt(42).blockname = 'KINARM_HandFeedbackInTarget/attribcol1';
pt(42).paramname = 'Value';
pt(42).class     = 'scalar';
pt(42).nrows     = 1;
pt(42).ncols     = 1;
pt(42).subsource = 'SS_DOUBLE';
pt(42).ndims     = '2';
pt(42).size      = '[]';

pt(43).blockname = 'KINARM_HandFeedbackInTarget/attribcol2';
pt(43).paramname = 'Value';
pt(43).class     = 'scalar';
pt(43).nrows     = 1;
pt(43).ncols     = 1;
pt(43).subsource = 'SS_DOUBLE';
pt(43).ndims     = '2';
pt(43).size      = '[]';

pt(44).blockname = 'KINARM_HandFeedbackInTarget/attribcol3';
pt(44).paramname = 'Value';
pt(44).class     = 'scalar';
pt(44).nrows     = 1;
pt(44).ncols     = 1;
pt(44).subsource = 'SS_DOUBLE';
pt(44).ndims     = '2';
pt(44).size      = '[]';

pt(45).blockname = 'KINARM_HandFeedbackInTarget/attribcol4';
pt(45).paramname = 'Value';
pt(45).class     = 'scalar';
pt(45).nrows     = 1;
pt(45).ncols     = 1;
pt(45).subsource = 'SS_DOUBLE';
pt(45).ndims     = '2';
pt(45).size      = '[]';

pt(46).blockname = 'KINARM_HandFeedbackInTarget/num_states';
pt(46).paramname = 'Value';
pt(46).class     = 'scalar';
pt(46).nrows     = 1;
pt(46).ncols     = 1;
pt(46).subsource = 'SS_DOUBLE';
pt(46).ndims     = '2';
pt(46).size      = '[]';

pt(47).blockname = 'Process_Video_CMD/GUI_VCODE';
pt(47).paramname = 'Value';
pt(47).class     = 'col-mat';
pt(47).nrows     = 9;
pt(47).ncols     = 70;
pt(47).subsource = 'SS_DOUBLE';
pt(47).ndims     = '2';
pt(47).size      = '[]';

pt(48).blockname = 'Process_Video_CMD/VCODE_Buffer';
pt(48).paramname = 'Gain';
pt(48).class     = 'scalar';
pt(48).nrows     = 1;
pt(48).ncols     = 1;
pt(48).subsource = 'SS_INT32';
pt(48).ndims     = '2';
pt(48).size      = '[]';

pt(49).blockname = 'Process_Video_CMD/Receive';
pt(49).paramname = 'P1';
pt(49).class     = 'vector';
pt(49).nrows     = 1;
pt(49).ncols     = 11;
pt(49).subsource = 'SS_DOUBLE';
pt(49).ndims     = '2';
pt(49).size      = '[]';

pt(50).blockname = 'Process_Video_CMD/Receive';
pt(50).paramname = 'P2';
pt(50).class     = 'scalar';
pt(50).nrows     = 1;
pt(50).ncols     = 1;
pt(50).subsource = 'SS_DOUBLE';
pt(50).ndims     = '2';
pt(50).size      = '[]';

pt(51).blockname = 'Process_Video_CMD/Receive';
pt(51).paramname = 'P3';
pt(51).class     = 'scalar';
pt(51).nrows     = 1;
pt(51).ncols     = 1;
pt(51).subsource = 'SS_DOUBLE';
pt(51).ndims     = '2';
pt(51).size      = '[]';

pt(52).blockname = 'Process_Video_CMD/Receive';
pt(52).paramname = 'P4';
pt(52).class     = 'scalar';
pt(52).nrows     = 1;
pt(52).ncols     = 1;
pt(52).subsource = 'SS_DOUBLE';
pt(52).ndims     = '2';
pt(52).size      = '[]';

pt(53).blockname = 'Process_Video_CMD/Receive';
pt(53).paramname = 'P5';
pt(53).class     = 'scalar';
pt(53).nrows     = 1;
pt(53).ncols     = 1;
pt(53).subsource = 'SS_DOUBLE';
pt(53).ndims     = '2';
pt(53).size      = '[]';

pt(54).blockname = 'Process_Video_CMD/Send';
pt(54).paramname = 'P1';
pt(54).class     = 'vector';
pt(54).nrows     = 1;
pt(54).ncols     = 11;
pt(54).subsource = 'SS_DOUBLE';
pt(54).ndims     = '2';
pt(54).size      = '[]';

pt(55).blockname = 'Process_Video_CMD/Send';
pt(55).paramname = 'P2';
pt(55).class     = 'scalar';
pt(55).nrows     = 1;
pt(55).ncols     = 1;
pt(55).subsource = 'SS_DOUBLE';
pt(55).ndims     = '2';
pt(55).size      = '[]';

pt(56).blockname = 'Process_Video_CMD/Send';
pt(56).paramname = 'P3';
pt(56).class     = 'scalar';
pt(56).nrows     = 1;
pt(56).ncols     = 1;
pt(56).subsource = 'SS_DOUBLE';
pt(56).ndims     = '2';
pt(56).size      = '[]';

pt(57).blockname = 'Process_Video_CMD/Send';
pt(57).paramname = 'P4';
pt(57).class     = 'scalar';
pt(57).nrows     = 1;
pt(57).ncols     = 1;
pt(57).subsource = 'SS_DOUBLE';
pt(57).ndims     = '2';
pt(57).size      = '[]';

pt(58).blockname = 'Process_Video_CMD/Send';
pt(58).paramname = 'P5';
pt(58).class     = 'scalar';
pt(58).nrows     = 1;
pt(58).ncols     = 1;
pt(58).subsource = 'SS_DOUBLE';
pt(58).ndims     = '2';
pt(58).size      = '[]';

pt(59).blockname = 'Show_Target/Opacity';
pt(59).paramname = 'Value';
pt(59).class     = 'scalar';
pt(59).nrows     = 1;
pt(59).ncols     = 1;
pt(59).subsource = 'SS_DOUBLE';
pt(59).ndims     = '2';
pt(59).size      = '[]';

pt(60).blockname = 'Show_Target/Target_Display';
pt(60).paramname = 'Value';
pt(60).class     = 'scalar';
pt(60).nrows     = 1;
pt(60).ncols     = 1;
pt(60).subsource = 'SS_DOUBLE';
pt(60).ndims     = '2';
pt(60).size      = '[]';

pt(61).blockname = 'Show_Target/Target_Type';
pt(61).paramname = 'Value';
pt(61).class     = 'scalar';
pt(61).nrows     = 1;
pt(61).ncols     = 1;
pt(61).subsource = 'SS_DOUBLE';
pt(61).ndims     = '2';
pt(61).size      = '[]';

pt(62).blockname = 'Show_Target/num_states';
pt(62).paramname = 'Value';
pt(62).class     = 'scalar';
pt(62).nrows     = 1;
pt(62).ncols     = 1;
pt(62).subsource = 'SS_DOUBLE';
pt(62).ndims     = '2';
pt(62).size      = '[]';

pt(63).blockname = 'Show_Target/padder';
pt(63).paramname = 'Value';
pt(63).class     = 'col-mat';
pt(63).nrows     = 5;
pt(63).ncols     = 7;
pt(63).subsource = 'SS_DOUBLE';
pt(63).ndims     = '2';
pt(63).size      = '[]';

pt(64).blockname = 'Show_Target/state1_indices';
pt(64).paramname = 'Value';
pt(64).class     = 'vector';
pt(64).nrows     = 1;
pt(64).ncols     = 4;
pt(64).subsource = 'SS_DOUBLE';
pt(64).ndims     = '2';
pt(64).size      = '[]';

pt(65).blockname = 'Show_Target/state2_indices';
pt(65).paramname = 'Value';
pt(65).class     = 'vector';
pt(65).nrows     = 1;
pt(65).ncols     = 4;
pt(65).subsource = 'SS_DOUBLE';
pt(65).ndims     = '2';
pt(65).size      = '[]';

pt(66).blockname = 'Show_Target/state3_indices';
pt(66).paramname = 'Value';
pt(66).class     = 'vector';
pt(66).nrows     = 1;
pt(66).ncols     = 4;
pt(66).subsource = 'SS_DOUBLE';
pt(66).ndims     = '2';
pt(66).size      = '[]';

pt(67).blockname = 'Show_Target/state4_indices';
pt(67).paramname = 'Value';
pt(67).class     = 'vector';
pt(67).nrows     = 1;
pt(67).ncols     = 4;
pt(67).subsource = 'SS_DOUBLE';
pt(67).ndims     = '2';
pt(67).size      = '[]';

pt(68).blockname = 'Show_Target/state5_indices';
pt(68).paramname = 'Value';
pt(68).class     = 'vector';
pt(68).nrows     = 1;
pt(68).ncols     = 4;
pt(68).subsource = 'SS_DOUBLE';
pt(68).ndims     = '2';
pt(68).size      = '[]';

pt(69).blockname = 'Show_Target/xpos_index';
pt(69).paramname = 'Value';
pt(69).class     = 'scalar';
pt(69).nrows     = 1;
pt(69).ncols     = 1;
pt(69).subsource = 'SS_DOUBLE';
pt(69).ndims     = '2';
pt(69).size      = '[]';

pt(70).blockname = 'Show_Target/ypos_index';
pt(70).paramname = 'Value';
pt(70).class     = 'scalar';
pt(70).nrows     = 1;
pt(70).ncols     = 1;
pt(70).subsource = 'SS_DOUBLE';
pt(70).ndims     = '2';
pt(70).size      = '[]';

pt(71).blockname = 'Show_Target1/Opacity';
pt(71).paramname = 'Value';
pt(71).class     = 'scalar';
pt(71).nrows     = 1;
pt(71).ncols     = 1;
pt(71).subsource = 'SS_DOUBLE';
pt(71).ndims     = '2';
pt(71).size      = '[]';

pt(72).blockname = 'Show_Target1/Target_Display';
pt(72).paramname = 'Value';
pt(72).class     = 'scalar';
pt(72).nrows     = 1;
pt(72).ncols     = 1;
pt(72).subsource = 'SS_DOUBLE';
pt(72).ndims     = '2';
pt(72).size      = '[]';

pt(73).blockname = 'Show_Target1/Target_Type';
pt(73).paramname = 'Value';
pt(73).class     = 'scalar';
pt(73).nrows     = 1;
pt(73).ncols     = 1;
pt(73).subsource = 'SS_DOUBLE';
pt(73).ndims     = '2';
pt(73).size      = '[]';

pt(74).blockname = 'Show_Target1/num_states';
pt(74).paramname = 'Value';
pt(74).class     = 'scalar';
pt(74).nrows     = 1;
pt(74).ncols     = 1;
pt(74).subsource = 'SS_DOUBLE';
pt(74).ndims     = '2';
pt(74).size      = '[]';

pt(75).blockname = 'Show_Target1/padder';
pt(75).paramname = 'Value';
pt(75).class     = 'col-mat';
pt(75).nrows     = 5;
pt(75).ncols     = 7;
pt(75).subsource = 'SS_DOUBLE';
pt(75).ndims     = '2';
pt(75).size      = '[]';

pt(76).blockname = 'Show_Target1/state1_indices';
pt(76).paramname = 'Value';
pt(76).class     = 'vector';
pt(76).nrows     = 1;
pt(76).ncols     = 4;
pt(76).subsource = 'SS_DOUBLE';
pt(76).ndims     = '2';
pt(76).size      = '[]';

pt(77).blockname = 'Show_Target1/state2_indices';
pt(77).paramname = 'Value';
pt(77).class     = 'vector';
pt(77).nrows     = 1;
pt(77).ncols     = 4;
pt(77).subsource = 'SS_DOUBLE';
pt(77).ndims     = '2';
pt(77).size      = '[]';

pt(78).blockname = 'Show_Target1/state3_indices';
pt(78).paramname = 'Value';
pt(78).class     = 'vector';
pt(78).nrows     = 1;
pt(78).ncols     = 4;
pt(78).subsource = 'SS_DOUBLE';
pt(78).ndims     = '2';
pt(78).size      = '[]';

pt(79).blockname = 'Show_Target1/state4_indices';
pt(79).paramname = 'Value';
pt(79).class     = 'vector';
pt(79).nrows     = 1;
pt(79).ncols     = 4;
pt(79).subsource = 'SS_DOUBLE';
pt(79).ndims     = '2';
pt(79).size      = '[]';

pt(80).blockname = 'Show_Target1/state5_indices';
pt(80).paramname = 'Value';
pt(80).class     = 'vector';
pt(80).nrows     = 1;
pt(80).ncols     = 4;
pt(80).subsource = 'SS_DOUBLE';
pt(80).ndims     = '2';
pt(80).size      = '[]';

pt(81).blockname = 'Show_Target1/xpos_index';
pt(81).paramname = 'Value';
pt(81).class     = 'scalar';
pt(81).nrows     = 1;
pt(81).ncols     = 1;
pt(81).subsource = 'SS_DOUBLE';
pt(81).ndims     = '2';
pt(81).size      = '[]';

pt(82).blockname = 'Show_Target1/ypos_index';
pt(82).paramname = 'Value';
pt(82).class     = 'scalar';
pt(82).nrows     = 1;
pt(82).ncols     = 1;
pt(82).subsource = 'SS_DOUBLE';
pt(82).ndims     = '2';
pt(82).size      = '[]';

pt(83).blockname = 'Visual_Rotation/Memory';
pt(83).paramname = 'X0';
pt(83).class     = 'scalar';
pt(83).nrows     = 1;
pt(83).ncols     = 1;
pt(83).subsource = 'SS_DOUBLE';
pt(83).ndims     = '2';
pt(83).size      = '[]';

pt(84).blockname = 'Visual_Rotation/Memory2';
pt(84).paramname = 'X0';
pt(84).class     = 'scalar';
pt(84).nrows     = 1;
pt(84).ncols     = 1;
pt(84).subsource = 'SS_BOOLEAN';
pt(84).ndims     = '2';
pt(84).size      = '[]';

pt(85).blockname = 'DataLogging/Create Analog Inputs Subsystem/Not Logging Analog Inputs';
pt(85).paramname = 'Value';
pt(85).class     = 'scalar';
pt(85).nrows     = 1;
pt(85).ncols     = 1;
pt(85).subsource = 'SS_DOUBLE';
pt(85).ndims     = '2';
pt(85).size      = '[]';

pt(86).blockname = 'DataLogging/Create Event Codes Subsystem/Not Logging Event Codes';
pt(86).paramname = 'Value';
pt(86).class     = 'scalar';
pt(86).nrows     = 1;
pt(86).ncols     = 1;
pt(86).subsource = 'SS_DOUBLE';
pt(86).ndims     = '2';
pt(86).size      = '[]';

pt(87).blockname = 'DataLogging/Keep alive/const';
pt(87).paramname = 'Value';
pt(87).class     = 'vector';
pt(87).nrows     = 1;
pt(87).ncols     = 5;
pt(87).subsource = 'SS_DOUBLE';
pt(87).ndims     = '2';
pt(87).size      = '[]';

pt(88).blockname = 'DataLogging/Keep alive/Send';
pt(88).paramname = 'P1';
pt(88).class     = 'vector';
pt(88).nrows     = 1;
pt(88).ncols     = 11;
pt(88).subsource = 'SS_DOUBLE';
pt(88).ndims     = '2';
pt(88).size      = '[]';

pt(89).blockname = 'DataLogging/Keep alive/Send';
pt(89).paramname = 'P2';
pt(89).class     = 'scalar';
pt(89).nrows     = 1;
pt(89).ncols     = 1;
pt(89).subsource = 'SS_DOUBLE';
pt(89).ndims     = '2';
pt(89).size      = '[]';

pt(90).blockname = 'DataLogging/Keep alive/Send';
pt(90).paramname = 'P3';
pt(90).class     = 'scalar';
pt(90).nrows     = 1;
pt(90).ncols     = 1;
pt(90).subsource = 'SS_DOUBLE';
pt(90).ndims     = '2';
pt(90).size      = '[]';

pt(91).blockname = 'DataLogging/Keep alive/Send';
pt(91).paramname = 'P4';
pt(91).class     = 'scalar';
pt(91).nrows     = 1;
pt(91).ncols     = 1;
pt(91).subsource = 'SS_DOUBLE';
pt(91).ndims     = '2';
pt(91).size      = '[]';

pt(92).blockname = 'DataLogging/Keep alive/Send';
pt(92).paramname = 'P5';
pt(92).class     = 'scalar';
pt(92).nrows     = 1;
pt(92).ncols     = 1;
pt(92).subsource = 'SS_DOUBLE';
pt(92).ndims     = '2';
pt(92).size      = '[]';

pt(93).blockname = 'DataLogging/Network Transfer Subsystem/max_packet_id';
pt(93).paramname = 'Value';
pt(93).class     = 'scalar';
pt(93).nrows     = 1;
pt(93).ncols     = 1;
pt(93).subsource = 'SS_UINT32';
pt(93).ndims     = '2';
pt(93).size      = '[]';

pt(94).blockname = 'DataLogging/Network Transfer Subsystem/Receive';
pt(94).paramname = 'P1';
pt(94).class     = 'vector';
pt(94).nrows     = 1;
pt(94).ncols     = 11;
pt(94).subsource = 'SS_DOUBLE';
pt(94).ndims     = '2';
pt(94).size      = '[]';

pt(95).blockname = 'DataLogging/Network Transfer Subsystem/Receive';
pt(95).paramname = 'P2';
pt(95).class     = 'scalar';
pt(95).nrows     = 1;
pt(95).ncols     = 1;
pt(95).subsource = 'SS_DOUBLE';
pt(95).ndims     = '2';
pt(95).size      = '[]';

pt(96).blockname = 'DataLogging/Network Transfer Subsystem/Receive';
pt(96).paramname = 'P3';
pt(96).class     = 'scalar';
pt(96).nrows     = 1;
pt(96).ncols     = 1;
pt(96).subsource = 'SS_DOUBLE';
pt(96).ndims     = '2';
pt(96).size      = '[]';

pt(97).blockname = 'DataLogging/Network Transfer Subsystem/Receive';
pt(97).paramname = 'P4';
pt(97).class     = 'scalar';
pt(97).nrows     = 1;
pt(97).ncols     = 1;
pt(97).subsource = 'SS_DOUBLE';
pt(97).ndims     = '2';
pt(97).size      = '[]';

pt(98).blockname = 'DataLogging/Network Transfer Subsystem/Receive';
pt(98).paramname = 'P5';
pt(98).class     = 'scalar';
pt(98).nrows     = 1;
pt(98).ncols     = 1;
pt(98).subsource = 'SS_DOUBLE';
pt(98).ndims     = '2';
pt(98).size      = '[]';

pt(99).blockname = 'DataLogging/Poll Force Plates/ain_offset1';
pt(99).paramname = 'Value';
pt(99).class     = 'scalar';
pt(99).nrows     = 1;
pt(99).ncols     = 1;
pt(99).subsource = 'SS_DOUBLE';
pt(99).ndims     = '2';
pt(99).size      = '[]';

pt(100).blockname = 'DataLogging/Poll Force Plates/ain_offset2';
pt(100).paramname = 'Value';
pt(100).class     = 'scalar';
pt(100).nrows     = 1;
pt(100).ncols     = 1;
pt(100).subsource = 'SS_DOUBLE';
pt(100).ndims     = '2';
pt(100).size      = '[]';

pt(101).blockname = 'DataLogging/Poll Force Plates/ain_slope1';
pt(101).paramname = 'Value';
pt(101).class     = 'scalar';
pt(101).nrows     = 1;
pt(101).ncols     = 1;
pt(101).subsource = 'SS_DOUBLE';
pt(101).ndims     = '2';
pt(101).size      = '[]';

pt(102).blockname = 'DataLogging/Poll Force Plates/ain_slope2';
pt(102).paramname = 'Value';
pt(102).class     = 'scalar';
pt(102).nrows     = 1;
pt(102).ncols     = 1;
pt(102).subsource = 'SS_DOUBLE';
pt(102).ndims     = '2';
pt(102).size      = '[]';

pt(103).blockname = 'DataLogging/Poll Force Plates/calibration_matrix1';
pt(103).paramname = 'Value';
pt(103).class     = 'col-mat';
pt(103).nrows     = 6;
pt(103).ncols     = 8;
pt(103).subsource = 'SS_DOUBLE';
pt(103).ndims     = '2';
pt(103).size      = '[]';

pt(104).blockname = 'DataLogging/Poll Force Plates/calibration_matrix2';
pt(104).paramname = 'Value';
pt(104).class     = 'col-mat';
pt(104).nrows     = 6;
pt(104).ncols     = 8;
pt(104).subsource = 'SS_DOUBLE';
pt(104).ndims     = '2';
pt(104).size      = '[]';

pt(105).blockname = 'DataLogging/Poll Force Plates/enable_plate1';
pt(105).paramname = 'Value';
pt(105).class     = 'scalar';
pt(105).nrows     = 1;
pt(105).ncols     = 1;
pt(105).subsource = 'SS_DOUBLE';
pt(105).ndims     = '2';
pt(105).size      = '[]';

pt(106).blockname = 'DataLogging/Poll Force Plates/enable_plate2';
pt(106).paramname = 'Value';
pt(106).class     = 'scalar';
pt(106).nrows     = 1;
pt(106).ncols     = 1;
pt(106).subsource = 'SS_DOUBLE';
pt(106).ndims     = '2';
pt(106).size      = '[]';

pt(107).blockname = 'DataLogging/Poll Force Plates/gain';
pt(107).paramname = 'Value';
pt(107).class     = 'scalar';
pt(107).nrows     = 1;
pt(107).ncols     = 1;
pt(107).subsource = 'SS_DOUBLE';
pt(107).ndims     = '2';
pt(107).size      = '[]';

pt(108).blockname = 'DataLogging/Poll Force Plates/orientation1';
pt(108).paramname = 'Value';
pt(108).class     = 'scalar';
pt(108).nrows     = 1;
pt(108).ncols     = 1;
pt(108).subsource = 'SS_DOUBLE';
pt(108).ndims     = '2';
pt(108).size      = '[]';

pt(109).blockname = 'DataLogging/Poll Force Plates/orientation2';
pt(109).paramname = 'Value';
pt(109).class     = 'scalar';
pt(109).nrows     = 1;
pt(109).ncols     = 1;
pt(109).subsource = 'SS_DOUBLE';
pt(109).ndims     = '2';
pt(109).size      = '[]';

pt(110).blockname = 'DataLogging/Poll Force Plates/request_packet';
pt(110).paramname = 'Value';
pt(110).class     = 'vector';
pt(110).nrows     = 1;
pt(110).ncols     = 34;
pt(110).subsource = 'SS_INT32';
pt(110).ndims     = '2';
pt(110).size      = '[]';

pt(111).blockname = 'DataLogging/Poll Force Plates/zero_voltage';
pt(111).paramname = 'Value';
pt(111).class     = 'scalar';
pt(111).nrows     = 1;
pt(111).ncols     = 1;
pt(111).subsource = 'SS_DOUBLE';
pt(111).ndims     = '2';
pt(111).size      = '[]';

pt(112).blockname = 'DataLogging/Poll KINARM/Arm1 Elbow Angle Offset';
pt(112).paramname = 'Value';
pt(112).class     = 'scalar';
pt(112).nrows     = 1;
pt(112).ncols     = 1;
pt(112).subsource = 'SS_DOUBLE';
pt(112).ndims     = '2';
pt(112).size      = '[]';

pt(113).blockname = 'DataLogging/Poll KINARM/Arm1 Encoder Orientation 1';
pt(113).paramname = 'Value';
pt(113).class     = 'scalar';
pt(113).nrows     = 1;
pt(113).ncols     = 1;
pt(113).subsource = 'SS_DOUBLE';
pt(113).ndims     = '2';
pt(113).size      = '[]';

pt(114).blockname = 'DataLogging/Poll KINARM/Arm1 Encoder Orientation 2';
pt(114).paramname = 'Value';
pt(114).class     = 'scalar';
pt(114).nrows     = 1;
pt(114).ncols     = 1;
pt(114).subsource = 'SS_DOUBLE';
pt(114).ndims     = '2';
pt(114).size      = '[]';

pt(115).blockname = 'DataLogging/Poll KINARM/Arm1 Force Sensor';
pt(115).paramname = 'Value';
pt(115).class     = 'scalar';
pt(115).nrows     = 1;
pt(115).ncols     = 1;
pt(115).subsource = 'SS_DOUBLE';
pt(115).ndims     = '2';
pt(115).size      = '[]';

pt(116).blockname = 'DataLogging/Poll KINARM/Arm1 Force Sensor Angle Offset';
pt(116).paramname = 'Value';
pt(116).class     = 'scalar';
pt(116).nrows     = 1;
pt(116).ncols     = 1;
pt(116).subsource = 'SS_DOUBLE';
pt(116).ndims     = '2';
pt(116).size      = '[]';

pt(117).blockname = 'DataLogging/Poll KINARM/Arm1 L1';
pt(117).paramname = 'Value';
pt(117).class     = 'scalar';
pt(117).nrows     = 1;
pt(117).ncols     = 1;
pt(117).subsource = 'SS_DOUBLE';
pt(117).ndims     = '2';
pt(117).size      = '[]';

pt(118).blockname = 'DataLogging/Poll KINARM/Arm1 L2';
pt(118).paramname = 'Value';
pt(118).class     = 'scalar';
pt(118).nrows     = 1;
pt(118).ncols     = 1;
pt(118).subsource = 'SS_DOUBLE';
pt(118).ndims     = '2';
pt(118).size      = '[]';

pt(119).blockname = 'DataLogging/Poll KINARM/Arm1 L2 L5 Angle';
pt(119).paramname = 'Value';
pt(119).class     = 'scalar';
pt(119).nrows     = 1;
pt(119).ncols     = 1;
pt(119).subsource = 'SS_DOUBLE';
pt(119).ndims     = '2';
pt(119).size      = '[]';

pt(120).blockname = 'DataLogging/Poll KINARM/Arm1 L3 Error';
pt(120).paramname = 'Value';
pt(120).class     = 'scalar';
pt(120).nrows     = 1;
pt(120).ncols     = 1;
pt(120).subsource = 'SS_DOUBLE';
pt(120).ndims     = '2';
pt(120).size      = '[]';

pt(121).blockname = 'DataLogging/Poll KINARM/Arm1 L5';
pt(121).paramname = 'Value';
pt(121).class     = 'scalar';
pt(121).nrows     = 1;
pt(121).ncols     = 1;
pt(121).subsource = 'SS_DOUBLE';
pt(121).ndims     = '2';
pt(121).size      = '[]';

pt(122).blockname = 'DataLogging/Poll KINARM/Arm1 Motor1 Gear Ratio';
pt(122).paramname = 'Value';
pt(122).class     = 'scalar';
pt(122).nrows     = 1;
pt(122).ncols     = 1;
pt(122).subsource = 'SS_DOUBLE';
pt(122).ndims     = '2';
pt(122).size      = '[]';

pt(123).blockname = 'DataLogging/Poll KINARM/Arm1 Motor1 Orientation';
pt(123).paramname = 'Value';
pt(123).class     = 'scalar';
pt(123).nrows     = 1;
pt(123).ncols     = 1;
pt(123).subsource = 'SS_DOUBLE';
pt(123).ndims     = '2';
pt(123).size      = '[]';

pt(124).blockname = 'DataLogging/Poll KINARM/Arm1 Motor2 Gear Ratio';
pt(124).paramname = 'Value';
pt(124).class     = 'scalar';
pt(124).nrows     = 1;
pt(124).ncols     = 1;
pt(124).subsource = 'SS_DOUBLE';
pt(124).ndims     = '2';
pt(124).size      = '[]';

pt(125).blockname = 'DataLogging/Poll KINARM/Arm1 Motor2 Orientation';
pt(125).paramname = 'Value';
pt(125).class     = 'scalar';
pt(125).nrows     = 1;
pt(125).ncols     = 1;
pt(125).subsource = 'SS_DOUBLE';
pt(125).ndims     = '2';
pt(125).size      = '[]';

pt(126).blockname = 'DataLogging/Poll KINARM/Arm1 Orientation';
pt(126).paramname = 'Value';
pt(126).class     = 'scalar';
pt(126).nrows     = 1;
pt(126).ncols     = 1;
pt(126).subsource = 'SS_DOUBLE';
pt(126).ndims     = '2';
pt(126).size      = '[]';

pt(127).blockname = 'DataLogging/Poll KINARM/Arm1 Pointer Offset';
pt(127).paramname = 'Value';
pt(127).class     = 'scalar';
pt(127).nrows     = 1;
pt(127).ncols     = 1;
pt(127).subsource = 'SS_DOUBLE';
pt(127).ndims     = '2';
pt(127).size      = '[]';

pt(128).blockname = 'DataLogging/Poll KINARM/Arm1 Secondary Encoders';
pt(128).paramname = 'Value';
pt(128).class     = 'scalar';
pt(128).nrows     = 1;
pt(128).ncols     = 1;
pt(128).subsource = 'SS_DOUBLE';
pt(128).ndims     = '2';
pt(128).size      = '[]';

pt(129).blockname = 'DataLogging/Poll KINARM/Arm1 Shoulder Angle Offset';
pt(129).paramname = 'Value';
pt(129).class     = 'scalar';
pt(129).nrows     = 1;
pt(129).ncols     = 1;
pt(129).subsource = 'SS_DOUBLE';
pt(129).ndims     = '2';
pt(129).size      = '[]';

pt(130).blockname = 'DataLogging/Poll KINARM/Arm1 Shoulder X';
pt(130).paramname = 'Value';
pt(130).class     = 'scalar';
pt(130).nrows     = 1;
pt(130).ncols     = 1;
pt(130).subsource = 'SS_DOUBLE';
pt(130).ndims     = '2';
pt(130).size      = '[]';

pt(131).blockname = 'DataLogging/Poll KINARM/Arm1 Shoulder Y';
pt(131).paramname = 'Value';
pt(131).class     = 'scalar';
pt(131).nrows     = 1;
pt(131).ncols     = 1;
pt(131).subsource = 'SS_DOUBLE';
pt(131).ndims     = '2';
pt(131).size      = '[]';

pt(132).blockname = 'DataLogging/Poll KINARM/Arm1 Torque Constant';
pt(132).paramname = 'Value';
pt(132).class     = 'scalar';
pt(132).nrows     = 1;
pt(132).ncols     = 1;
pt(132).subsource = 'SS_DOUBLE';
pt(132).ndims     = '2';
pt(132).size      = '[]';

pt(133).blockname = 'DataLogging/Poll KINARM/Arm1 primary encoder counts';
pt(133).paramname = 'Value';
pt(133).class     = 'scalar';
pt(133).nrows     = 1;
pt(133).ncols     = 1;
pt(133).subsource = 'SS_DOUBLE';
pt(133).ndims     = '2';
pt(133).size      = '[]';

pt(134).blockname = 'DataLogging/Poll KINARM/Arm1 robot type';
pt(134).paramname = 'Value';
pt(134).class     = 'scalar';
pt(134).nrows     = 1;
pt(134).ncols     = 1;
pt(134).subsource = 'SS_DOUBLE';
pt(134).ndims     = '2';
pt(134).size      = '[]';

pt(135).blockname = 'DataLogging/Poll KINARM/Arm1 secondary encoder counts';
pt(135).paramname = 'Value';
pt(135).class     = 'scalar';
pt(135).nrows     = 1;
pt(135).ncols     = 1;
pt(135).subsource = 'SS_DOUBLE';
pt(135).ndims     = '2';
pt(135).size      = '[]';

pt(136).blockname = 'DataLogging/Poll KINARM/Arm2 Elbow Angle Offset';
pt(136).paramname = 'Value';
pt(136).class     = 'scalar';
pt(136).nrows     = 1;
pt(136).ncols     = 1;
pt(136).subsource = 'SS_DOUBLE';
pt(136).ndims     = '2';
pt(136).size      = '[]';

pt(137).blockname = 'DataLogging/Poll KINARM/Arm2 Encoder Orientation 1';
pt(137).paramname = 'Value';
pt(137).class     = 'scalar';
pt(137).nrows     = 1;
pt(137).ncols     = 1;
pt(137).subsource = 'SS_DOUBLE';
pt(137).ndims     = '2';
pt(137).size      = '[]';

pt(138).blockname = 'DataLogging/Poll KINARM/Arm2 Encoder Orientation 2';
pt(138).paramname = 'Value';
pt(138).class     = 'scalar';
pt(138).nrows     = 1;
pt(138).ncols     = 1;
pt(138).subsource = 'SS_DOUBLE';
pt(138).ndims     = '2';
pt(138).size      = '[]';

pt(139).blockname = 'DataLogging/Poll KINARM/Arm2 Force Sensor';
pt(139).paramname = 'Value';
pt(139).class     = 'scalar';
pt(139).nrows     = 1;
pt(139).ncols     = 1;
pt(139).subsource = 'SS_DOUBLE';
pt(139).ndims     = '2';
pt(139).size      = '[]';

pt(140).blockname = 'DataLogging/Poll KINARM/Arm2 Force Sensor Angle Offset';
pt(140).paramname = 'Value';
pt(140).class     = 'scalar';
pt(140).nrows     = 1;
pt(140).ncols     = 1;
pt(140).subsource = 'SS_DOUBLE';
pt(140).ndims     = '2';
pt(140).size      = '[]';

pt(141).blockname = 'DataLogging/Poll KINARM/Arm2 L1';
pt(141).paramname = 'Value';
pt(141).class     = 'scalar';
pt(141).nrows     = 1;
pt(141).ncols     = 1;
pt(141).subsource = 'SS_DOUBLE';
pt(141).ndims     = '2';
pt(141).size      = '[]';

pt(142).blockname = 'DataLogging/Poll KINARM/Arm2 L2';
pt(142).paramname = 'Value';
pt(142).class     = 'scalar';
pt(142).nrows     = 1;
pt(142).ncols     = 1;
pt(142).subsource = 'SS_DOUBLE';
pt(142).ndims     = '2';
pt(142).size      = '[]';

pt(143).blockname = 'DataLogging/Poll KINARM/Arm2 L2 L5 Angle';
pt(143).paramname = 'Value';
pt(143).class     = 'scalar';
pt(143).nrows     = 1;
pt(143).ncols     = 1;
pt(143).subsource = 'SS_DOUBLE';
pt(143).ndims     = '2';
pt(143).size      = '[]';

pt(144).blockname = 'DataLogging/Poll KINARM/Arm2 L3 Error';
pt(144).paramname = 'Value';
pt(144).class     = 'scalar';
pt(144).nrows     = 1;
pt(144).ncols     = 1;
pt(144).subsource = 'SS_DOUBLE';
pt(144).ndims     = '2';
pt(144).size      = '[]';

pt(145).blockname = 'DataLogging/Poll KINARM/Arm2 L5';
pt(145).paramname = 'Value';
pt(145).class     = 'scalar';
pt(145).nrows     = 1;
pt(145).ncols     = 1;
pt(145).subsource = 'SS_DOUBLE';
pt(145).ndims     = '2';
pt(145).size      = '[]';

pt(146).blockname = 'DataLogging/Poll KINARM/Arm2 Motor1 Gear Ratio';
pt(146).paramname = 'Value';
pt(146).class     = 'scalar';
pt(146).nrows     = 1;
pt(146).ncols     = 1;
pt(146).subsource = 'SS_DOUBLE';
pt(146).ndims     = '2';
pt(146).size      = '[]';

pt(147).blockname = 'DataLogging/Poll KINARM/Arm2 Motor1 Orientation';
pt(147).paramname = 'Value';
pt(147).class     = 'scalar';
pt(147).nrows     = 1;
pt(147).ncols     = 1;
pt(147).subsource = 'SS_DOUBLE';
pt(147).ndims     = '2';
pt(147).size      = '[]';

pt(148).blockname = 'DataLogging/Poll KINARM/Arm2 Motor2 Gear Ratio';
pt(148).paramname = 'Value';
pt(148).class     = 'scalar';
pt(148).nrows     = 1;
pt(148).ncols     = 1;
pt(148).subsource = 'SS_DOUBLE';
pt(148).ndims     = '2';
pt(148).size      = '[]';

pt(149).blockname = 'DataLogging/Poll KINARM/Arm2 Motor2 Orientation';
pt(149).paramname = 'Value';
pt(149).class     = 'scalar';
pt(149).nrows     = 1;
pt(149).ncols     = 1;
pt(149).subsource = 'SS_DOUBLE';
pt(149).ndims     = '2';
pt(149).size      = '[]';

pt(150).blockname = 'DataLogging/Poll KINARM/Arm2 Orientation';
pt(150).paramname = 'Value';
pt(150).class     = 'scalar';
pt(150).nrows     = 1;
pt(150).ncols     = 1;
pt(150).subsource = 'SS_DOUBLE';
pt(150).ndims     = '2';
pt(150).size      = '[]';

pt(151).blockname = 'DataLogging/Poll KINARM/Arm2 Pointer Offset';
pt(151).paramname = 'Value';
pt(151).class     = 'scalar';
pt(151).nrows     = 1;
pt(151).ncols     = 1;
pt(151).subsource = 'SS_DOUBLE';
pt(151).ndims     = '2';
pt(151).size      = '[]';

pt(152).blockname = 'DataLogging/Poll KINARM/Arm2 Secondary Encoders';
pt(152).paramname = 'Value';
pt(152).class     = 'scalar';
pt(152).nrows     = 1;
pt(152).ncols     = 1;
pt(152).subsource = 'SS_DOUBLE';
pt(152).ndims     = '2';
pt(152).size      = '[]';

pt(153).blockname = 'DataLogging/Poll KINARM/Arm2 Shoulder Angle Offset';
pt(153).paramname = 'Value';
pt(153).class     = 'scalar';
pt(153).nrows     = 1;
pt(153).ncols     = 1;
pt(153).subsource = 'SS_DOUBLE';
pt(153).ndims     = '2';
pt(153).size      = '[]';

pt(154).blockname = 'DataLogging/Poll KINARM/Arm2 Shoulder X';
pt(154).paramname = 'Value';
pt(154).class     = 'scalar';
pt(154).nrows     = 1;
pt(154).ncols     = 1;
pt(154).subsource = 'SS_DOUBLE';
pt(154).ndims     = '2';
pt(154).size      = '[]';

pt(155).blockname = 'DataLogging/Poll KINARM/Arm2 Shoulder Y';
pt(155).paramname = 'Value';
pt(155).class     = 'scalar';
pt(155).nrows     = 1;
pt(155).ncols     = 1;
pt(155).subsource = 'SS_DOUBLE';
pt(155).ndims     = '2';
pt(155).size      = '[]';

pt(156).blockname = 'DataLogging/Poll KINARM/Arm2 Torque Constant';
pt(156).paramname = 'Value';
pt(156).class     = 'scalar';
pt(156).nrows     = 1;
pt(156).ncols     = 1;
pt(156).subsource = 'SS_DOUBLE';
pt(156).ndims     = '2';
pt(156).size      = '[]';

pt(157).blockname = 'DataLogging/Poll KINARM/Arm2 primary encoder counts';
pt(157).paramname = 'Value';
pt(157).class     = 'scalar';
pt(157).nrows     = 1;
pt(157).ncols     = 1;
pt(157).subsource = 'SS_DOUBLE';
pt(157).ndims     = '2';
pt(157).size      = '[]';

pt(158).blockname = 'DataLogging/Poll KINARM/Arm2 robot type';
pt(158).paramname = 'Value';
pt(158).class     = 'scalar';
pt(158).nrows     = 1;
pt(158).ncols     = 1;
pt(158).subsource = 'SS_DOUBLE';
pt(158).ndims     = '2';
pt(158).size      = '[]';

pt(159).blockname = 'DataLogging/Poll KINARM/Arm2 secondary encoder counts';
pt(159).paramname = 'Value';
pt(159).class     = 'scalar';
pt(159).nrows     = 1;
pt(159).ncols     = 1;
pt(159).subsource = 'SS_DOUBLE';
pt(159).ndims     = '2';
pt(159).size      = '[]';

pt(160).blockname = 'DataLogging/Poll KINARM/Dominant Arm';
pt(160).paramname = 'Value';
pt(160).class     = 'scalar';
pt(160).nrows     = 1;
pt(160).ncols     = 1;
pt(160).subsource = 'SS_DOUBLE';
pt(160).ndims     = '2';
pt(160).size      = '[]';

pt(161).blockname = 'DataLogging/Poll KINARM/Gaze Feedback Status';
pt(161).paramname = 'Value';
pt(161).class     = 'scalar';
pt(161).nrows     = 1;
pt(161).ncols     = 1;
pt(161).subsource = 'SS_DOUBLE';
pt(161).ndims     = '2';
pt(161).size      = '[]';

pt(162).blockname = 'DataLogging/Poll KINARM/Hand Feedback Colour';
pt(162).paramname = 'Value';
pt(162).class     = 'scalar';
pt(162).nrows     = 1;
pt(162).ncols     = 1;
pt(162).subsource = 'SS_DOUBLE';
pt(162).ndims     = '2';
pt(162).size      = '[]';

pt(163).blockname = 'DataLogging/Poll KINARM/Hand Feedback Feed Forward';
pt(163).paramname = 'Value';
pt(163).class     = 'scalar';
pt(163).nrows     = 1;
pt(163).ncols     = 1;
pt(163).subsource = 'SS_DOUBLE';
pt(163).ndims     = '2';
pt(163).size      = '[]';

pt(164).blockname = 'DataLogging/Poll KINARM/Hand Feedback Radius';
pt(164).paramname = 'Value';
pt(164).class     = 'scalar';
pt(164).nrows     = 1;
pt(164).ncols     = 1;
pt(164).subsource = 'SS_DOUBLE';
pt(164).ndims     = '2';
pt(164).size      = '[]';

pt(165).blockname = 'DataLogging/Poll KINARM/Hand Feedback Source';
pt(165).paramname = 'Value';
pt(165).class     = 'scalar';
pt(165).nrows     = 1;
pt(165).ncols     = 1;
pt(165).subsource = 'SS_DOUBLE';
pt(165).ndims     = '2';
pt(165).size      = '[]';

pt(166).blockname = 'DataLogging/Poll KINARM/Hand Feedback Status';
pt(166).paramname = 'Value';
pt(166).class     = 'scalar';
pt(166).nrows     = 1;
pt(166).ncols     = 1;
pt(166).subsource = 'SS_DOUBLE';
pt(166).ndims     = '2';
pt(166).size      = '[]';

pt(167).blockname = 'DataLogging/Poll KINARM/ZeroTorque';
pt(167).paramname = 'Value';
pt(167).class     = 'vector';
pt(167).nrows     = 1;
pt(167).ncols     = 4;
pt(167).subsource = 'SS_DOUBLE';
pt(167).ndims     = '2';
pt(167).size      = '[]';

pt(168).blockname = 'DataLogging/Poll KINARM/robot_count';
pt(168).paramname = 'Value';
pt(168).class     = 'scalar';
pt(168).nrows     = 1;
pt(168).ncols     = 1;
pt(168).subsource = 'SS_DOUBLE';
pt(168).ndims     = '2';
pt(168).size      = '[]';

pt(169).blockname = 'DataLogging/Poll KINARM/Memory';
pt(169).paramname = 'X0';
pt(169).class     = 'scalar';
pt(169).nrows     = 1;
pt(169).ncols     = 1;
pt(169).subsource = 'SS_DOUBLE';
pt(169).ndims     = '2';
pt(169).size      = '[]';

pt(170).blockname = 'DataLogging/Receive_Gaze/EL Camera Angle';
pt(170).paramname = 'Value';
pt(170).class     = 'vector';
pt(170).nrows     = 1;
pt(170).ncols     = 2;
pt(170).subsource = 'SS_DOUBLE';
pt(170).ndims     = '2';
pt(170).size      = '[]';

pt(171).blockname = 'DataLogging/Receive_Gaze/EL Camera Focal Length';
pt(171).paramname = 'Value';
pt(171).class     = 'scalar';
pt(171).nrows     = 1;
pt(171).ncols     = 1;
pt(171).subsource = 'SS_DOUBLE';
pt(171).ndims     = '2';
pt(171).size      = '[]';

pt(172).blockname = 'DataLogging/Receive_Gaze/EL Camera Position';
pt(172).paramname = 'Value';
pt(172).class     = 'vector';
pt(172).nrows     = 1;
pt(172).ncols     = 3;
pt(172).subsource = 'SS_DOUBLE';
pt(172).ndims     = '2';
pt(172).size      = '[]';

pt(173).blockname = 'DataLogging/Receive_Gaze/EL Tracking Available';
pt(173).paramname = 'Value';
pt(173).class     = 'scalar';
pt(173).nrows     = 1;
pt(173).ncols     = 1;
pt(173).subsource = 'SS_DOUBLE';
pt(173).ndims     = '2';
pt(173).size      = '[]';

pt(174).blockname = 'DataLogging/Receive_Gaze/Receive';
pt(174).paramname = 'P1';
pt(174).class     = 'vector';
pt(174).nrows     = 1;
pt(174).ncols     = 7;
pt(174).subsource = 'SS_DOUBLE';
pt(174).ndims     = '2';
pt(174).size      = '[]';

pt(175).blockname = 'DataLogging/Receive_Gaze/Receive';
pt(175).paramname = 'P2';
pt(175).class     = 'scalar';
pt(175).nrows     = 1;
pt(175).ncols     = 1;
pt(175).subsource = 'SS_DOUBLE';
pt(175).ndims     = '2';
pt(175).size      = '[]';

pt(176).blockname = 'DataLogging/Receive_Gaze/Receive';
pt(176).paramname = 'P3';
pt(176).class     = 'scalar';
pt(176).nrows     = 1;
pt(176).ncols     = 1;
pt(176).subsource = 'SS_DOUBLE';
pt(176).ndims     = '2';
pt(176).size      = '[]';

pt(177).blockname = 'DataLogging/Receive_Gaze/Receive';
pt(177).paramname = 'P4';
pt(177).class     = 'scalar';
pt(177).nrows     = 1;
pt(177).ncols     = 1;
pt(177).subsource = 'SS_DOUBLE';
pt(177).ndims     = '2';
pt(177).size      = '[]';

pt(178).blockname = 'DataLogging/Receive_Gaze/Receive';
pt(178).paramname = 'P5';
pt(178).class     = 'scalar';
pt(178).nrows     = 1;
pt(178).ncols     = 1;
pt(178).subsource = 'SS_DOUBLE';
pt(178).ndims     = '2';
pt(178).size      = '[]';

pt(179).blockname = 'GUI Control/Preview Targets Subsystem/L_cols';
pt(179).paramname = 'Value';
pt(179).class     = 'scalar';
pt(179).nrows     = 1;
pt(179).ncols     = 1;
pt(179).subsource = 'SS_DOUBLE';
pt(179).ndims     = '2';
pt(179).size      = '[]';

pt(180).blockname = 'GUI Control/Preview Targets Subsystem/Target_Type';
pt(180).paramname = 'Value';
pt(180).class     = 'scalar';
pt(180).nrows     = 1;
pt(180).ncols     = 1;
pt(180).subsource = 'SS_DOUBLE';
pt(180).ndims     = '2';
pt(180).size      = '[]';

pt(181).blockname = 'GUI Control/Preview Targets Subsystem/V_cols';
pt(181).paramname = 'Value';
pt(181).class     = 'scalar';
pt(181).nrows     = 1;
pt(181).ncols     = 1;
pt(181).subsource = 'SS_DOUBLE';
pt(181).ndims     = '2';
pt(181).size      = '[]';

pt(182).blockname = 'GUI Control/Preview Targets Subsystem/XY_cols';
pt(182).paramname = 'Value';
pt(182).class     = 'vector';
pt(182).nrows     = 1;
pt(182).ncols     = 2;
pt(182).subsource = 'SS_DOUBLE';
pt(182).ndims     = '2';
pt(182).size      = '[]';

pt(183).blockname = 'GUI Control/Preview Targets Subsystem/indices_padding';
pt(183).paramname = 'Value';
pt(183).class     = 'col-mat';
pt(183).nrows     = 2;
pt(183).ncols     = 4;
pt(183).subsource = 'SS_DOUBLE';
pt(183).ndims     = '2';
pt(183).size      = '[]';

pt(184).blockname = 'GUI Control/Run Command Subsystem/Rate Transition';
pt(184).paramname = 'X0';
pt(184).class     = 'scalar';
pt(184).nrows     = 1;
pt(184).ncols     = 1;
pt(184).subsource = 'SS_UINT8';
pt(184).ndims     = '2';
pt(184).size      = '[]';

pt(185).blockname = 'GUI Control/Run Command Subsystem/Run Command Receive';
pt(185).paramname = 'P1';
pt(185).class     = 'vector';
pt(185).nrows     = 1;
pt(185).ncols     = 7;
pt(185).subsource = 'SS_DOUBLE';
pt(185).ndims     = '2';
pt(185).size      = '[]';

pt(186).blockname = 'GUI Control/Run Command Subsystem/Run Command Receive';
pt(186).paramname = 'P2';
pt(186).class     = 'scalar';
pt(186).nrows     = 1;
pt(186).ncols     = 1;
pt(186).subsource = 'SS_DOUBLE';
pt(186).ndims     = '2';
pt(186).size      = '[]';

pt(187).blockname = 'GUI Control/Run Command Subsystem/Run Command Receive';
pt(187).paramname = 'P3';
pt(187).class     = 'scalar';
pt(187).nrows     = 1;
pt(187).ncols     = 1;
pt(187).subsource = 'SS_DOUBLE';
pt(187).ndims     = '2';
pt(187).size      = '[]';

pt(188).blockname = 'GUI Control/Run Command Subsystem/Run Command Receive';
pt(188).paramname = 'P4';
pt(188).class     = 'scalar';
pt(188).nrows     = 1;
pt(188).ncols     = 1;
pt(188).subsource = 'SS_DOUBLE';
pt(188).ndims     = '2';
pt(188).size      = '[]';

pt(189).blockname = 'GUI Control/Run Command Subsystem/Run Command Receive';
pt(189).paramname = 'P5';
pt(189).class     = 'scalar';
pt(189).nrows     = 1;
pt(189).ncols     = 1;
pt(189).subsource = 'SS_DOUBLE';
pt(189).ndims     = '2';
pt(189).size      = '[]';

pt(190).blockname = 'GUI Control/Task Execution Control Subsystem/Constant';
pt(190).paramname = 'Value';
pt(190).class     = 'scalar';
pt(190).nrows     = 1;
pt(190).ncols     = 1;
pt(190).subsource = 'SS_DOUBLE';
pt(190).ndims     = '2';
pt(190).size      = '[]';

pt(191).blockname = 'GUI Control/Task Execution Control Subsystem/Task Clock';
pt(191).paramname = 'Amplitude';
pt(191).class     = 'scalar';
pt(191).nrows     = 1;
pt(191).ncols     = 1;
pt(191).subsource = 'SS_DOUBLE';
pt(191).ndims     = '2';
pt(191).size      = '[]';

pt(192).blockname = 'GUI Control/Task Execution Control Subsystem/Task Clock';
pt(192).paramname = 'Period';
pt(192).class     = 'scalar';
pt(192).nrows     = 1;
pt(192).ncols     = 1;
pt(192).subsource = 'SS_DOUBLE';
pt(192).ndims     = '2';
pt(192).size      = '[]';

pt(193).blockname = 'GUI Control/Task Execution Control Subsystem/Task Clock';
pt(193).paramname = 'PulseWidth';
pt(193).class     = 'scalar';
pt(193).nrows     = 1;
pt(193).ncols     = 1;
pt(193).subsource = 'SS_DOUBLE';
pt(193).ndims     = '2';
pt(193).size      = '[]';

pt(194).blockname = 'GUI Control/Task Execution Control Subsystem/Task Clock';
pt(194).paramname = 'PhaseDelay';
pt(194).class     = 'scalar';
pt(194).nrows     = 1;
pt(194).ncols     = 1;
pt(194).subsource = 'SS_DOUBLE';
pt(194).ndims     = '2';
pt(194).size      = '[]';

pt(195).blockname = 'GUI Control/Task Execution Control Subsystem/Delay';
pt(195).paramname = 'X0';
pt(195).class     = 'scalar';
pt(195).nrows     = 1;
pt(195).ncols     = 1;
pt(195).subsource = 'SS_BOOLEAN';
pt(195).ndims     = '2';
pt(195).size      = '[]';

pt(196).blockname = 'GUI Control/Task Execution Control Subsystem/Delay1';
pt(196).paramname = 'X0';
pt(196).class     = 'scalar';
pt(196).nrows     = 1;
pt(196).ncols     = 1;
pt(196).subsource = 'SS_DOUBLE';
pt(196).ndims     = '2';
pt(196).size      = '[]';

pt(197).blockname = 'Parameter Table Defn/TP_table/DELAY_POSTTRIAL_COL;Post-Trial_Delay;integer;time between trials (ms);;;none;;';
pt(197).paramname = 'Value';
pt(197).class     = 'scalar';
pt(197).nrows     = 1;
pt(197).ncols     = 1;
pt(197).subsource = 'SS_DOUBLE';
pt(197).ndims     = '2';
pt(197).size      = '[]';

pt(198).blockname = 'Parameter Table Defn/TP_table/END_TARGET_COL;End_Target;target;Second target to appear during a trial (i.e. reach to this target from 1st target);;;none;;';
pt(198).paramname = 'Value';
pt(198).class     = 'scalar';
pt(198).nrows     = 1;
pt(198).ncols     = 1;
pt(198).subsource = 'SS_DOUBLE';
pt(198).ndims     = '2';
pt(198).size      = '[]';

pt(199).blockname = 'Parameter Table Defn/TP_table/LOAD;Load;load;Load applied during trial;;;none;;';
pt(199).paramname = 'Value';
pt(199).class     = 'scalar';
pt(199).nrows     = 1;
pt(199).ncols     = 1;
pt(199).subsource = 'SS_DOUBLE';
pt(199).ndims     = '2';
pt(199).size      = '[]';

pt(200).blockname = 'Parameter Table Defn/TP_table/MAXREACHTIME_COL;MaxReachTime;integer;maximum time allowed for sucessful reach (ms);;;none;;';
pt(200).paramname = 'Value';
pt(200).class     = 'scalar';
pt(200).nrows     = 1;
pt(200).ncols     = 1;
pt(200).subsource = 'SS_DOUBLE';
pt(200).ndims     = '2';
pt(200).size      = '[]';

pt(201).blockname = 'Parameter Table Defn/TP_table/ROTATION;Rotation;integer;Rotation (degrees CCW) (absolute or incremental, depending on Rotate_Type));;;none;;';
pt(201).paramname = 'Value';
pt(201).class     = 'scalar';
pt(201).nrows     = 1;
pt(201).ncols     = 1;
pt(201).subsource = 'SS_DOUBLE';
pt(201).ndims     = '2';
pt(201).size      = '[]';

pt(202).blockname = 'Parameter Table Defn/TP_table/ROTATION_CENTER;Rotate_Center;target;Target to use for rotation center (i.e. visual rotation occurs about the position defined by this target);;;none;;';
pt(202).paramname = 'Value';
pt(202).class     = 'scalar';
pt(202).nrows     = 1;
pt(202).ncols     = 1;
pt(202).subsource = 'SS_DOUBLE';
pt(202).ndims     = '2';
pt(202).size      = '[]';

pt(203).blockname = 'Parameter Table Defn/TP_table/ROTATION_TYPE;Rotate_Type;integer;0 -> no rotation, 1 -> rotate specified amount, 2 -> change rotation by specified amount;;;none;;';
pt(203).paramname = 'Value';
pt(203).class     = 'scalar';
pt(203).nrows     = 1;
pt(203).ncols     = 1;
pt(203).subsource = 'SS_DOUBLE';
pt(203).ndims     = '2';
pt(203).size      = '[]';

pt(204).blockname = 'Parameter Table Defn/TP_table/START_TARGET_COL;Start_Target;target;First target to appear during a trial;;;none;;';
pt(204).paramname = 'Value';
pt(204).class     = 'scalar';
pt(204).nrows     = 1;
pt(204).ncols     = 1;
pt(204).subsource = 'SS_DOUBLE';
pt(204).ndims     = '2';
pt(204).size      = '[]';

pt(205).blockname = 'Parameter Table Defn/TP_table/TRAJ_DURATION_COL;Trajectory duration;float;Duration of trajectory to central target (ms);;;none;;';
pt(205).paramname = 'Value';
pt(205).class     = 'scalar';
pt(205).nrows     = 1;
pt(205).ncols     = 1;
pt(205).subsource = 'SS_DOUBLE';
pt(205).ndims     = '2';
pt(205).size      = '[]';

pt(206).blockname = 'Parameter Table Defn/TP_table/WAIT_AT_1stTARGET_COL;1st_Target_Wait;integer;Required hold time at 1st target (ms);;;none;;';
pt(206).paramname = 'Value';
pt(206).class     = 'scalar';
pt(206).nrows     = 1;
pt(206).ncols     = 1;
pt(206).subsource = 'SS_DOUBLE';
pt(206).ndims     = '2';
pt(206).size      = '[]';

pt(207).blockname = 'Parameter Table Defn/TP_table/WAIT_AT_2ndTARGET_COL;2nd_Target_Wait;integer;delay after reaching 2nd target (ms);;;none;;';
pt(207).paramname = 'Value';
pt(207).class     = 'scalar';
pt(207).nrows     = 1;
pt(207).ncols     = 1;
pt(207).subsource = 'SS_DOUBLE';
pt(207).ndims     = '2';
pt(207).size      = '[]';

pt(208).blockname = 'Parameter Table Defn/events/E_HOLD_AT_TARGET;HOLD_AT_TARGET;;Subject starts holding at the peripheral target;;;none;;';
pt(208).paramname = 'Value';
pt(208).class     = 'scalar';
pt(208).nrows     = 1;
pt(208).ncols     = 1;
pt(208).subsource = 'SS_DOUBLE';
pt(208).ndims     = '2';
pt(208).size      = '[]';

pt(209).blockname = 'Parameter Table Defn/events/E_STAY_CENTER;STAY_CENTRE;;subject must wait at centre starting now;;;none;;';
pt(209).paramname = 'Value';
pt(209).class     = 'scalar';
pt(209).nrows     = 1;
pt(209).ncols     = 1;
pt(209).subsource = 'SS_DOUBLE';
pt(209).ndims     = '2';
pt(209).size      = '[]';

pt(210).blockname = 'Parameter Table Defn/events/E_TARGET_ON;TARGET_ON;;Target light ON, start waiting for subject to leave centre target;;;none;;';
pt(210).paramname = 'Value';
pt(210).class     = 'scalar';
pt(210).nrows     = 1;
pt(210).ncols     = 1;
pt(210).subsource = 'SS_DOUBLE';
pt(210).ndims     = '2';
pt(210).size      = '[]';

pt(211).blockname = 'Parameter Table Defn/load_table/A_VISC;X-X viscosity;float;End-point viscosity in X-X direction (less than 0 for viscosity);;;none;;';
pt(211).paramname = 'Value';
pt(211).class     = 'scalar';
pt(211).nrows     = 1;
pt(211).ncols     = 1;
pt(211).subsource = 'SS_DOUBLE';
pt(211).ndims     = '2';
pt(211).size      = '[]';

pt(212).blockname = 'Parameter Table Defn/load_table/B_VISC;X-Y viscosity;float;End-point viscosity in X-Y direction (less than 0 for viscosity);;;none;;';
pt(212).paramname = 'Value';
pt(212).class     = 'scalar';
pt(212).nrows     = 1;
pt(212).ncols     = 1;
pt(212).subsource = 'SS_DOUBLE';
pt(212).ndims     = '2';
pt(212).size      = '[]';

pt(213).blockname = 'Parameter Table Defn/load_table/C_VISC;Y-X viscosity;float;End-point viscosity in Y-X direction (less than 0 for viscosity);;;none;;';
pt(213).paramname = 'Value';
pt(213).class     = 'scalar';
pt(213).nrows     = 1;
pt(213).ncols     = 1;
pt(213).subsource = 'SS_DOUBLE';
pt(213).ndims     = '2';
pt(213).size      = '[]';

pt(214).blockname = 'Parameter Table Defn/load_table/D_VISC;Y-Y viscosity;float;End-point viscosity in Y-Y direction (less than 0 for viscosity);;;none;;';
pt(214).paramname = 'Value';
pt(214).class     = 'scalar';
pt(214).nrows     = 1;
pt(214).ncols     = 1;
pt(214).subsource = 'SS_DOUBLE';
pt(214).ndims     = '2';
pt(214).size      = '[]';

pt(215).blockname = 'Parameter Table Defn/target_table/ALTCOLOR;Alt-Color;colour;;;;none;;';
pt(215).paramname = 'Value';
pt(215).class     = 'scalar';
pt(215).nrows     = 1;
pt(215).ncols     = 1;
pt(215).subsource = 'SS_DOUBLE';
pt(215).ndims     = '2';
pt(215).size      = '[]';

pt(216).blockname = 'Parameter Table Defn/target_table/COLOR;Color;colour;;;;none;;';
pt(216).paramname = 'Value';
pt(216).class     = 'scalar';
pt(216).nrows     = 1;
pt(216).ncols     = 1;
pt(216).subsource = 'SS_DOUBLE';
pt(216).ndims     = '2';
pt(216).size      = '[]';

pt(217).blockname = 'Parameter Table Defn/target_table/LOGICAL_RADIUS;Logical radius;float;;;;none;;';
pt(217).paramname = 'Value';
pt(217).class     = 'scalar';
pt(217).nrows     = 1;
pt(217).ncols     = 1;
pt(217).subsource = 'SS_DOUBLE';
pt(217).ndims     = '2';
pt(217).size      = '[]';

pt(218).blockname = 'Parameter Table Defn/target_table/VISUAL_RADIUS;Visual radius;float;;;;none;;';
pt(218).paramname = 'Value';
pt(218).class     = 'scalar';
pt(218).nrows     = 1;
pt(218).ncols     = 1;
pt(218).subsource = 'SS_DOUBLE';
pt(218).ndims     = '2';
pt(218).size      = '[]';

pt(219).blockname = 'Parameter Table Defn/target_table/col_x;X;float;X Position (cm) of the target relative to  local (0,0);;;none;;';
pt(219).paramname = 'Value';
pt(219).class     = 'scalar';
pt(219).nrows     = 1;
pt(219).ncols     = 1;
pt(219).subsource = 'SS_DOUBLE';
pt(219).ndims     = '2';
pt(219).size      = '[]';

pt(220).blockname = 'Parameter Table Defn/target_table/col_y;Y;float;Y Position (cm) of the target relative to  local (0,0);;;none;;';
pt(220).paramname = 'Value';
pt(220).class     = 'scalar';
pt(220).nrows     = 1;
pt(220).ncols     = 1;
pt(220).subsource = 'SS_DOUBLE';
pt(220).ndims     = '2';
pt(220).size      = '[]';

pt(221).blockname = 'Parameter Table Defn/task_definition/INSTRUCTIONS=';
pt(221).paramname = 'Value';
pt(221).class     = 'scalar';
pt(221).nrows     = 1;
pt(221).ncols     = 1;
pt(221).subsource = 'SS_DOUBLE';
pt(221).ndims     = '2';
pt(221).size      = '[]';

pt(222).blockname = 'Parameter Table Defn/task_definition/LOAD_FOR=EITHER';
pt(222).paramname = 'Value';
pt(222).class     = 'scalar';
pt(222).nrows     = 1;
pt(222).ncols     = 1;
pt(222).subsource = 'SS_DOUBLE';
pt(222).ndims     = '2';
pt(222).size      = '[]';

pt(223).blockname = 'Parameter Table Defn/task_wide/POSITION_RAMP_TIME;Ramp time;integer;Position controller ramp on and ramp off time (ms);;;none;;';
pt(223).paramname = 'Value';
pt(223).class     = 'scalar';
pt(223).nrows     = 1;
pt(223).ncols     = 1;
pt(223).subsource = 'SS_DOUBLE';
pt(223).ndims     = '2';
pt(223).size      = '[]';

pt(224).blockname = 'Parameter Table Defn/task_wide/WAIT_AT_START_TIME;Wait at start time;float;Time to wait at start target before position control starts (ms);;;none;;';
pt(224).paramname = 'Value';
pt(224).class     = 'scalar';
pt(224).nrows     = 1;
pt(224).ncols     = 1;
pt(224).subsource = 'SS_DOUBLE';
pt(224).ndims     = '2';
pt(224).size      = '[]';

pt(225).blockname = 'Process_Video_CMD/PVC_core/Rate Transition';
pt(225).paramname = 'X0';
pt(225).class     = 'scalar';
pt(225).nrows     = 1;
pt(225).ncols     = 1;
pt(225).subsource = 'SS_DOUBLE';
pt(225).ndims     = '2';
pt(225).size      = '[]';

pt(226).blockname = 'Process_Video_CMD/PVC_core/Rate Transition1';
pt(226).paramname = 'X0';
pt(226).class     = 'scalar';
pt(226).nrows     = 1;
pt(226).ncols     = 1;
pt(226).subsource = 'SS_UINT32';
pt(226).ndims     = '2';
pt(226).size      = '[]';

pt(227).blockname = 'Process_Video_CMD/PVC_core/Rate Transition4';
pt(227).paramname = 'X0';
pt(227).class     = 'scalar';
pt(227).nrows     = 1;
pt(227).ncols     = 1;
pt(227).subsource = 'SS_UINT32';
pt(227).ndims     = '2';
pt(227).size      = '[]';

pt(228).blockname = 'Process_Video_CMD/PVC_core/Rate Transition5';
pt(228).paramname = 'X0';
pt(228).class     = 'scalar';
pt(228).nrows     = 1;
pt(228).ncols     = 1;
pt(228).subsource = 'SS_DOUBLE';
pt(228).ndims     = '2';
pt(228).size      = '[]';

pt(229).blockname = 'Select_load_mode/Velocity_Loads_EP/inter_arm';
pt(229).paramname = 'Value';
pt(229).class     = 'scalar';
pt(229).nrows     = 1;
pt(229).ncols     = 1;
pt(229).subsource = 'SS_DOUBLE';
pt(229).ndims     = '2';
pt(229).size      = '[]';

pt(230).blockname = 'Select_load_mode/Velocity_Loads_EP/load_table_column_indices';
pt(230).paramname = 'Value';
pt(230).class     = 'vector';
pt(230).nrows     = 1;
pt(230).ncols     = 4;
pt(230).subsource = 'SS_DOUBLE';
pt(230).ndims     = '2';
pt(230).size      = '[]';

pt(231).blockname = 'Select_load_mode/Velocity_Loads_EP/scaling';
pt(231).paramname = 'Value';
pt(231).class     = 'scalar';
pt(231).nrows     = 1;
pt(231).ncols     = 1;
pt(231).subsource = 'SS_DOUBLE';
pt(231).ndims     = '2';
pt(231).size      = '[]';

pt(232).blockname = 'Select_load_mode/Velocity_Loads_EP/stability';
pt(232).paramname = 'Value';
pt(232).class     = 'scalar';
pt(232).nrows     = 1;
pt(232).ncols     = 1;
pt(232).subsource = 'SS_DOUBLE';
pt(232).ndims     = '2';
pt(232).size      = '[]';

pt(233).blockname = 'Select_load_mode/Velocity_Loads_EP/use dominant hand';
pt(233).paramname = 'Value';
pt(233).class     = 'scalar';
pt(233).nrows     = 1;
pt(233).ncols     = 1;
pt(233).subsource = 'SS_DOUBLE';
pt(233).ndims     = '2';
pt(233).size      = '[]';

pt(234).blockname = 'DataLogging/Create Task State Subsystem/Counter Free-Running/Output';
pt(234).paramname = 'InitialCondition';
pt(234).class     = 'scalar';
pt(234).nrows     = 1;
pt(234).ncols     = 1;
pt(234).subsource = 'SS_UINT32';
pt(234).ndims     = '2';
pt(234).size      = '[]';

pt(235).blockname = 'DataLogging/Create Task State Subsystem/If Running/Constant';
pt(235).paramname = 'Value';
pt(235).class     = 'scalar';
pt(235).nrows     = 1;
pt(235).ncols     = 1;
pt(235).subsource = 'SS_UINT32';
pt(235).ndims     = '2';
pt(235).size      = '[]';

pt(236).blockname = 'DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Constant';
pt(236).paramname = 'Value';
pt(236).class     = 'vector';
pt(236).nrows     = 1;
pt(236).ncols     = 300;
pt(236).subsource = 'SS_SINGLE';
pt(236).ndims     = '2';
pt(236).size      = '[]';

pt(237).blockname = 'DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Constant1';
pt(237).paramname = 'Value';
pt(237).class     = 'scalar';
pt(237).nrows     = 1;
pt(237).ncols     = 1;
pt(237).subsource = 'SS_DOUBLE';
pt(237).ndims     = '2';
pt(237).size      = '[]';

pt(238).blockname = 'DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Max Frames Per Packet';
pt(238).paramname = 'Value';
pt(238).class     = 'scalar';
pt(238).nrows     = 1;
pt(238).ncols     = 1;
pt(238).subsource = 'SS_DOUBLE';
pt(238).ndims     = '2';
pt(238).size      = '[]';

pt(239).blockname = 'DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-1';
pt(239).paramname = 'X0';
pt(239).class     = 'scalar';
pt(239).nrows     = 1;
pt(239).ncols     = 1;
pt(239).subsource = 'SS_SINGLE';
pt(239).ndims     = '2';
pt(239).size      = '[]';

pt(240).blockname = 'DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-2';
pt(240).paramname = 'X0';
pt(240).class     = 'scalar';
pt(240).nrows     = 1;
pt(240).ncols     = 1;
pt(240).subsource = 'SS_SINGLE';
pt(240).ndims     = '2';
pt(240).size      = '[]';

pt(241).blockname = 'DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-3';
pt(241).paramname = 'X0';
pt(241).class     = 'scalar';
pt(241).nrows     = 1;
pt(241).ncols     = 1;
pt(241).subsource = 'SS_SINGLE';
pt(241).ndims     = '2';
pt(241).size      = '[]';

pt(242).blockname = 'DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-4';
pt(242).paramname = 'X0';
pt(242).class     = 'scalar';
pt(242).nrows     = 1;
pt(242).ncols     = 1;
pt(242).subsource = 'SS_SINGLE';
pt(242).ndims     = '2';
pt(242).size      = '[]';

pt(243).blockname = 'DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-5';
pt(243).paramname = 'X0';
pt(243).class     = 'scalar';
pt(243).nrows     = 1;
pt(243).ncols     = 1;
pt(243).subsource = 'SS_SINGLE';
pt(243).ndims     = '2';
pt(243).size      = '[]';

pt(244).blockname = 'DataLogging/Network Transfer Subsystem/UDP Send Subsystem/total_packets_sent';
pt(244).paramname = 'InitialOutput';
pt(244).class     = 'scalar';
pt(244).nrows     = 1;
pt(244).ncols     = 1;
pt(244).subsource = 'SS_UINT32';
pt(244).ndims     = '2';
pt(244).size      = '[]';

pt(245).blockname = 'DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Send';
pt(245).paramname = 'P1';
pt(245).class     = 'vector';
pt(245).nrows     = 1;
pt(245).ncols     = 11;
pt(245).subsource = 'SS_DOUBLE';
pt(245).ndims     = '2';
pt(245).size      = '[]';

pt(246).blockname = 'DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Send';
pt(246).paramname = 'P2';
pt(246).class     = 'scalar';
pt(246).nrows     = 1;
pt(246).ncols     = 1;
pt(246).subsource = 'SS_DOUBLE';
pt(246).ndims     = '2';
pt(246).size      = '[]';

pt(247).blockname = 'DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Send';
pt(247).paramname = 'P3';
pt(247).class     = 'scalar';
pt(247).nrows     = 1;
pt(247).ncols     = 1;
pt(247).subsource = 'SS_DOUBLE';
pt(247).ndims     = '2';
pt(247).size      = '[]';

pt(248).blockname = 'DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Send';
pt(248).paramname = 'P4';
pt(248).class     = 'scalar';
pt(248).nrows     = 1;
pt(248).ncols     = 1;
pt(248).subsource = 'SS_DOUBLE';
pt(248).ndims     = '2';
pt(248).size      = '[]';

pt(249).blockname = 'DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Send';
pt(249).paramname = 'P5';
pt(249).class     = 'scalar';
pt(249).nrows     = 1;
pt(249).ncols     = 1;
pt(249).subsource = 'SS_DOUBLE';
pt(249).ndims     = '2';
pt(249).size      = '[]';

pt(250).blockname = 'DataLogging/Network Transfer Subsystem/is running/Constant';
pt(250).paramname = 'Value';
pt(250).class     = 'scalar';
pt(250).nrows     = 1;
pt(250).ncols     = 1;
pt(250).subsource = 'SS_DOUBLE';
pt(250).ndims     = '2';
pt(250).size      = '[]';

pt(251).blockname = 'DataLogging/Poll Force Plates/plate1/Receive';
pt(251).paramname = 'P1';
pt(251).class     = 'vector';
pt(251).nrows     = 1;
pt(251).ncols     = 13;
pt(251).subsource = 'SS_DOUBLE';
pt(251).ndims     = '2';
pt(251).size      = '[]';

pt(252).blockname = 'DataLogging/Poll Force Plates/plate1/Receive';
pt(252).paramname = 'P2';
pt(252).class     = 'scalar';
pt(252).nrows     = 1;
pt(252).ncols     = 1;
pt(252).subsource = 'SS_DOUBLE';
pt(252).ndims     = '2';
pt(252).size      = '[]';

pt(253).blockname = 'DataLogging/Poll Force Plates/plate1/Receive';
pt(253).paramname = 'P3';
pt(253).class     = 'scalar';
pt(253).nrows     = 1;
pt(253).ncols     = 1;
pt(253).subsource = 'SS_DOUBLE';
pt(253).ndims     = '2';
pt(253).size      = '[]';

pt(254).blockname = 'DataLogging/Poll Force Plates/plate1/Receive';
pt(254).paramname = 'P4';
pt(254).class     = 'scalar';
pt(254).nrows     = 1;
pt(254).ncols     = 1;
pt(254).subsource = 'SS_DOUBLE';
pt(254).ndims     = '2';
pt(254).size      = '[]';

pt(255).blockname = 'DataLogging/Poll Force Plates/plate1/Receive';
pt(255).paramname = 'P5';
pt(255).class     = 'scalar';
pt(255).nrows     = 1;
pt(255).ncols     = 1;
pt(255).subsource = 'SS_DOUBLE';
pt(255).ndims     = '2';
pt(255).size      = '[]';

pt(256).blockname = 'DataLogging/Poll Force Plates/plate1/Send';
pt(256).paramname = 'P1';
pt(256).class     = 'vector';
pt(256).nrows     = 1;
pt(256).ncols     = 13;
pt(256).subsource = 'SS_DOUBLE';
pt(256).ndims     = '2';
pt(256).size      = '[]';

pt(257).blockname = 'DataLogging/Poll Force Plates/plate1/Send';
pt(257).paramname = 'P2';
pt(257).class     = 'scalar';
pt(257).nrows     = 1;
pt(257).ncols     = 1;
pt(257).subsource = 'SS_DOUBLE';
pt(257).ndims     = '2';
pt(257).size      = '[]';

pt(258).blockname = 'DataLogging/Poll Force Plates/plate1/Send';
pt(258).paramname = 'P3';
pt(258).class     = 'scalar';
pt(258).nrows     = 1;
pt(258).ncols     = 1;
pt(258).subsource = 'SS_DOUBLE';
pt(258).ndims     = '2';
pt(258).size      = '[]';

pt(259).blockname = 'DataLogging/Poll Force Plates/plate1/Send';
pt(259).paramname = 'P4';
pt(259).class     = 'scalar';
pt(259).nrows     = 1;
pt(259).ncols     = 1;
pt(259).subsource = 'SS_DOUBLE';
pt(259).ndims     = '2';
pt(259).size      = '[]';

pt(260).blockname = 'DataLogging/Poll Force Plates/plate1/Send';
pt(260).paramname = 'P5';
pt(260).class     = 'scalar';
pt(260).nrows     = 1;
pt(260).ncols     = 1;
pt(260).subsource = 'SS_DOUBLE';
pt(260).ndims     = '2';
pt(260).size      = '[]';

pt(261).blockname = 'DataLogging/Poll Force Plates/plate2/Receive1';
pt(261).paramname = 'P1';
pt(261).class     = 'vector';
pt(261).nrows     = 1;
pt(261).ncols     = 13;
pt(261).subsource = 'SS_DOUBLE';
pt(261).ndims     = '2';
pt(261).size      = '[]';

pt(262).blockname = 'DataLogging/Poll Force Plates/plate2/Receive1';
pt(262).paramname = 'P2';
pt(262).class     = 'scalar';
pt(262).nrows     = 1;
pt(262).ncols     = 1;
pt(262).subsource = 'SS_DOUBLE';
pt(262).ndims     = '2';
pt(262).size      = '[]';

pt(263).blockname = 'DataLogging/Poll Force Plates/plate2/Receive1';
pt(263).paramname = 'P3';
pt(263).class     = 'scalar';
pt(263).nrows     = 1;
pt(263).ncols     = 1;
pt(263).subsource = 'SS_DOUBLE';
pt(263).ndims     = '2';
pt(263).size      = '[]';

pt(264).blockname = 'DataLogging/Poll Force Plates/plate2/Receive1';
pt(264).paramname = 'P4';
pt(264).class     = 'scalar';
pt(264).nrows     = 1;
pt(264).ncols     = 1;
pt(264).subsource = 'SS_DOUBLE';
pt(264).ndims     = '2';
pt(264).size      = '[]';

pt(265).blockname = 'DataLogging/Poll Force Plates/plate2/Receive1';
pt(265).paramname = 'P5';
pt(265).class     = 'scalar';
pt(265).nrows     = 1;
pt(265).ncols     = 1;
pt(265).subsource = 'SS_DOUBLE';
pt(265).ndims     = '2';
pt(265).size      = '[]';

pt(266).blockname = 'DataLogging/Poll Force Plates/plate2/Send1';
pt(266).paramname = 'P1';
pt(266).class     = 'vector';
pt(266).nrows     = 1;
pt(266).ncols     = 13;
pt(266).subsource = 'SS_DOUBLE';
pt(266).ndims     = '2';
pt(266).size      = '[]';

pt(267).blockname = 'DataLogging/Poll Force Plates/plate2/Send1';
pt(267).paramname = 'P2';
pt(267).class     = 'scalar';
pt(267).nrows     = 1;
pt(267).ncols     = 1;
pt(267).subsource = 'SS_DOUBLE';
pt(267).ndims     = '2';
pt(267).size      = '[]';

pt(268).blockname = 'DataLogging/Poll Force Plates/plate2/Send1';
pt(268).paramname = 'P3';
pt(268).class     = 'scalar';
pt(268).nrows     = 1;
pt(268).ncols     = 1;
pt(268).subsource = 'SS_DOUBLE';
pt(268).ndims     = '2';
pt(268).size      = '[]';

pt(269).blockname = 'DataLogging/Poll Force Plates/plate2/Send1';
pt(269).paramname = 'P4';
pt(269).class     = 'scalar';
pt(269).nrows     = 1;
pt(269).ncols     = 1;
pt(269).subsource = 'SS_DOUBLE';
pt(269).ndims     = '2';
pt(269).size      = '[]';

pt(270).blockname = 'DataLogging/Poll Force Plates/plate2/Send1';
pt(270).paramname = 'P5';
pt(270).class     = 'scalar';
pt(270).nrows     = 1;
pt(270).ncols     = 1;
pt(270).subsource = 'SS_DOUBLE';
pt(270).ndims     = '2';
pt(270).size      = '[]';

pt(271).blockname = 'DataLogging/Poll KINARM/DPRAM Access Subsystem/DPRAM Read Offset';
pt(271).paramname = 'Value';
pt(271).class     = 'scalar';
pt(271).nrows     = 1;
pt(271).ncols     = 1;
pt(271).subsource = 'SS_DOUBLE';
pt(271).ndims     = '2';
pt(271).size      = '[]';

pt(272).blockname = 'DataLogging/Poll KINARM/DPRAM Access Subsystem/DPRAM WatchDog offset';
pt(272).paramname = 'Value';
pt(272).class     = 'scalar';
pt(272).nrows     = 1;
pt(272).ncols     = 1;
pt(272).subsource = 'SS_DOUBLE';
pt(272).ndims     = '2';
pt(272).size      = '[]';

pt(273).blockname = 'DataLogging/Poll KINARM/DPRAM Access Subsystem/DPRAM Write Offset';
pt(273).paramname = 'Value';
pt(273).class     = 'scalar';
pt(273).nrows     = 1;
pt(273).ncols     = 1;
pt(273).subsource = 'SS_DOUBLE';
pt(273).ndims     = '2';
pt(273).size      = '[]';

pt(274).blockname = 'DataLogging/Poll KINARM/DPRAM Access Subsystem/DPRAM Write Value';
pt(274).paramname = 'Value';
pt(274).class     = 'scalar';
pt(274).nrows     = 1;
pt(274).ncols     = 1;
pt(274).subsource = 'SS_DOUBLE';
pt(274).ndims     = '2';
pt(274).size      = '[]';

pt(275).blockname = 'DataLogging/Poll KINARM/DPRAM Access Subsystem/Read Switch';
pt(275).paramname = 'Value';
pt(275).class     = 'scalar';
pt(275).nrows     = 1;
pt(275).ncols     = 1;
pt(275).subsource = 'SS_DOUBLE';
pt(275).ndims     = '2';
pt(275).size      = '[]';

pt(276).blockname = 'DataLogging/Poll KINARM/DPRAM Access Subsystem/Read as UInt32';
pt(276).paramname = 'Value';
pt(276).class     = 'scalar';
pt(276).nrows     = 1;
pt(276).ncols     = 1;
pt(276).subsource = 'SS_DOUBLE';
pt(276).ndims     = '2';
pt(276).size      = '[]';

pt(277).blockname = 'DataLogging/Poll KINARM/DPRAM Access Subsystem/Write Switch';
pt(277).paramname = 'Value';
pt(277).class     = 'scalar';
pt(277).nrows     = 1;
pt(277).ncols     = 1;
pt(277).subsource = 'SS_DOUBLE';
pt(277).ndims     = '2';
pt(277).size      = '[]';

pt(278).blockname = 'DataLogging/Poll KINARM/DPRAM Access Subsystem/DPRAM Read Value';
pt(278).paramname = 'Gain';
pt(278).class     = 'scalar';
pt(278).nrows     = 1;
pt(278).ncols     = 1;
pt(278).subsource = 'SS_DOUBLE';
pt(278).ndims     = '2';
pt(278).size      = '[]';

pt(279).blockname = 'DataLogging/Poll KINARM/DPRAM Access Subsystem/Unit Delay';
pt(279).paramname = 'InitialCondition';
pt(279).class     = 'scalar';
pt(279).nrows     = 1;
pt(279).ncols     = 1;
pt(279).subsource = 'SS_DOUBLE';
pt(279).ndims     = '2';
pt(279).size      = '[]';

pt(280).blockname = 'DataLogging/Poll KINARM/DPRAM Access Subsystem/Unit Delay1';
pt(280).paramname = 'InitialCondition';
pt(280).class     = 'scalar';
pt(280).nrows     = 1;
pt(280).ncols     = 1;
pt(280).subsource = 'SS_DOUBLE';
pt(280).ndims     = '2';
pt(280).size      = '[]';

pt(281).blockname = 'GUI Control/Task Execution Control Subsystem/Compare To Constant/Constant';
pt(281).paramname = 'Value';
pt(281).class     = 'scalar';
pt(281).nrows     = 1;
pt(281).ncols     = 1;
pt(281).subsource = 'SS_UINT32';
pt(281).ndims     = '2';
pt(281).size      = '[]';

pt(282).blockname = 'Select_load_mode/Trajectory subsystem/Create_Trajectory/use dominant hand';
pt(282).paramname = 'Value';
pt(282).class     = 'scalar';
pt(282).nrows     = 1;
pt(282).ncols     = 1;
pt(282).subsource = 'SS_DOUBLE';
pt(282).ndims     = '2';
pt(282).size      = '[]';

pt(283).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/coordinate_system_option';
pt(283).paramname = 'Value';
pt(283).class     = 'scalar';
pt(283).nrows     = 1;
pt(283).ncols     = 1;
pt(283).subsource = 'SS_DOUBLE';
pt(283).ndims     = '2';
pt(283).size      = '[]';

pt(284).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/gain choice';
pt(284).paramname = 'Value';
pt(284).class     = 'scalar';
pt(284).nrows     = 1;
pt(284).ncols     = 1;
pt(284).subsource = 'SS_DOUBLE';
pt(284).ndims     = '2';
pt(284).size      = '[]';

pt(285).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/inertia_option';
pt(285).paramname = 'Value';
pt(285).class     = 'scalar';
pt(285).nrows     = 1;
pt(285).ncols     = 1;
pt(285).subsource = 'SS_DOUBLE';
pt(285).ndims     = '2';
pt(285).size      = '[]';

pt(286).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/use dominant hand';
pt(286).paramname = 'Value';
pt(286).class     = 'scalar';
pt(286).nrows     = 1;
pt(286).ncols     = 1;
pt(286).subsource = 'SS_DOUBLE';
pt(286).ndims     = '2';
pt(286).size      = '[]';

pt(287).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/Rate Transition1';
pt(287).paramname = 'X0';
pt(287).class     = 'scalar';
pt(287).nrows     = 1;
pt(287).ncols     = 1;
pt(287).subsource = 'SS_DOUBLE';
pt(287).ndims     = '2';
pt(287).size      = '[]';

pt(288).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/Rate Transition2';
pt(288).paramname = 'X0';
pt(288).class     = 'scalar';
pt(288).nrows     = 1;
pt(288).ncols     = 1;
pt(288).subsource = 'SS_DOUBLE';
pt(288).ndims     = '2';
pt(288).size      = '[]';

pt(289).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/Rate Transition3';
pt(289).paramname = 'X0';
pt(289).class     = 'scalar';
pt(289).nrows     = 1;
pt(289).ncols     = 1;
pt(289).subsource = 'SS_DOUBLE';
pt(289).ndims     = '2';
pt(289).size      = '[]';

pt(290).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/Constant2';
pt(290).paramname = 'Value';
pt(290).class     = 'scalar';
pt(290).nrows     = 1;
pt(290).ncols     = 1;
pt(290).subsource = 'SS_DOUBLE';
pt(290).ndims     = '2';
pt(290).size      = '[]';

pt(291).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/coordinate_system_option';
pt(291).paramname = 'Value';
pt(291).class     = 'scalar';
pt(291).nrows     = 1;
pt(291).ncols     = 1;
pt(291).subsource = 'SS_DOUBLE';
pt(291).ndims     = '2';
pt(291).size      = '[]';

pt(292).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/inertia_option';
pt(292).paramname = 'Value';
pt(292).class     = 'scalar';
pt(292).nrows     = 1;
pt(292).ncols     = 1;
pt(292).subsource = 'SS_DOUBLE';
pt(292).ndims     = '2';
pt(292).size      = '[]';

pt(293).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/use dominant hand';
pt(293).paramname = 'Value';
pt(293).class     = 'scalar';
pt(293).nrows     = 1;
pt(293).ncols     = 1;
pt(293).subsource = 'SS_DOUBLE';
pt(293).ndims     = '2';
pt(293).size      = '[]';

pt(294).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/Rate Transition1';
pt(294).paramname = 'X0';
pt(294).class     = 'scalar';
pt(294).nrows     = 1;
pt(294).ncols     = 1;
pt(294).subsource = 'SS_DOUBLE';
pt(294).ndims     = '2';
pt(294).size      = '[]';

pt(295).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/Rate Transition2';
pt(295).paramname = 'X0';
pt(295).class     = 'scalar';
pt(295).nrows     = 1;
pt(295).ncols     = 1;
pt(295).subsource = 'SS_DOUBLE';
pt(295).ndims     = '2';
pt(295).size      = '[]';

pt(296).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/Rate Transition4';
pt(296).paramname = 'X0';
pt(296).class     = 'scalar';
pt(296).nrows     = 1;
pt(296).ncols     = 1;
pt(296).subsource = 'SS_DOUBLE';
pt(296).ndims     = '2';
pt(296).size      = '[]';

pt(297).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/Switch';
pt(297).paramname = 'Threshold';
pt(297).class     = 'scalar';
pt(297).nrows     = 1;
pt(297).ncols     = 1;
pt(297).subsource = 'SS_DOUBLE';
pt(297).ndims     = '2';
pt(297).size      = '[]';

pt(298).blockname = 'Select_load_mode/Velocity_Loads_EP/2nd Order Butterworth 50Hz/2nd Order Butterworth 50Hz';
pt(298).paramname = 'Numerator';
pt(298).class     = 'vector';
pt(298).nrows     = 1;
pt(298).ncols     = 3;
pt(298).subsource = 'SS_DOUBLE';
pt(298).ndims     = '2';
pt(298).size      = '[]';

pt(299).blockname = 'Select_load_mode/Velocity_Loads_EP/2nd Order Butterworth 50Hz/2nd Order Butterworth 50Hz';
pt(299).paramname = 'Denominator';
pt(299).class     = 'vector';
pt(299).nrows     = 1;
pt(299).ncols     = 3;
pt(299).subsource = 'SS_DOUBLE';
pt(299).ndims     = '2';
pt(299).size      = '[]';

pt(300).blockname = 'Select_load_mode/Velocity_Loads_EP/2nd Order Butterworth 50Hz/2nd Order Butterworth 50Hz';
pt(300).paramname = 'InitialStates';
pt(300).class     = 'scalar';
pt(300).nrows     = 1;
pt(300).ncols     = 1;
pt(300).subsource = 'SS_DOUBLE';
pt(300).ndims     = '2';
pt(300).size      = '[]';

pt(301).blockname = 'Select_load_mode/Velocity_Loads_EP/2nd Order Butterworth 50Hz/2nd Order Butterworth 50Hz1';
pt(301).paramname = 'Numerator';
pt(301).class     = 'vector';
pt(301).nrows     = 1;
pt(301).ncols     = 3;
pt(301).subsource = 'SS_DOUBLE';
pt(301).ndims     = '2';
pt(301).size      = '[]';

pt(302).blockname = 'Select_load_mode/Velocity_Loads_EP/2nd Order Butterworth 50Hz/2nd Order Butterworth 50Hz1';
pt(302).paramname = 'Denominator';
pt(302).class     = 'vector';
pt(302).nrows     = 1;
pt(302).ncols     = 3;
pt(302).subsource = 'SS_DOUBLE';
pt(302).ndims     = '2';
pt(302).size      = '[]';

pt(303).blockname = 'Select_load_mode/Velocity_Loads_EP/2nd Order Butterworth 50Hz/2nd Order Butterworth 50Hz1';
pt(303).paramname = 'InitialStates';
pt(303).class     = 'scalar';
pt(303).nrows     = 1;
pt(303).ncols     = 1;
pt(303).subsource = 'SS_DOUBLE';
pt(303).ndims     = '2';
pt(303).size      = '[]';

pt(304).blockname = 'Select_load_mode/Velocity_Loads_EP/2nd Order Butterworth 50Hz/2nd Order Butterworth 50Hz2';
pt(304).paramname = 'Numerator';
pt(304).class     = 'vector';
pt(304).nrows     = 1;
pt(304).ncols     = 3;
pt(304).subsource = 'SS_DOUBLE';
pt(304).ndims     = '2';
pt(304).size      = '[]';

pt(305).blockname = 'Select_load_mode/Velocity_Loads_EP/2nd Order Butterworth 50Hz/2nd Order Butterworth 50Hz2';
pt(305).paramname = 'Denominator';
pt(305).class     = 'vector';
pt(305).nrows     = 1;
pt(305).ncols     = 3;
pt(305).subsource = 'SS_DOUBLE';
pt(305).ndims     = '2';
pt(305).size      = '[]';

pt(306).blockname = 'Select_load_mode/Velocity_Loads_EP/2nd Order Butterworth 50Hz/2nd Order Butterworth 50Hz2';
pt(306).paramname = 'InitialStates';
pt(306).class     = 'scalar';
pt(306).nrows     = 1;
pt(306).ncols     = 1;
pt(306).subsource = 'SS_DOUBLE';
pt(306).ndims     = '2';
pt(306).size      = '[]';

pt(307).blockname = 'Select_load_mode/Velocity_Loads_EP/2nd Order Butterworth 50Hz/2nd Order Butterworth 50Hz3';
pt(307).paramname = 'Numerator';
pt(307).class     = 'vector';
pt(307).nrows     = 1;
pt(307).ncols     = 3;
pt(307).subsource = 'SS_DOUBLE';
pt(307).ndims     = '2';
pt(307).size      = '[]';

pt(308).blockname = 'Select_load_mode/Velocity_Loads_EP/2nd Order Butterworth 50Hz/2nd Order Butterworth 50Hz3';
pt(308).paramname = 'Denominator';
pt(308).class     = 'vector';
pt(308).nrows     = 1;
pt(308).ncols     = 3;
pt(308).subsource = 'SS_DOUBLE';
pt(308).ndims     = '2';
pt(308).size      = '[]';

pt(309).blockname = 'Select_load_mode/Velocity_Loads_EP/2nd Order Butterworth 50Hz/2nd Order Butterworth 50Hz3';
pt(309).paramname = 'InitialStates';
pt(309).class     = 'scalar';
pt(309).nrows     = 1;
pt(309).ncols     = 1;
pt(309).subsource = 'SS_DOUBLE';
pt(309).ndims     = '2';
pt(309).size      = '[]';

pt(310).blockname = 'DataLogging/Create Task State Subsystem/Counter Free-Running/Increment Real World/FixPt Constant';
pt(310).paramname = 'Value';
pt(310).class     = 'scalar';
pt(310).nrows     = 1;
pt(310).ncols     = 1;
pt(310).subsource = 'SS_UINT32';
pt(310).ndims     = '2';
pt(310).size      = '[]';

pt(311).blockname = 'DataLogging/Create Task State Subsystem/Counter Free-Running/Wrap To Zero/Constant';
pt(311).paramname = 'Value';
pt(311).class     = 'scalar';
pt(311).nrows     = 1;
pt(311).ncols     = 1;
pt(311).subsource = 'SS_UINT32';
pt(311).ndims     = '2';
pt(311).size      = '[]';

pt(312).blockname = 'DataLogging/Create Task State Subsystem/Counter Free-Running/Wrap To Zero/FixPt Switch';
pt(312).paramname = 'Threshold';
pt(312).class     = 'scalar';
pt(312).nrows     = 1;
pt(312).ncols     = 1;
pt(312).subsource = 'SS_UINT32';
pt(312).ndims     = '2';
pt(312).size      = '[]';

pt(313).blockname = 'DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Counter/Constant';
pt(313).paramname = 'Value';
pt(313).class     = 'scalar';
pt(313).nrows     = 1;
pt(313).ncols     = 1;
pt(313).subsource = 'SS_DOUBLE';
pt(313).ndims     = '2';
pt(313).size      = '[]';

pt(314).blockname = 'DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Counter/Unit Delay';
pt(314).paramname = 'InitialCondition';
pt(314).class     = 'scalar';
pt(314).nrows     = 1;
pt(314).ncols     = 1;
pt(314).subsource = 'SS_DOUBLE';
pt(314).ndims     = '2';
pt(314).size      = '[]';

pt(315).blockname = 'DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Counter Free-Running/Output';
pt(315).paramname = 'InitialCondition';
pt(315).class     = 'scalar';
pt(315).nrows     = 1;
pt(315).ncols     = 1;
pt(315).subsource = 'SS_UINT32';
pt(315).ndims     = '2';
pt(315).size      = '[]';

pt(316).blockname = 'DataLogging/Poll KINARM/DPRAM Access Subsystem/Counter Free-Running/Output';
pt(316).paramname = 'InitialCondition';
pt(316).class     = 'scalar';
pt(316).nrows     = 1;
pt(316).ncols     = 1;
pt(316).subsource = 'SS_UINT16';
pt(316).ndims     = '2';
pt(316).size      = '[]';

pt(317).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Constant';
pt(317).paramname = 'Value';
pt(317).class     = 'vector';
pt(317).nrows     = 1;
pt(317).ncols     = 7;
pt(317).subsource = 'SS_DOUBLE';
pt(317).ndims     = '2';
pt(317).size      = '[]';

pt(318).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Receive from Robot 1 Force Sensor';
pt(318).paramname = 'P1';
pt(318).class     = 'vector';
pt(318).nrows     = 1;
pt(318).ncols     = 12;
pt(318).subsource = 'SS_DOUBLE';
pt(318).ndims     = '2';
pt(318).size      = '[]';

pt(319).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Receive from Robot 1 Force Sensor';
pt(319).paramname = 'P2';
pt(319).class     = 'scalar';
pt(319).nrows     = 1;
pt(319).ncols     = 1;
pt(319).subsource = 'SS_DOUBLE';
pt(319).ndims     = '2';
pt(319).size      = '[]';

pt(320).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Receive from Robot 1 Force Sensor';
pt(320).paramname = 'P3';
pt(320).class     = 'scalar';
pt(320).nrows     = 1;
pt(320).ncols     = 1;
pt(320).subsource = 'SS_DOUBLE';
pt(320).ndims     = '2';
pt(320).size      = '[]';

pt(321).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Receive from Robot 1 Force Sensor';
pt(321).paramname = 'P4';
pt(321).class     = 'scalar';
pt(321).nrows     = 1;
pt(321).ncols     = 1;
pt(321).subsource = 'SS_DOUBLE';
pt(321).ndims     = '2';
pt(321).size      = '[]';

pt(322).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Receive from Robot 1 Force Sensor';
pt(322).paramname = 'P5';
pt(322).class     = 'scalar';
pt(322).nrows     = 1;
pt(322).ncols     = 1;
pt(322).subsource = 'SS_DOUBLE';
pt(322).ndims     = '2';
pt(322).size      = '[]';

pt(323).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Switch';
pt(323).paramname = 'Threshold';
pt(323).class     = 'scalar';
pt(323).nrows     = 1;
pt(323).ncols     = 1;
pt(323).subsource = 'SS_DOUBLE';
pt(323).ndims     = '2';
pt(323).size      = '[]';

pt(324).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Constant1';
pt(324).paramname = 'Value';
pt(324).class     = 'vector';
pt(324).nrows     = 1;
pt(324).ncols     = 7;
pt(324).subsource = 'SS_DOUBLE';
pt(324).ndims     = '2';
pt(324).size      = '[]';

pt(325).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Receive from Robot 2 Force Sensor';
pt(325).paramname = 'P1';
pt(325).class     = 'vector';
pt(325).nrows     = 1;
pt(325).ncols     = 12;
pt(325).subsource = 'SS_DOUBLE';
pt(325).ndims     = '2';
pt(325).size      = '[]';

pt(326).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Receive from Robot 2 Force Sensor';
pt(326).paramname = 'P2';
pt(326).class     = 'scalar';
pt(326).nrows     = 1;
pt(326).ncols     = 1;
pt(326).subsource = 'SS_DOUBLE';
pt(326).ndims     = '2';
pt(326).size      = '[]';

pt(327).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Receive from Robot 2 Force Sensor';
pt(327).paramname = 'P3';
pt(327).class     = 'scalar';
pt(327).nrows     = 1;
pt(327).ncols     = 1;
pt(327).subsource = 'SS_DOUBLE';
pt(327).ndims     = '2';
pt(327).size      = '[]';

pt(328).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Receive from Robot 2 Force Sensor';
pt(328).paramname = 'P4';
pt(328).class     = 'scalar';
pt(328).nrows     = 1;
pt(328).ncols     = 1;
pt(328).subsource = 'SS_DOUBLE';
pt(328).ndims     = '2';
pt(328).size      = '[]';

pt(329).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Receive from Robot 2 Force Sensor';
pt(329).paramname = 'P5';
pt(329).class     = 'scalar';
pt(329).nrows     = 1;
pt(329).ncols     = 1;
pt(329).subsource = 'SS_DOUBLE';
pt(329).ndims     = '2';
pt(329).size      = '[]';

pt(330).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Switch1';
pt(330).paramname = 'Threshold';
pt(330).class     = 'scalar';
pt(330).nrows     = 1;
pt(330).ncols     = 1;
pt(330).subsource = 'SS_DOUBLE';
pt(330).ndims     = '2';
pt(330).size      = '[]';

pt(331).blockname = 'Select_load_mode/Trajectory subsystem/Create_Trajectory/Detect Change/Delay Input1';
pt(331).paramname = 'InitialCondition';
pt(331).class     = 'scalar';
pt(331).nrows     = 1;
pt(331).ncols     = 1;
pt(331).subsource = 'SS_BOOLEAN';
pt(331).ndims     = '2';
pt(331).size      = '[]';

pt(332).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth';
pt(332).paramname = 'Numerator';
pt(332).class     = 'vector';
pt(332).nrows     = 1;
pt(332).ncols     = 3;
pt(332).subsource = 'SS_DOUBLE';
pt(332).ndims     = '2';
pt(332).size      = '[]';

pt(333).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth';
pt(333).paramname = 'Denominator';
pt(333).class     = 'vector';
pt(333).nrows     = 1;
pt(333).ncols     = 3;
pt(333).subsource = 'SS_DOUBLE';
pt(333).ndims     = '2';
pt(333).size      = '[]';

pt(334).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth';
pt(334).paramname = 'InitialStates';
pt(334).class     = 'scalar';
pt(334).nrows     = 1;
pt(334).ncols     = 1;
pt(334).subsource = 'SS_DOUBLE';
pt(334).ndims     = '2';
pt(334).size      = '[]';

pt(335).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth1';
pt(335).paramname = 'Numerator';
pt(335).class     = 'vector';
pt(335).nrows     = 1;
pt(335).ncols     = 3;
pt(335).subsource = 'SS_DOUBLE';
pt(335).ndims     = '2';
pt(335).size      = '[]';

pt(336).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth1';
pt(336).paramname = 'Denominator';
pt(336).class     = 'vector';
pt(336).nrows     = 1;
pt(336).ncols     = 3;
pt(336).subsource = 'SS_DOUBLE';
pt(336).ndims     = '2';
pt(336).size      = '[]';

pt(337).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth1';
pt(337).paramname = 'InitialStates';
pt(337).class     = 'scalar';
pt(337).nrows     = 1;
pt(337).ncols     = 1;
pt(337).subsource = 'SS_DOUBLE';
pt(337).ndims     = '2';
pt(337).size      = '[]';

pt(338).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth2';
pt(338).paramname = 'Numerator';
pt(338).class     = 'vector';
pt(338).nrows     = 1;
pt(338).ncols     = 3;
pt(338).subsource = 'SS_DOUBLE';
pt(338).ndims     = '2';
pt(338).size      = '[]';

pt(339).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth2';
pt(339).paramname = 'Denominator';
pt(339).class     = 'vector';
pt(339).nrows     = 1;
pt(339).ncols     = 3;
pt(339).subsource = 'SS_DOUBLE';
pt(339).ndims     = '2';
pt(339).size      = '[]';

pt(340).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth2';
pt(340).paramname = 'InitialStates';
pt(340).class     = 'scalar';
pt(340).nrows     = 1;
pt(340).ncols     = 1;
pt(340).subsource = 'SS_DOUBLE';
pt(340).ndims     = '2';
pt(340).size      = '[]';

pt(341).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth3';
pt(341).paramname = 'Numerator';
pt(341).class     = 'vector';
pt(341).nrows     = 1;
pt(341).ncols     = 3;
pt(341).subsource = 'SS_DOUBLE';
pt(341).ndims     = '2';
pt(341).size      = '[]';

pt(342).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth3';
pt(342).paramname = 'Denominator';
pt(342).class     = 'vector';
pt(342).nrows     = 1;
pt(342).ncols     = 3;
pt(342).subsource = 'SS_DOUBLE';
pt(342).ndims     = '2';
pt(342).size      = '[]';

pt(343).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth3';
pt(343).paramname = 'InitialStates';
pt(343).class     = 'scalar';
pt(343).nrows     = 1;
pt(343).ncols     = 1;
pt(343).subsource = 'SS_DOUBLE';
pt(343).ndims     = '2';
pt(343).size      = '[]';

pt(344).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Constant';
pt(344).paramname = 'Value';
pt(344).class     = 'vector';
pt(344).nrows     = 1;
pt(344).ncols     = 2;
pt(344).subsource = 'SS_DOUBLE';
pt(344).ndims     = '2';
pt(344).size      = '[]';

pt(345).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Switch1';
pt(345).paramname = 'Threshold';
pt(345).class     = 'scalar';
pt(345).nrows     = 1;
pt(345).ncols     = 1;
pt(345).subsource = 'SS_UINT8';
pt(345).ndims     = '2';
pt(345).size      = '[]';

pt(346).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/10 Hz Filter/2nd order 10Hz Butterworth @ 2kHz';
pt(346).paramname = 'Numerator';
pt(346).class     = 'vector';
pt(346).nrows     = 1;
pt(346).ncols     = 3;
pt(346).subsource = 'SS_DOUBLE';
pt(346).ndims     = '2';
pt(346).size      = '[]';

pt(347).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/10 Hz Filter/2nd order 10Hz Butterworth @ 2kHz';
pt(347).paramname = 'Denominator';
pt(347).class     = 'vector';
pt(347).nrows     = 1;
pt(347).ncols     = 3;
pt(347).subsource = 'SS_DOUBLE';
pt(347).ndims     = '2';
pt(347).size      = '[]';

pt(348).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/10 Hz Filter/2nd order 10Hz Butterworth @ 2kHz';
pt(348).paramname = 'InitialStates';
pt(348).class     = 'scalar';
pt(348).nrows     = 1;
pt(348).ncols     = 1;
pt(348).subsource = 'SS_DOUBLE';
pt(348).ndims     = '2';
pt(348).size      = '[]';

pt(349).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/10 Hz Filter/2nd order 10Hz Butterworth @ 2kHz1';
pt(349).paramname = 'Numerator';
pt(349).class     = 'vector';
pt(349).nrows     = 1;
pt(349).ncols     = 3;
pt(349).subsource = 'SS_DOUBLE';
pt(349).ndims     = '2';
pt(349).size      = '[]';

pt(350).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/10 Hz Filter/2nd order 10Hz Butterworth @ 2kHz1';
pt(350).paramname = 'Denominator';
pt(350).class     = 'vector';
pt(350).nrows     = 1;
pt(350).ncols     = 3;
pt(350).subsource = 'SS_DOUBLE';
pt(350).ndims     = '2';
pt(350).size      = '[]';

pt(351).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/10 Hz Filter/2nd order 10Hz Butterworth @ 2kHz1';
pt(351).paramname = 'InitialStates';
pt(351).class     = 'scalar';
pt(351).nrows     = 1;
pt(351).ncols     = 1;
pt(351).subsource = 'SS_DOUBLE';
pt(351).ndims     = '2';
pt(351).size      = '[]';

pt(352).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/10 Hz Filter/2nd order 10Hz Butterworth @ 2kHz2';
pt(352).paramname = 'Numerator';
pt(352).class     = 'vector';
pt(352).nrows     = 1;
pt(352).ncols     = 3;
pt(352).subsource = 'SS_DOUBLE';
pt(352).ndims     = '2';
pt(352).size      = '[]';

pt(353).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/10 Hz Filter/2nd order 10Hz Butterworth @ 2kHz2';
pt(353).paramname = 'Denominator';
pt(353).class     = 'vector';
pt(353).nrows     = 1;
pt(353).ncols     = 3;
pt(353).subsource = 'SS_DOUBLE';
pt(353).ndims     = '2';
pt(353).size      = '[]';

pt(354).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/10 Hz Filter/2nd order 10Hz Butterworth @ 2kHz2';
pt(354).paramname = 'InitialStates';
pt(354).class     = 'scalar';
pt(354).nrows     = 1;
pt(354).ncols     = 1;
pt(354).subsource = 'SS_DOUBLE';
pt(354).ndims     = '2';
pt(354).size      = '[]';

pt(355).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/10 Hz Filter/2nd order 10Hz Butterworth @ 2kHz3';
pt(355).paramname = 'Numerator';
pt(355).class     = 'vector';
pt(355).nrows     = 1;
pt(355).ncols     = 3;
pt(355).subsource = 'SS_DOUBLE';
pt(355).ndims     = '2';
pt(355).size      = '[]';

pt(356).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/10 Hz Filter/2nd order 10Hz Butterworth @ 2kHz3';
pt(356).paramname = 'Denominator';
pt(356).class     = 'vector';
pt(356).nrows     = 1;
pt(356).ncols     = 3;
pt(356).subsource = 'SS_DOUBLE';
pt(356).ndims     = '2';
pt(356).size      = '[]';

pt(357).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/10 Hz Filter/2nd order 10Hz Butterworth @ 2kHz3';
pt(357).paramname = 'InitialStates';
pt(357).class     = 'scalar';
pt(357).nrows     = 1;
pt(357).ncols     = 1;
pt(357).subsource = 'SS_DOUBLE';
pt(357).ndims     = '2';
pt(357).size      = '[]';

pt(358).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth';
pt(358).paramname = 'Numerator';
pt(358).class     = 'vector';
pt(358).nrows     = 1;
pt(358).ncols     = 3;
pt(358).subsource = 'SS_DOUBLE';
pt(358).ndims     = '2';
pt(358).size      = '[]';

pt(359).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth';
pt(359).paramname = 'Denominator';
pt(359).class     = 'vector';
pt(359).nrows     = 1;
pt(359).ncols     = 3;
pt(359).subsource = 'SS_DOUBLE';
pt(359).ndims     = '2';
pt(359).size      = '[]';

pt(360).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth';
pt(360).paramname = 'InitialStates';
pt(360).class     = 'scalar';
pt(360).nrows     = 1;
pt(360).ncols     = 1;
pt(360).subsource = 'SS_DOUBLE';
pt(360).ndims     = '2';
pt(360).size      = '[]';

pt(361).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth1';
pt(361).paramname = 'Numerator';
pt(361).class     = 'vector';
pt(361).nrows     = 1;
pt(361).ncols     = 3;
pt(361).subsource = 'SS_DOUBLE';
pt(361).ndims     = '2';
pt(361).size      = '[]';

pt(362).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth1';
pt(362).paramname = 'Denominator';
pt(362).class     = 'vector';
pt(362).nrows     = 1;
pt(362).ncols     = 3;
pt(362).subsource = 'SS_DOUBLE';
pt(362).ndims     = '2';
pt(362).size      = '[]';

pt(363).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth1';
pt(363).paramname = 'InitialStates';
pt(363).class     = 'scalar';
pt(363).nrows     = 1;
pt(363).ncols     = 1;
pt(363).subsource = 'SS_DOUBLE';
pt(363).ndims     = '2';
pt(363).size      = '[]';

pt(364).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth2';
pt(364).paramname = 'Numerator';
pt(364).class     = 'vector';
pt(364).nrows     = 1;
pt(364).ncols     = 3;
pt(364).subsource = 'SS_DOUBLE';
pt(364).ndims     = '2';
pt(364).size      = '[]';

pt(365).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth2';
pt(365).paramname = 'Denominator';
pt(365).class     = 'vector';
pt(365).nrows     = 1;
pt(365).ncols     = 3;
pt(365).subsource = 'SS_DOUBLE';
pt(365).ndims     = '2';
pt(365).size      = '[]';

pt(366).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth2';
pt(366).paramname = 'InitialStates';
pt(366).class     = 'scalar';
pt(366).nrows     = 1;
pt(366).ncols     = 1;
pt(366).subsource = 'SS_DOUBLE';
pt(366).ndims     = '2';
pt(366).size      = '[]';

pt(367).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth3';
pt(367).paramname = 'Numerator';
pt(367).class     = 'vector';
pt(367).nrows     = 1;
pt(367).ncols     = 3;
pt(367).subsource = 'SS_DOUBLE';
pt(367).ndims     = '2';
pt(367).size      = '[]';

pt(368).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth3';
pt(368).paramname = 'Denominator';
pt(368).class     = 'vector';
pt(368).nrows     = 1;
pt(368).ncols     = 3;
pt(368).subsource = 'SS_DOUBLE';
pt(368).ndims     = '2';
pt(368).size      = '[]';

pt(369).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth3';
pt(369).paramname = 'InitialStates';
pt(369).class     = 'scalar';
pt(369).nrows     = 1;
pt(369).ncols     = 1;
pt(369).subsource = 'SS_DOUBLE';
pt(369).ndims     = '2';
pt(369).size      = '[]';

pt(370).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Constant';
pt(370).paramname = 'Value';
pt(370).class     = 'vector';
pt(370).nrows     = 1;
pt(370).ncols     = 2;
pt(370).subsource = 'SS_DOUBLE';
pt(370).ndims     = '2';
pt(370).size      = '[]';

pt(371).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Switch';
pt(371).paramname = 'Threshold';
pt(371).class     = 'scalar';
pt(371).nrows     = 1;
pt(371).ncols     = 1;
pt(371).subsource = 'SS_DOUBLE';
pt(371).ndims     = '2';
pt(371).size      = '[]';

pt(372).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Switch1';
pt(372).paramname = 'Threshold';
pt(372).class     = 'scalar';
pt(372).nrows     = 1;
pt(372).ncols     = 1;
pt(372).subsource = 'SS_UINT8';
pt(372).ndims     = '2';
pt(372).size      = '[]';

pt(373).blockname = 'DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Counter Free-Running/Increment Real World/FixPt Constant';
pt(373).paramname = 'Value';
pt(373).class     = 'scalar';
pt(373).nrows     = 1;
pt(373).ncols     = 1;
pt(373).subsource = 'SS_UINT32';
pt(373).ndims     = '2';
pt(373).size      = '[]';

pt(374).blockname = 'DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Counter Free-Running/Wrap To Zero/Constant';
pt(374).paramname = 'Value';
pt(374).class     = 'scalar';
pt(374).nrows     = 1;
pt(374).ncols     = 1;
pt(374).subsource = 'SS_UINT32';
pt(374).ndims     = '2';
pt(374).size      = '[]';

pt(375).blockname = 'DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Counter Free-Running/Wrap To Zero/FixPt Switch';
pt(375).paramname = 'Threshold';
pt(375).class     = 'scalar';
pt(375).nrows     = 1;
pt(375).ncols     = 1;
pt(375).subsource = 'SS_UINT32';
pt(375).ndims     = '2';
pt(375).size      = '[]';

pt(376).blockname = 'DataLogging/Poll KINARM/DPRAM Access Subsystem/Counter Free-Running/Increment Real World/FixPt Constant';
pt(376).paramname = 'Value';
pt(376).class     = 'scalar';
pt(376).nrows     = 1;
pt(376).ncols     = 1;
pt(376).subsource = 'SS_UINT16';
pt(376).ndims     = '2';
pt(376).size      = '[]';

pt(377).blockname = 'DataLogging/Poll KINARM/DPRAM Access Subsystem/Counter Free-Running/Wrap To Zero/Constant';
pt(377).paramname = 'Value';
pt(377).class     = 'scalar';
pt(377).nrows     = 1;
pt(377).ncols     = 1;
pt(377).subsource = 'SS_UINT16';
pt(377).ndims     = '2';
pt(377).size      = '[]';

pt(378).blockname = 'DataLogging/Poll KINARM/DPRAM Access Subsystem/Counter Free-Running/Wrap To Zero/FixPt Switch';
pt(378).paramname = 'Threshold';
pt(378).class     = 'scalar';
pt(378).nrows     = 1;
pt(378).ncols     = 1;
pt(378).subsource = 'SS_UINT16';
pt(378).ndims     = '2';
pt(378).size      = '[]';

pt(379).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Detect Change/Delay Input1';
pt(379).paramname = 'InitialCondition';
pt(379).class     = 'scalar';
pt(379).nrows     = 1;
pt(379).ncols     = 1;
pt(379).subsource = 'SS_DOUBLE';
pt(379).ndims     = '2';
pt(379).size      = '[]';

pt(380).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Constant';
pt(380).paramname = 'Value';
pt(380).class     = 'scalar';
pt(380).nrows     = 1;
pt(380).ncols     = 1;
pt(380).subsource = 'SS_UINT16';
pt(380).ndims     = '2';
pt(380).size      = '[]';

pt(381).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Constant1';
pt(381).paramname = 'Value';
pt(381).class     = 'scalar';
pt(381).nrows     = 1;
pt(381).ncols     = 1;
pt(381).subsource = 'SS_UINT32';
pt(381).ndims     = '2';
pt(381).size      = '[]';

pt(382).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Constant2';
pt(382).paramname = 'Value';
pt(382).class     = 'scalar';
pt(382).nrows     = 1;
pt(382).ncols     = 1;
pt(382).subsource = 'SS_UINT16';
pt(382).ndims     = '2';
pt(382).size      = '[]';

pt(383).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Constant3';
pt(383).paramname = 'Value';
pt(383).class     = 'scalar';
pt(383).nrows     = 1;
pt(383).ncols     = 1;
pt(383).subsource = 'SS_UINT16';
pt(383).ndims     = '2';
pt(383).size      = '[]';

pt(384).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Send';
pt(384).paramname = 'P1';
pt(384).class     = 'vector';
pt(384).nrows     = 1;
pt(384).ncols     = 12;
pt(384).subsource = 'SS_DOUBLE';
pt(384).ndims     = '2';
pt(384).size      = '[]';

pt(385).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Send';
pt(385).paramname = 'P2';
pt(385).class     = 'scalar';
pt(385).nrows     = 1;
pt(385).ncols     = 1;
pt(385).subsource = 'SS_DOUBLE';
pt(385).ndims     = '2';
pt(385).size      = '[]';

pt(386).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Send';
pt(386).paramname = 'P3';
pt(386).class     = 'scalar';
pt(386).nrows     = 1;
pt(386).ncols     = 1;
pt(386).subsource = 'SS_DOUBLE';
pt(386).ndims     = '2';
pt(386).size      = '[]';

pt(387).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Send';
pt(387).paramname = 'P4';
pt(387).class     = 'scalar';
pt(387).nrows     = 1;
pt(387).ncols     = 1;
pt(387).subsource = 'SS_DOUBLE';
pt(387).ndims     = '2';
pt(387).size      = '[]';

pt(388).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Send';
pt(388).paramname = 'P5';
pt(388).class     = 'scalar';
pt(388).nrows     = 1;
pt(388).ncols     = 1;
pt(388).subsource = 'SS_DOUBLE';
pt(388).ndims     = '2';
pt(388).size      = '[]';

pt(389).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Switch';
pt(389).paramname = 'Threshold';
pt(389).class     = 'scalar';
pt(389).nrows     = 1;
pt(389).ncols     = 1;
pt(389).subsource = 'SS_DOUBLE';
pt(389).ndims     = '2';
pt(389).size      = '[]';

pt(390).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Constant';
pt(390).paramname = 'Value';
pt(390).class     = 'scalar';
pt(390).nrows     = 1;
pt(390).ncols     = 1;
pt(390).subsource = 'SS_UINT16';
pt(390).ndims     = '2';
pt(390).size      = '[]';

pt(391).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Constant1';
pt(391).paramname = 'Value';
pt(391).class     = 'scalar';
pt(391).nrows     = 1;
pt(391).ncols     = 1;
pt(391).subsource = 'SS_UINT32';
pt(391).ndims     = '2';
pt(391).size      = '[]';

pt(392).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Constant2';
pt(392).paramname = 'Value';
pt(392).class     = 'scalar';
pt(392).nrows     = 1;
pt(392).ncols     = 1;
pt(392).subsource = 'SS_UINT16';
pt(392).ndims     = '2';
pt(392).size      = '[]';

pt(393).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Constant3';
pt(393).paramname = 'Value';
pt(393).class     = 'scalar';
pt(393).nrows     = 1;
pt(393).ncols     = 1;
pt(393).subsource = 'SS_UINT16';
pt(393).ndims     = '2';
pt(393).size      = '[]';

pt(394).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Send';
pt(394).paramname = 'P1';
pt(394).class     = 'vector';
pt(394).nrows     = 1;
pt(394).ncols     = 12;
pt(394).subsource = 'SS_DOUBLE';
pt(394).ndims     = '2';
pt(394).size      = '[]';

pt(395).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Send';
pt(395).paramname = 'P2';
pt(395).class     = 'scalar';
pt(395).nrows     = 1;
pt(395).ncols     = 1;
pt(395).subsource = 'SS_DOUBLE';
pt(395).ndims     = '2';
pt(395).size      = '[]';

pt(396).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Send';
pt(396).paramname = 'P3';
pt(396).class     = 'scalar';
pt(396).nrows     = 1;
pt(396).ncols     = 1;
pt(396).subsource = 'SS_DOUBLE';
pt(396).ndims     = '2';
pt(396).size      = '[]';

pt(397).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Send';
pt(397).paramname = 'P4';
pt(397).class     = 'scalar';
pt(397).nrows     = 1;
pt(397).ncols     = 1;
pt(397).subsource = 'SS_DOUBLE';
pt(397).ndims     = '2';
pt(397).size      = '[]';

pt(398).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Send';
pt(398).paramname = 'P5';
pt(398).class     = 'scalar';
pt(398).nrows     = 1;
pt(398).ncols     = 1;
pt(398).subsource = 'SS_DOUBLE';
pt(398).ndims     = '2';
pt(398).size      = '[]';

pt(399).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Switch';
pt(399).paramname = 'Threshold';
pt(399).class     = 'scalar';
pt(399).nrows     = 1;
pt(399).ncols     = 1;
pt(399).subsource = 'SS_DOUBLE';
pt(399).ndims     = '2';
pt(399).size      = '[]';

pt(400).blockname = 'DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Detect Change/Delay Input1';
pt(400).paramname = 'InitialCondition';
pt(400).class     = 'scalar';
pt(400).nrows     = 1;
pt(400).ncols     = 1;
pt(400).subsource = 'SS_DOUBLE';
pt(400).ndims     = '2';
pt(400).size      = '[]';

pt(401).blockname = 'Select_load_mode/Trajectory subsystem/Create_Trajectory/Enable_Disable_Controller/Detect Change/Delay Input1';
pt(401).paramname = 'InitialCondition';
pt(401).class     = 'scalar';
pt(401).nrows     = 1;
pt(401).ncols     = 1;
pt(401).subsource = 'SS_BOOLEAN';
pt(401).ndims     = '2';
pt(401).size      = '[]';

pt(402).blockname = 'Select_load_mode/Trajectory subsystem/Create_Trajectory/Enable_Disable_Controller/Detect Change1/Delay Input1';
pt(402).paramname = 'InitialCondition';
pt(402).class     = 'scalar';
pt(402).nrows     = 1;
pt(402).ncols     = 1;
pt(402).subsource = 'SS_BOOLEAN';
pt(402).ndims     = '2';
pt(402).size      = '[]';

pt(403).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Detect Increase/Delay Input1';
pt(403).paramname = 'InitialCondition';
pt(403).class     = 'scalar';
pt(403).nrows     = 1;
pt(403).ncols     = 1;
pt(403).subsource = 'SS_DOUBLE';
pt(403).ndims     = '2';
pt(403).size      = '[]';

pt(404).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Discrete Derivative/TSamp';
pt(404).paramname = 'WtEt';
pt(404).class     = 'scalar';
pt(404).nrows     = 1;
pt(404).ncols     = 1;
pt(404).subsource = 'SS_DOUBLE';
pt(404).ndims     = '2';
pt(404).size      = '[]';

pt(405).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Discrete Derivative/UD';
pt(405).paramname = 'InitialCondition';
pt(405).class     = 'scalar';
pt(405).nrows     = 1;
pt(405).ncols     = 1;
pt(405).subsource = 'SS_DOUBLE';
pt(405).ndims     = '2';
pt(405).size      = '[]';

pt(406).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Discrete Derivative1/TSamp';
pt(406).paramname = 'WtEt';
pt(406).class     = 'scalar';
pt(406).nrows     = 1;
pt(406).ncols     = 1;
pt(406).subsource = 'SS_DOUBLE';
pt(406).ndims     = '2';
pt(406).size      = '[]';

pt(407).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Discrete Derivative1/UD';
pt(407).paramname = 'InitialCondition';
pt(407).class     = 'scalar';
pt(407).nrows     = 1;
pt(407).ncols     = 1;
pt(407).subsource = 'SS_DOUBLE';
pt(407).ndims     = '2';
pt(407).size      = '[]';

pt(408).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Detect Increase/Delay Input1';
pt(408).paramname = 'InitialCondition';
pt(408).class     = 'scalar';
pt(408).nrows     = 1;
pt(408).ncols     = 1;
pt(408).subsource = 'SS_DOUBLE';
pt(408).ndims     = '2';
pt(408).size      = '[]';

pt(409).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Discrete Derivative/TSamp';
pt(409).paramname = 'WtEt';
pt(409).class     = 'scalar';
pt(409).nrows     = 1;
pt(409).ncols     = 1;
pt(409).subsource = 'SS_DOUBLE';
pt(409).ndims     = '2';
pt(409).size      = '[]';

pt(410).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Discrete Derivative/UD';
pt(410).paramname = 'InitialCondition';
pt(410).class     = 'scalar';
pt(410).nrows     = 1;
pt(410).ncols     = 1;
pt(410).subsource = 'SS_DOUBLE';
pt(410).ndims     = '2';
pt(410).size      = '[]';

pt(411).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Discrete Derivative1/TSamp';
pt(411).paramname = 'WtEt';
pt(411).class     = 'scalar';
pt(411).nrows     = 1;
pt(411).ncols     = 1;
pt(411).subsource = 'SS_DOUBLE';
pt(411).ndims     = '2';
pt(411).size      = '[]';

pt(412).blockname = 'Select_load_mode/Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Discrete Derivative1/UD';
pt(412).paramname = 'InitialCondition';
pt(412).class     = 'scalar';
pt(412).nrows     = 1;
pt(412).ncols     = 1;
pt(412).subsource = 'SS_DOUBLE';
pt(412).ndims     = '2';
pt(412).size      = '[]';

function len = getlenPT
len = 412;

