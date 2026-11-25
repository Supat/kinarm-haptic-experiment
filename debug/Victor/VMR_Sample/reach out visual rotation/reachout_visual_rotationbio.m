function bio=reachout_visual_rotationbio
bio = [];
bio(1).blkName='Trial_Control/p1';
bio(1).sigName='logging_enable';
bio(1).portIdx=0;
bio(1).dim=[1,1];
bio(1).sigWidth=1;
bio(1).sigAddress='&reachout_visual_rotation_B.logging_enable';
bio(1).ndims=2;
bio(1).size=[];

bio(getlenBIO) = bio(1);

bio(2).blkName='Trial_Control/p2';
bio(2).sigName='event_code';
bio(2).portIdx=1;
bio(2).dim=[1,1];
bio(2).sigWidth=1;
bio(2).sigAddress='&reachout_visual_rotation_B.event_code';
bio(2).ndims=2;
bio(2).size=[];


bio(3).blkName='Trial_Control/p3';
bio(3).sigName='targetA_row';
bio(3).portIdx=2;
bio(3).dim=[1,1];
bio(3).sigWidth=1;
bio(3).sigAddress='&reachout_visual_rotation_B.targetA_row';
bio(3).ndims=2;
bio(3).size=[];


bio(4).blkName='Trial_Control/p4';
bio(4).sigName='targetA_state';
bio(4).portIdx=3;
bio(4).dim=[1,1];
bio(4).sigWidth=1;
bio(4).sigAddress='&reachout_visual_rotation_B.targetA_state';
bio(4).ndims=2;
bio(4).size=[];


bio(5).blkName='Trial_Control/p5';
bio(5).sigName='targetB_row';
bio(5).portIdx=4;
bio(5).dim=[1,1];
bio(5).sigWidth=1;
bio(5).sigAddress='&reachout_visual_rotation_B.targetB_row';
bio(5).ndims=2;
bio(5).size=[];


bio(6).blkName='Trial_Control/p6';
bio(6).sigName='targetB_state';
bio(6).portIdx=5;
bio(6).dim=[1,1];
bio(6).sigWidth=1;
bio(6).sigAddress='&reachout_visual_rotation_B.targetB_state';
bio(6).ndims=2;
bio(6).size=[];


bio(7).blkName='Trial_Control/p7';
bio(7).sigName='e_ApplyNewRotation';
bio(7).portIdx=6;
bio(7).dim=[1,1];
bio(7).sigWidth=1;
bio(7).sigAddress='&reachout_visual_rotation_B.e_ApplyNewRotation';
bio(7).ndims=2;
bio(7).size=[];


bio(8).blkName='Trial_Control/p8';
bio(8).sigName='e_Trial_End';
bio(8).portIdx=7;
bio(8).dim=[1,1];
bio(8).sigWidth=1;
bio(8).sigAddress='&reachout_visual_rotation_B.e_Trial_End';
bio(8).ndims=2;
bio(8).size=[];


bio(9).blkName='Matrix Concatenation';
bio(9).sigName='';
bio(9).portIdx=0;
bio(9).dim=[4,70];
bio(9).sigWidth=280;
bio(9).sigAddress='&reachout_visual_rotation_B.MatrixConcatenation_b[0]';
bio(9).ndims=2;
bio(9).size=[];


bio(10).blkName='GUI Control/Library Patch Version';
bio(10).sigName='';
bio(10).portIdx=0;
bio(10).dim=[1,1];
bio(10).sigWidth=1;
bio(10).sigAddress='&reachout_visual_rotation_B.LibraryPatchVersion';
bio(10).ndims=2;
bio(10).size=[];


bio(11).blkName='GUI Control/Library Version';
bio(11).sigName='';
bio(11).portIdx=0;
bio(11).dim=[1,1];
bio(11).sigWidth=1;
bio(11).sigAddress='&reachout_visual_rotation_B.LibraryVersion';
bio(11).ndims=2;
bio(11).size=[];


bio(12).blkName='GUI Control/Next Block';
bio(12).sigName='';
bio(12).portIdx=0;
bio(12).dim=[1,1];
bio(12).sigWidth=1;
bio(12).sigAddress='&reachout_visual_rotation_B.NextBlock';
bio(12).ndims=2;
bio(12).size=[];


bio(13).blkName='GUI Control/Pause Type';
bio(13).sigName='';
bio(13).portIdx=0;
bio(13).dim=[1,1];
bio(13).sigWidth=1;
bio(13).sigAddress='&reachout_visual_rotation_B.PauseType';
bio(13).ndims=2;
bio(13).size=[];


bio(14).blkName='GUI Control/Task Version';
bio(14).sigName='';
bio(14).portIdx=0;
bio(14).dim=[1,1];
bio(14).sigWidth=1;
bio(14).sigAddress='&reachout_visual_rotation_B.TaskVersion';
bio(14).ndims=2;
bio(14).size=[];


bio(15).blkName='GUI Control/Use Task Protocol Block Sequence Flag';
bio(15).sigName='';
bio(15).portIdx=0;
bio(15).dim=[1,1];
bio(15).sigWidth=1;
bio(15).sigAddress='&reachout_visual_rotation_B.UseTaskProtocolBlockSequenceFlag';
bio(15).ndims=2;
bio(15).size=[];


bio(16).blkName='GUI Control/dlm build time';
bio(16).sigName='';
bio(16).portIdx=0;
bio(16).dim=[1,1];
bio(16).sigWidth=1;
bio(16).sigAddress='&reachout_visual_rotation_B.dlmbuildtime';
bio(16).ndims=2;
bio(16).size=[];


bio(17).blkName='GUI Control/xPC Version';
bio(17).sigName='';
bio(17).portIdx=0;
bio(17).dim=[1,1];
bio(17).sigWidth=1;
bio(17).sigAddress='&reachout_visual_rotation_B.xPCVersion';
bio(17).ndims=2;
bio(17).size=[];


bio(18).blkName='GUI Control/Convert';
bio(18).sigName='';
bio(18).portIdx=0;
bio(18).dim=[32,25];
bio(18).sigWidth=800;
bio(18).sigAddress='&reachout_visual_rotation_B.Convert[0]';
bio(18).ndims=2;
bio(18).size=[];


bio(19).blkName='GUI Control/Convert1';
bio(19).sigName='';
bio(19).portIdx=0;
bio(19).dim=[100,50];
bio(19).sigWidth=5000;
bio(19).sigAddress='&reachout_visual_rotation_B.Convert1_g[0]';
bio(19).ndims=2;
bio(19).size=[];


bio(20).blkName='GUI Control/Convert10';
bio(20).sigName='';
bio(20).portIdx=0;
bio(20).dim=[1,2];
bio(20).sigWidth=2;
bio(20).sigAddress='&reachout_visual_rotation_B.Convert10[0]';
bio(20).ndims=2;
bio(20).size=[];


bio(21).blkName='GUI Control/Convert11';
bio(21).sigName='';
bio(21).portIdx=0;
bio(21).dim=[5,2];
bio(21).sigWidth=10;
bio(21).sigAddress='&reachout_visual_rotation_B.Convert11[0]';
bio(21).ndims=2;
bio(21).size=[];


bio(22).blkName='GUI Control/Convert12';
bio(22).sigName='';
bio(22).portIdx=0;
bio(22).dim=[1,1];
bio(22).sigWidth=1;
bio(22).sigAddress='&reachout_visual_rotation_B.Convert12';
bio(22).ndims=2;
bio(22).size=[];


bio(23).blkName='GUI Control/Convert13';
bio(23).sigName='';
bio(23).portIdx=0;
bio(23).dim=[1,3];
bio(23).sigWidth=3;
bio(23).sigAddress='&reachout_visual_rotation_B.Convert13[0]';
bio(23).ndims=2;
bio(23).size=[];


bio(24).blkName='GUI Control/Convert14';
bio(24).sigName='';
bio(24).portIdx=0;
bio(24).dim=[1,2];
bio(24).sigWidth=2;
bio(24).sigAddress='&reachout_visual_rotation_B.Convert14[0]';
bio(24).ndims=2;
bio(24).size=[];


bio(25).blkName='GUI Control/Convert15';
bio(25).sigName='';
bio(25).portIdx=0;
bio(25).dim=[1,1];
bio(25).sigWidth=1;
bio(25).sigAddress='&reachout_visual_rotation_B.Convert15';
bio(25).ndims=2;
bio(25).size=[];


bio(26).blkName='GUI Control/Convert16';
bio(26).sigName='';
bio(26).portIdx=0;
bio(26).dim=[1,1];
bio(26).sigWidth=1;
bio(26).sigAddress='&reachout_visual_rotation_B.Convert16';
bio(26).ndims=2;
bio(26).size=[];


bio(27).blkName='GUI Control/Convert17';
bio(27).sigName='';
bio(27).portIdx=0;
bio(27).dim=[1,1];
bio(27).sigWidth=1;
bio(27).sigAddress='&reachout_visual_rotation_B.Convert17';
bio(27).ndims=2;
bio(27).size=[];


bio(28).blkName='GUI Control/Convert18';
bio(28).sigName='';
bio(28).portIdx=0;
bio(28).dim=[1,1];
bio(28).sigWidth=1;
bio(28).sigAddress='&reachout_visual_rotation_B.Convert18';
bio(28).ndims=2;
bio(28).size=[];


bio(29).blkName='GUI Control/Convert19';
bio(29).sigName='';
bio(29).portIdx=0;
bio(29).dim=[1,1];
bio(29).sigWidth=1;
bio(29).sigAddress='&reachout_visual_rotation_B.Convert19_b';
bio(29).ndims=2;
bio(29).size=[];


bio(30).blkName='GUI Control/Convert2';
bio(30).sigName='';
bio(30).portIdx=0;
bio(30).dim=[20,20];
bio(30).sigWidth=400;
bio(30).sigAddress='&reachout_visual_rotation_B.Convert2_f[0]';
bio(30).ndims=2;
bio(30).size=[];


bio(31).blkName='GUI Control/Convert20';
bio(31).sigName='';
bio(31).portIdx=0;
bio(31).dim=[1,1];
bio(31).sigWidth=1;
bio(31).sigAddress='&reachout_visual_rotation_B.Convert20';
bio(31).ndims=2;
bio(31).size=[];


bio(32).blkName='GUI Control/Convert21';
bio(32).sigName='';
bio(32).portIdx=0;
bio(32).dim=[1,1];
bio(32).sigWidth=1;
bio(32).sigAddress='&reachout_visual_rotation_B.Convert21';
bio(32).ndims=2;
bio(32).size=[];


bio(33).blkName='GUI Control/Convert22';
bio(33).sigName='';
bio(33).portIdx=0;
bio(33).dim=[1,1];
bio(33).sigWidth=1;
bio(33).sigAddress='&reachout_visual_rotation_B.Convert22';
bio(33).ndims=2;
bio(33).size=[];


bio(34).blkName='GUI Control/Convert23';
bio(34).sigName='';
bio(34).portIdx=0;
bio(34).dim=[1,1];
bio(34).sigWidth=1;
bio(34).sigAddress='&reachout_visual_rotation_B.Convert23';
bio(34).ndims=2;
bio(34).size=[];


bio(35).blkName='GUI Control/Convert24';
bio(35).sigName='';
bio(35).portIdx=0;
bio(35).dim=[1,1];
bio(35).sigWidth=1;
bio(35).sigAddress='&reachout_visual_rotation_B.Convert24';
bio(35).ndims=2;
bio(35).size=[];


bio(36).blkName='GUI Control/Convert3';
bio(36).sigName='';
bio(36).portIdx=0;
bio(36).dim=[100,50];
bio(36).sigWidth=5000;
bio(36).sigAddress='&reachout_visual_rotation_B.Convert3_i[0]';
bio(36).ndims=2;
bio(36).size=[];


bio(37).blkName='GUI Control/Convert4';
bio(37).sigName='';
bio(37).portIdx=0;
bio(37).dim=[50,500];
bio(37).sigWidth=25000;
bio(37).sigAddress='&reachout_visual_rotation_B.Convert4_d[0]';
bio(37).ndims=2;
bio(37).size=[];


bio(38).blkName='GUI Control/Convert5';
bio(38).sigName='';
bio(38).portIdx=0;
bio(38).dim=[1000,2];
bio(38).sigWidth=2000;
bio(38).sigAddress='&reachout_visual_rotation_B.Convert5[0]';
bio(38).ndims=2;
bio(38).size=[];


bio(39).blkName='GUI Control/Convert6';
bio(39).sigName='';
bio(39).portIdx=0;
bio(39).dim=[50,1];
bio(39).sigWidth=50;
bio(39).sigAddress='&reachout_visual_rotation_B.Convert6[0]';
bio(39).ndims=2;
bio(39).size=[];


bio(40).blkName='GUI Control/Convert7';
bio(40).sigName='';
bio(40).portIdx=0;
bio(40).dim=[1,1];
bio(40).sigWidth=1;
bio(40).sigAddress='&reachout_visual_rotation_B.Convert7';
bio(40).ndims=2;
bio(40).size=[];


bio(41).blkName='GUI Control/Convert8';
bio(41).sigName='';
bio(41).portIdx=0;
bio(41).dim=[1,1];
bio(41).sigWidth=1;
bio(41).sigAddress='&reachout_visual_rotation_B.Convert8';
bio(41).ndims=2;
bio(41).size=[];


bio(42).blkName='GUI Control/Convert9';
bio(42).sigName='';
bio(42).portIdx=0;
bio(42).dim=[1,2];
bio(42).sigWidth=2;
bio(42).sigAddress='&reachout_visual_rotation_B.Convert9[0]';
bio(42).ndims=2;
bio(42).size=[];


bio(43).blkName='GUI Control/MinMax';
bio(43).sigName='';
bio(43).portIdx=0;
bio(43).dim=[1,1];
bio(43).sigWidth=1;
bio(43).sigAddress='&reachout_visual_rotation_B.MinMax';
bio(43).ndims=2;
bio(43).size=[];


bio(44).blkName='GUI Control/TP Selector';
bio(44).sigName='';
bio(44).portIdx=0;
bio(44).dim=[1,50];
bio(44).sigWidth=50;
bio(44).sigAddress='&reachout_visual_rotation_B.TPSelector[0]';
bio(44).ndims=2;
bio(44).size=[];


bio(45).blkName='Hand_Feedback/FeedFwdArm';
bio(45).sigName='VCODES_out';
bio(45).portIdx=0;
bio(45).dim=[2,70];
bio(45).sigWidth=140;
bio(45).sigAddress='&reachout_visual_rotation_B.VCODES_out[0]';
bio(45).ndims=2;
bio(45).size=[];


bio(46).blkName='Hand_Feedback/Matrix Concatenation';
bio(46).sigName='';
bio(46).portIdx=0;
bio(46).dim=[2,70];
bio(46).sigWidth=140;
bio(46).sigAddress='&reachout_visual_rotation_B.MatrixConcatenation[0]';
bio(46).ndims=2;
bio(46).size=[];


bio(47).blkName='Hand_Feedback/Reshape';
bio(47).sigName='';
bio(47).portIdx=0;
bio(47).dim=[1,70];
bio(47).sigWidth=70;
bio(47).sigAddress='&reachout_visual_rotation_B.Reshape[0]';
bio(47).ndims=2;
bio(47).size=[];


bio(48).blkName='Hand_Feedback/Reshape1';
bio(48).sigName='';
bio(48).portIdx=0;
bio(48).dim=[1,70];
bio(48).sigWidth=70;
bio(48).sigAddress='&reachout_visual_rotation_B.Reshape1[0]';
bio(48).ndims=2;
bio(48).size=[];


bio(49).blkName='KINARM_HandFeedbackInTarget/Embedded MATLAB InsideTarget';
bio(49).sigName='intarget';
bio(49).portIdx=0;
bio(49).dim=[32,4];
bio(49).sigWidth=128;
bio(49).sigAddress='&reachout_visual_rotation_B.intarget[0]';
bio(49).ndims=2;
bio(49).size=[];


bio(50).blkName='KINARM_HandFeedbackInTarget/Embedded MATLAB WhichHand/p1';
bio(50).sigName='hand';
bio(50).portIdx=0;
bio(50).dim=[1,1];
bio(50).sigWidth=1;
bio(50).sigAddress='&reachout_visual_rotation_B.hand';
bio(50).ndims=2;
bio(50).size=[];


bio(51).blkName='KINARM_HandFeedbackInTarget/Embedded MATLAB WhichHand/p2';
bio(51).sigName='cursor';
bio(51).portIdx=1;
bio(51).dim=[1,1];
bio(51).sigWidth=1;
bio(51).sigAddress='&reachout_visual_rotation_B.cursor';
bio(51).ndims=2;
bio(51).size=[];


bio(52).blkName='KINARM_HandFeedbackInTarget/Multiport Switch';
bio(52).sigName='';
bio(52).portIdx=0;
bio(52).dim=[1,2];
bio(52).sigWidth=2;
bio(52).sigAddress='&reachout_visual_rotation_B.MultiportSwitch[0]';
bio(52).ndims=2;
bio(52).size=[];


bio(53).blkName='KINARM_HandFeedbackInTarget/Arm1';
bio(53).sigName='';
bio(53).portIdx=0;
bio(53).dim=[1,2];
bio(53).sigWidth=2;
bio(53).sigAddress='&reachout_visual_rotation_B.Arm1[0]';
bio(53).ndims=2;
bio(53).size=[];


bio(54).blkName='KINARM_HandFeedbackInTarget/Arm2';
bio(54).sigName='';
bio(54).portIdx=0;
bio(54).dim=[1,2];
bio(54).sigWidth=2;
bio(54).sigAddress='&reachout_visual_rotation_B.Arm2[0]';
bio(54).ndims=2;
bio(54).size=[];


bio(55).blkName='KINARM_HandFeedbackInTarget/Array Selector';
bio(55).sigName='';
bio(55).portIdx=0;
bio(55).dim=[32,1];
bio(55).sigWidth=32;
bio(55).sigAddress='&reachout_visual_rotation_B.ArraySelector[0]';
bio(55).ndims=2;
bio(55).size=[];


bio(56).blkName='KINARM_HandFeedbackInTarget/Array_Selector1';
bio(56).sigName='';
bio(56).portIdx=0;
bio(56).dim=[1,2];
bio(56).sigWidth=2;
bio(56).sigAddress='&reachout_visual_rotation_B.Array_Selector1[0]';
bio(56).ndims=2;
bio(56).size=[];


bio(57).blkName='KINARM_HandFeedbackInTarget/Dominant_Arm';
bio(57).sigName='';
bio(57).portIdx=0;
bio(57).dim=[1,1];
bio(57).sigWidth=1;
bio(57).sigAddress='&reachout_visual_rotation_B.Dominant_Arm';
bio(57).ndims=2;
bio(57).size=[];


bio(58).blkName='KINARM_HandFeedbackInTarget/Hand_Pos';
bio(58).sigName='';
bio(58).portIdx=0;
bio(58).dim=[3,2];
bio(58).sigWidth=6;
bio(58).sigAddress='&reachout_visual_rotation_B.Hand_Pos[0]';
bio(58).ndims=2;
bio(58).size=[];


bio(59).blkName='Process_Video_CMD/EML/p1';
bio(59).sigName='VCODEs_out';
bio(59).portIdx=0;
bio(59).dim=[59,70];
bio(59).sigWidth=4130;
bio(59).sigAddress='&reachout_visual_rotation_B.VCODEs_out[0]';
bio(59).ndims=2;
bio(59).size=[];


bio(60).blkName='Process_Video_CMD/EML/p2';
bio(60).sigName='num_used_VCODEs';
bio(60).portIdx=1;
bio(60).dim=[1,1];
bio(60).sigWidth=1;
bio(60).sigAddress='&reachout_visual_rotation_B.num_used_VCODEs';
bio(60).ndims=2;
bio(60).size=[];


bio(61).blkName='Process_Video_CMD/Convert';
bio(61).sigName='';
bio(61).portIdx=0;
bio(61).dim=[1,1];
bio(61).sigWidth=1;
bio(61).sigAddress='&reachout_visual_rotation_B.Convert_o';
bio(61).ndims=2;
bio(61).size=[];


bio(62).blkName='Process_Video_CMD/Convert1';
bio(62).sigName='';
bio(62).portIdx=0;
bio(62).dim=[1,1];
bio(62).sigWidth=1;
bio(62).sigAddress='&reachout_visual_rotation_B.Convert1_m';
bio(62).ndims=2;
bio(62).size=[];


bio(63).blkName='Process_Video_CMD/VCODE_Buffer';
bio(63).sigName='';
bio(63).portIdx=0;
bio(63).dim=[725,1];
bio(63).sigWidth=725;
bio(63).sigAddress='&reachout_visual_rotation_B.VCODE_Buffer[0]';
bio(63).ndims=2;
bio(63).size=[];


bio(64).blkName='Process_Video_CMD/Byte Reversal';
bio(64).sigName='';
bio(64).portIdx=0;
bio(64).dim=[725,1];
bio(64).sigWidth=725;
bio(64).sigAddress='&reachout_visual_rotation_B.ByteReversal_i[0]';
bio(64).ndims=2;
bio(64).size=[];


bio(65).blkName='Process_Video_CMD/Pack';
bio(65).sigName='';
bio(65).portIdx=0;
bio(65).dim=[2900,1];
bio(65).sigWidth=2900;
bio(65).sigAddress='&reachout_visual_rotation_B.Pack_e[0]';
bio(65).ndims=2;
bio(65).size=[];


bio(66).blkName='Process_Video_CMD/Receive/p1';
bio(66).sigName='';
bio(66).portIdx=0;
bio(66).dim=[4,1];
bio(66).sigWidth=4;
bio(66).sigAddress='&reachout_visual_rotation_B.Receive_o1_f[0]';
bio(66).ndims=2;
bio(66).size=[];


bio(67).blkName='Process_Video_CMD/Receive/p2';
bio(67).sigName='';
bio(67).portIdx=1;
bio(67).dim=[1,1];
bio(67).sigWidth=1;
bio(67).sigAddress='&reachout_visual_rotation_B.Receive_o2_m';
bio(67).ndims=2;
bio(67).size=[];


bio(68).blkName='Process_Video_CMD/Unpack';
bio(68).sigName='';
bio(68).portIdx=0;
bio(68).dim=[1,1];
bio(68).sigWidth=1;
bio(68).sigAddress='&reachout_visual_rotation_B.Unpack_b';
bio(68).ndims=2;
bio(68).size=[];


bio(69).blkName='Show_Target/Embedded MATLAB Function';
bio(69).sigName='VCODE';
bio(69).portIdx=0;
bio(69).dim=[1,70];
bio(69).sigWidth=70;
bio(69).sigAddress='&reachout_visual_rotation_B.sf_EmbeddedMATLABFunction_l.VCODE[0]';
bio(69).ndims=2;
bio(69).size=[];


bio(70).blkName='Show_Target/Matrix Concatenation';
bio(70).sigName='';
bio(70).portIdx=0;
bio(70).dim=[5,11];
bio(70).sigWidth=55;
bio(70).sigAddress='&reachout_visual_rotation_B.MatrixConcatenation1[0]';
bio(70).ndims=2;
bio(70).size=[];


bio(71).blkName='Show_Target/Matrix Concatenation1';
bio(71).sigName='';
bio(71).portIdx=0;
bio(71).dim=[5,11];
bio(71).sigWidth=55;
bio(71).sigAddress='&reachout_visual_rotation_B.MatrixConcatenation1[0]';
bio(71).ndims=2;
bio(71).size=[];


bio(72).blkName='Show_Target/padder';
bio(72).sigName='';
bio(72).portIdx=0;
bio(72).dim=[5,11];
bio(72).sigWidth=55;
bio(72).sigAddress='&reachout_visual_rotation_B.MatrixConcatenation1[0]';
bio(72).ndims=2;
bio(72).size=[];


bio(73).blkName='Show_Target/Selector';
bio(73).sigName='';
bio(73).portIdx=0;
bio(73).dim=[1,25];
bio(73).sigWidth=25;
bio(73).sigAddress='&reachout_visual_rotation_B.Selector[0]';
bio(73).ndims=2;
bio(73).size=[];


bio(74).blkName='Show_Target1/Embedded MATLAB Function';
bio(74).sigName='VCODE';
bio(74).portIdx=0;
bio(74).dim=[1,70];
bio(74).sigWidth=70;
bio(74).sigAddress='&reachout_visual_rotation_B.sf_EmbeddedMATLABFunction_p.VCODE[0]';
bio(74).ndims=2;
bio(74).size=[];


bio(75).blkName='Show_Target1/Matrix Concatenation';
bio(75).sigName='';
bio(75).portIdx=0;
bio(75).dim=[5,11];
bio(75).sigWidth=55;
bio(75).sigAddress='&reachout_visual_rotation_B.MatrixConcatenation1_i[0]';
bio(75).ndims=2;
bio(75).size=[];


bio(76).blkName='Show_Target1/Matrix Concatenation1';
bio(76).sigName='';
bio(76).portIdx=0;
bio(76).dim=[5,11];
bio(76).sigWidth=55;
bio(76).sigAddress='&reachout_visual_rotation_B.MatrixConcatenation1_i[0]';
bio(76).ndims=2;
bio(76).size=[];


bio(77).blkName='Show_Target1/padder';
bio(77).sigName='';
bio(77).portIdx=0;
bio(77).dim=[5,11];
bio(77).sigWidth=55;
bio(77).sigAddress='&reachout_visual_rotation_B.MatrixConcatenation1_i[0]';
bio(77).ndims=2;
bio(77).size=[];


bio(78).blkName='Show_Target1/Selector';
bio(78).sigName='';
bio(78).portIdx=0;
bio(78).dim=[1,25];
bio(78).sigWidth=25;
bio(78).sigAddress='&reachout_visual_rotation_B.Selector_b[0]';
bio(78).ndims=2;
bio(78).size=[];


bio(79).blkName='Visual_Rotation/Embedded MATLAB Function/p1';
bio(79).sigName='VCODES';
bio(79).portIdx=0;
bio(79).dim=[2,70];
bio(79).sigWidth=140;
bio(79).sigAddress='&reachout_visual_rotation_B.VCODES[0]';
bio(79).ndims=2;
bio(79).size=[];


bio(80).blkName='Visual_Rotation/Embedded MATLAB Function/p2';
bio(80).sigName='CursorPos';
bio(80).portIdx=1;
bio(80).dim=[2,2];
bio(80).sigWidth=4;
bio(80).sigAddress='&reachout_visual_rotation_B.CursorPos[0]';
bio(80).ndims=2;
bio(80).size=[];


bio(81).blkName='Visual_Rotation/Memory';
bio(81).sigName='';
bio(81).portIdx=0;
bio(81).dim=[1,50];
bio(81).sigWidth=50;
bio(81).sigAddress='&reachout_visual_rotation_B.Memory_d[0]';
bio(81).ndims=2;
bio(81).size=[];


bio(82).blkName='Visual_Rotation/Memory2';
bio(82).sigName='';
bio(82).portIdx=0;
bio(82).dim=[1,1];
bio(82).sigWidth=1;
bio(82).sigAddress='&reachout_visual_rotation_B.Memory2';
bio(82).ndims=2;
bio(82).size=[];


bio(83).blkName='DataLogging/Create Analog Inputs Subsystem/Analog Data';
bio(83).sigName='';
bio(83).portIdx=0;
bio(83).dim=[1,1];
bio(83).sigWidth=1;
bio(83).sigAddress='&reachout_visual_rotation_B.AnalogData';
bio(83).ndims=2;
bio(83).size=[];


bio(84).blkName='DataLogging/Create Analog Inputs Subsystem/Analog Data Width';
bio(84).sigName='';
bio(84).portIdx=0;
bio(84).dim=[1,1];
bio(84).sigWidth=1;
bio(84).sigAddress='&reachout_visual_rotation_B.AnalogDataWidth';
bio(84).ndims=2;
bio(84).size=[];


bio(85).blkName='DataLogging/Create Analog Inputs Subsystem/Rate Transition9';
bio(85).sigName='';
bio(85).portIdx=0;
bio(85).dim=[2,1];
bio(85).sigWidth=2;
bio(85).sigAddress='&reachout_visual_rotation_B.RateTransition9_b[0]';
bio(85).ndims=2;
bio(85).size=[];


bio(86).blkName='DataLogging/Create Analog Inputs Subsystem/Subtract';
bio(86).sigName='';
bio(86).portIdx=0;
bio(86).dim=[1,1];
bio(86).sigWidth=1;
bio(86).sigAddress='&reachout_visual_rotation_B.Subtract_h';
bio(86).ndims=2;
bio(86).size=[];


bio(87).blkName='DataLogging/Create Analog Inputs Subsystem/Width';
bio(87).sigName='';
bio(87).portIdx=0;
bio(87).dim=[1,1];
bio(87).sigWidth=1;
bio(87).sigAddress='&reachout_visual_rotation_B.Width_a';
bio(87).ndims=2;
bio(87).size=[];


bio(88).blkName='DataLogging/Create Custom Data Subsystem/Custom Data';
bio(88).sigName='';
bio(88).portIdx=0;
bio(88).dim=[4,1];
bio(88).sigWidth=4;
bio(88).sigAddress='&reachout_visual_rotation_B.CustomData[0]';
bio(88).ndims=2;
bio(88).size=[];


bio(89).blkName='DataLogging/Create Custom Data Subsystem/Custom Data Width';
bio(89).sigName='';
bio(89).portIdx=0;
bio(89).dim=[1,1];
bio(89).sigWidth=1;
bio(89).sigAddress='&reachout_visual_rotation_B.CustomDataWidth';
bio(89).ndims=2;
bio(89).size=[];


bio(90).blkName='DataLogging/Create Custom Data Subsystem/Rate Transition9';
bio(90).sigName='';
bio(90).portIdx=0;
bio(90).dim=[5,1];
bio(90).sigWidth=5;
bio(90).sigAddress='&reachout_visual_rotation_B.RateTransition9_i[0]';
bio(90).ndims=2;
bio(90).size=[];


bio(91).blkName='DataLogging/Create Custom Data Subsystem/Width';
bio(91).sigName='';
bio(91).portIdx=0;
bio(91).dim=[1,1];
bio(91).sigWidth=1;
bio(91).sigAddress='&reachout_visual_rotation_B.Width_g';
bio(91).ndims=2;
bio(91).size=[];


bio(92).blkName='DataLogging/Create Event Codes Subsystem/Event Codes';
bio(92).sigName='';
bio(92).portIdx=0;
bio(92).dim=[1,1];
bio(92).sigWidth=1;
bio(92).sigAddress='&reachout_visual_rotation_B.EventCodes';
bio(92).ndims=2;
bio(92).size=[];


bio(93).blkName='DataLogging/Create Event Codes Subsystem/Number of Event Codes';
bio(93).sigName='';
bio(93).portIdx=0;
bio(93).dim=[1,1];
bio(93).sigWidth=1;
bio(93).sigAddress='&reachout_visual_rotation_B.NumberofEventCodes';
bio(93).ndims=2;
bio(93).size=[];


bio(94).blkName='DataLogging/Create Event Codes Subsystem/Rate Transition9';
bio(94).sigName='';
bio(94).portIdx=0;
bio(94).dim=[2,1];
bio(94).sigWidth=2;
bio(94).sigAddress='&reachout_visual_rotation_B.RateTransition9[0]';
bio(94).ndims=2;
bio(94).size=[];


bio(95).blkName='DataLogging/Create Event Codes Subsystem/Subtract';
bio(95).sigName='';
bio(95).portIdx=0;
bio(95).dim=[1,1];
bio(95).sigWidth=1;
bio(95).sigAddress='&reachout_visual_rotation_B.Subtract';
bio(95).ndims=2;
bio(95).size=[];


bio(96).blkName='DataLogging/Create Event Codes Subsystem/Width';
bio(96).sigName='';
bio(96).portIdx=0;
bio(96).dim=[1,1];
bio(96).sigWidth=1;
bio(96).sigAddress='&reachout_visual_rotation_B.Width';
bio(96).ndims=2;
bio(96).size=[];


bio(97).blkName='DataLogging/Create KINARM Data Subsystem/Arm Kinematics';
bio(97).sigName='';
bio(97).portIdx=0;
bio(97).dim=[1,55];
bio(97).sigWidth=55;
bio(97).sigAddress='&reachout_visual_rotation_B.ArmKinematics[0]';
bio(97).ndims=2;
bio(97).size=[];


bio(98).blkName='DataLogging/Create KINARM Data Subsystem/Kinarm Data Width';
bio(98).sigName='';
bio(98).portIdx=0;
bio(98).dim=[1,1];
bio(98).sigWidth=1;
bio(98).sigAddress='&reachout_visual_rotation_B.KinarmDataWidth';
bio(98).ndims=2;
bio(98).size=[];


bio(99).blkName='DataLogging/Create KINARM Data Subsystem/Rate Transition4';
bio(99).sigName='';
bio(99).portIdx=0;
bio(99).dim=[1,56];
bio(99).sigWidth=56;
bio(99).sigAddress='&reachout_visual_rotation_B.RateTransition4[0]';
bio(99).ndims=2;
bio(99).size=[];


bio(100).blkName='DataLogging/Create KINARM Data Subsystem/Select Arm Data';
bio(100).sigName='';
bio(100).portIdx=0;
bio(100).dim=[2,17];
bio(100).sigWidth=34;
bio(100).sigAddress='&reachout_visual_rotation_B.SelectArmData[0]';
bio(100).ndims=2;
bio(100).size=[];


bio(101).blkName='DataLogging/Create KINARM Data Subsystem/Select Arm1';
bio(101).sigName='';
bio(101).portIdx=0;
bio(101).dim=[1,17];
bio(101).sigWidth=17;
bio(101).sigAddress='&reachout_visual_rotation_B.SelectArm1[0]';
bio(101).ndims=2;
bio(101).size=[];


bio(102).blkName='DataLogging/Create KINARM Data Subsystem/Select Arm2';
bio(102).sigName='';
bio(102).portIdx=0;
bio(102).dim=[1,17];
bio(102).sigWidth=17;
bio(102).sigAddress='&reachout_visual_rotation_B.SelectArm2[0]';
bio(102).ndims=2;
bio(102).size=[];


bio(103).blkName='DataLogging/Create KINARM Data Subsystem/Width';
bio(103).sigName='';
bio(103).portIdx=0;
bio(103).dim=[1,1];
bio(103).sigWidth=1;
bio(103).sigAddress='&reachout_visual_rotation_B.Width_d';
bio(103).ndims=2;
bio(103).size=[];


bio(104).blkName='DataLogging/Create Task State Subsystem/Button Status';
bio(104).sigName='';
bio(104).portIdx=0;
bio(104).dim=[1,1];
bio(104).sigWidth=1;
bio(104).sigAddress='&reachout_visual_rotation_B.ButtonStatus';
bio(104).ndims=2;
bio(104).size=[];


bio(105).blkName='DataLogging/Create Task State Subsystem/Current Block Index';
bio(105).sigName='';
bio(105).portIdx=0;
bio(105).dim=[1,1];
bio(105).sigWidth=1;
bio(105).sigAddress='&reachout_visual_rotation_B.CurrentBlockIndex';
bio(105).ndims=2;
bio(105).size=[];


bio(106).blkName='DataLogging/Create Task State Subsystem/Current Block Number in Set';
bio(106).sigName='';
bio(106).portIdx=0;
bio(106).dim=[1,1];
bio(106).sigWidth=1;
bio(106).sigAddress='&reachout_visual_rotation_B.CurrentBlockNumberinSet';
bio(106).ndims=2;
bio(106).size=[];


bio(107).blkName='DataLogging/Create Task State Subsystem/Current TP Index';
bio(107).sigName='';
bio(107).portIdx=0;
bio(107).dim=[1,1];
bio(107).sigWidth=1;
bio(107).sigAddress='&reachout_visual_rotation_B.CurrentTPIndex';
bio(107).ndims=2;
bio(107).size=[];


bio(108).blkName='DataLogging/Create Task State Subsystem/Current Trial Number in Block';
bio(108).sigName='';
bio(108).portIdx=0;
bio(108).dim=[1,1];
bio(108).sigWidth=1;
bio(108).sigAddress='&reachout_visual_rotation_B.CurrentTrialNumberinBlock';
bio(108).ndims=2;
bio(108).size=[];


bio(109).blkName='DataLogging/Create Task State Subsystem/Current Trial Number in Set';
bio(109).sigName='';
bio(109).portIdx=0;
bio(109).dim=[1,1];
bio(109).sigWidth=1;
bio(109).sigAddress='&reachout_visual_rotation_B.CurrentTrialNumberinSet';
bio(109).ndims=2;
bio(109).size=[];


bio(110).blkName='DataLogging/Create Task State Subsystem/Last Frame Acknowledged';
bio(110).sigName='';
bio(110).portIdx=0;
bio(110).dim=[1,1];
bio(110).sigWidth=1;
bio(110).sigAddress='&reachout_visual_rotation_B.LastFrameAcknowledged';
bio(110).ndims=2;
bio(110).size=[];


bio(111).blkName='DataLogging/Create Task State Subsystem/Last Frame Sent';
bio(111).sigName='';
bio(111).portIdx=0;
bio(111).dim=[1,1];
bio(111).sigWidth=1;
bio(111).sigAddress='&reachout_visual_rotation_B.LastFrameSent';
bio(111).ndims=2;
bio(111).size=[];


bio(112).blkName='DataLogging/Create Task State Subsystem/Logging Enable';
bio(112).sigName='';
bio(112).portIdx=0;
bio(112).dim=[1,1];
bio(112).sigWidth=1;
bio(112).sigAddress='&reachout_visual_rotation_B.LoggingEnable';
bio(112).ndims=2;
bio(112).size=[];


bio(113).blkName='DataLogging/Create Task State Subsystem/Run Status';
bio(113).sigName='';
bio(113).portIdx=0;
bio(113).dim=[1,1];
bio(113).sigWidth=1;
bio(113).sigAddress='&reachout_visual_rotation_B.RunStatus';
bio(113).ndims=2;
bio(113).size=[];


bio(114).blkName='DataLogging/Create Task State Subsystem/Servo update count';
bio(114).sigName='';
bio(114).portIdx=0;
bio(114).dim=[1,1];
bio(114).sigWidth=1;
bio(114).sigAddress='&reachout_visual_rotation_B.Servoupdatecount';
bio(114).ndims=2;
bio(114).size=[];


bio(115).blkName='DataLogging/Create Task State Subsystem/Task Control Button';
bio(115).sigName='';
bio(115).portIdx=0;
bio(115).dim=[1,1];
bio(115).sigWidth=1;
bio(115).sigAddress='&reachout_visual_rotation_B.TaskControlButton';
bio(115).ndims=2;
bio(115).size=[];


bio(116).blkName='DataLogging/Create Task State Subsystem/Timestamp';
bio(116).sigName='';
bio(116).portIdx=0;
bio(116).dim=[1,1];
bio(116).sigWidth=1;
bio(116).sigAddress='&reachout_visual_rotation_B.Timestamp';
bio(116).ndims=2;
bio(116).size=[];


bio(117).blkName='DataLogging/Create Task State Subsystem/Product';
bio(117).sigName='';
bio(117).portIdx=0;
bio(117).dim=[1,1];
bio(117).sigWidth=1;
bio(117).sigAddress='&reachout_visual_rotation_B.Product_g';
bio(117).ndims=2;
bio(117).size=[];


bio(118).blkName='DataLogging/Create Task State Subsystem/Rate Transition';
bio(118).sigName='';
bio(118).portIdx=0;
bio(118).dim=[12,1];
bio(118).sigWidth=12;
bio(118).sigAddress='&reachout_visual_rotation_B.RateTransition[0]';
bio(118).ndims=2;
bio(118).size=[];


bio(119).blkName='DataLogging/Create Task State Subsystem/Select Calibration Button Bitfield';
bio(119).sigName='';
bio(119).portIdx=0;
bio(119).dim=[1,1];
bio(119).sigWidth=1;
bio(119).sigAddress='&reachout_visual_rotation_B.SelectCalibrationButtonBitfield';
bio(119).ndims=2;
bio(119).size=[];


bio(120).blkName='DataLogging/Create Task State Subsystem/Select servo update count';
bio(120).sigName='';
bio(120).portIdx=0;
bio(120).dim=[1,1];
bio(120).sigWidth=1;
bio(120).sigAddress='&reachout_visual_rotation_B.Selectservoupdatecount';
bio(120).ndims=2;
bio(120).size=[];


bio(121).blkName='DataLogging/Keep alive/Pack';
bio(121).sigName='';
bio(121).portIdx=0;
bio(121).dim=[40,1];
bio(121).sigWidth=40;
bio(121).sigAddress='&reachout_visual_rotation_B.Pack[0]';
bio(121).ndims=2;
bio(121).size=[];


bio(122).blkName='DataLogging/Network Transfer Subsystem/Send Control Machine/p1';
bio(122).sigName='data_out';
bio(122).portIdx=0;
bio(122).dim=[306,1];
bio(122).sigWidth=306;
bio(122).sigAddress='&reachout_visual_rotation_B.data_out[0]';
bio(122).ndims=2;
bio(122).size=[];


bio(123).blkName='DataLogging/Network Transfer Subsystem/Send Control Machine/p2';
bio(123).sigName='queue_size';
bio(123).portIdx=1;
bio(123).dim=[1,1];
bio(123).sigWidth=1;
bio(123).sigAddress='&reachout_visual_rotation_B.queue_size';
bio(123).ndims=2;
bio(123).size=[];


bio(124).blkName='DataLogging/Network Transfer Subsystem/Send Control Machine/p3';
bio(124).sigName='total_timeouts';
bio(124).portIdx=2;
bio(124).dim=[1,1];
bio(124).sigWidth=1;
bio(124).sigAddress='&reachout_visual_rotation_B.total_timeouts';
bio(124).ndims=2;
bio(124).size=[];


bio(125).blkName='DataLogging/Network Transfer Subsystem/max_packet_id';
bio(125).sigName='';
bio(125).portIdx=0;
bio(125).dim=[1,1];
bio(125).sigWidth=1;
bio(125).sigAddress='&reachout_visual_rotation_B.max_packet_id';
bio(125).ndims=2;
bio(125).size=[];


bio(126).blkName='DataLogging/Network Transfer Subsystem/Data Type Conversion';
bio(126).sigName='';
bio(126).portIdx=0;
bio(126).dim=[1,1];
bio(126).sigWidth=1;
bio(126).sigAddress='&reachout_visual_rotation_B.DataTypeConversion_e';
bio(126).ndims=2;
bio(126).size=[];


bio(127).blkName='DataLogging/Network Transfer Subsystem/Data Type Conversion1';
bio(127).sigName='';
bio(127).portIdx=0;
bio(127).dim=[1,1];
bio(127).sigWidth=1;
bio(127).sigAddress='&reachout_visual_rotation_B.DataTypeConversion1_n';
bio(127).ndims=2;
bio(127).size=[];


bio(128).blkName='DataLogging/Network Transfer Subsystem/Queue Size';
bio(128).sigName='';
bio(128).portIdx=0;
bio(128).dim=[1,1];
bio(128).sigWidth=1;
bio(128).sigAddress='&reachout_visual_rotation_B.QueueSize';
bio(128).ndims=2;
bio(128).size=[];


bio(129).blkName='DataLogging/Network Transfer Subsystem/Total Packets Sent';
bio(129).sigName='';
bio(129).portIdx=0;
bio(129).dim=[1,1];
bio(129).sigWidth=1;
bio(129).sigAddress='&reachout_visual_rotation_B.TotalPacketsSent';
bio(129).ndims=2;
bio(129).size=[];


bio(130).blkName='DataLogging/Network Transfer Subsystem/Total Timeouts';
bio(130).sigName='';
bio(130).portIdx=0;
bio(130).dim=[1,1];
bio(130).sigWidth=1;
bio(130).sigAddress='&reachout_visual_rotation_B.TotalTimeouts';
bio(130).ndims=2;
bio(130).size=[];


bio(131).blkName='DataLogging/Network Transfer Subsystem/Receive/p1';
bio(131).sigName='';
bio(131).portIdx=0;
bio(131).dim=[4,1];
bio(131).sigWidth=4;
bio(131).sigAddress='&reachout_visual_rotation_B.Receive_o1_h[0]';
bio(131).ndims=2;
bio(131).size=[];


bio(132).blkName='DataLogging/Network Transfer Subsystem/Receive/p2';
bio(132).sigName='';
bio(132).portIdx=1;
bio(132).dim=[1,1];
bio(132).sigWidth=1;
bio(132).sigAddress='&reachout_visual_rotation_B.Receive_o2_c';
bio(132).ndims=2;
bio(132).size=[];


bio(133).blkName='DataLogging/Network Transfer Subsystem/Unpack';
bio(133).sigName='';
bio(133).portIdx=0;
bio(133).dim=[1,1];
bio(133).sigWidth=1;
bio(133).sigAddress='&reachout_visual_rotation_B.Unpack';
bio(133).ndims=2;
bio(133).size=[];


bio(134).blkName='DataLogging/Poll Force Plates/Convert1';
bio(134).sigName='';
bio(134).portIdx=0;
bio(134).dim=[34,1];
bio(134).sigWidth=34;
bio(134).sigAddress='&reachout_visual_rotation_B.Convert1_c[0]';
bio(134).ndims=2;
bio(134).size=[];


bio(135).blkName='DataLogging/Poll Force Plates/Convert19';
bio(135).sigName='';
bio(135).portIdx=0;
bio(135).dim=[14,1];
bio(135).sigWidth=14;
bio(135).sigAddress='&reachout_visual_rotation_B.Convert19_e5[0]';
bio(135).ndims=2;
bio(135).size=[];


bio(136).blkName='DataLogging/Poll KINARM/Create KINARM Data Array/p1';
bio(136).sigName='kinarm_data';
bio(136).portIdx=0;
bio(136).dim=[3,50];
bio(136).sigWidth=150;
bio(136).sigAddress='&reachout_visual_rotation_B.kinarm_data[0]';
bio(136).ndims=2;
bio(136).size=[];


bio(137).blkName='DataLogging/Poll KINARM/Create KINARM Data Array/p2';
bio(137).sigName='primary_encoder_data_out';
bio(137).portIdx=1;
bio(137).dim=[2,6];
bio(137).sigWidth=12;
bio(137).sigAddress='&reachout_visual_rotation_B.primary_encoder_data_out[0]';
bio(137).ndims=2;
bio(137).size=[];


bio(138).blkName='DataLogging/Poll KINARM/Monitor_status';
bio(138).sigName='force_scale';
bio(138).portIdx=0;
bio(138).dim=[1,1];
bio(138).sigWidth=1;
bio(138).sigAddress='&reachout_visual_rotation_B.force_scale';
bio(138).ndims=2;
bio(138).size=[];


bio(139).blkName='DataLogging/Poll KINARM/Convert1';
bio(139).sigName='';
bio(139).portIdx=0;
bio(139).dim=[2,6];
bio(139).sigWidth=12;
bio(139).sigAddress='&reachout_visual_rotation_B.Convert1_f[0]';
bio(139).ndims=2;
bio(139).size=[];


bio(140).blkName='DataLogging/Poll KINARM/Convert19';
bio(140).sigName='';
bio(140).portIdx=0;
bio(140).dim=[3,50];
bio(140).sigWidth=150;
bio(140).sigAddress='&reachout_visual_rotation_B.Convert19_e[0]';
bio(140).ndims=2;
bio(140).size=[];


bio(141).blkName='DataLogging/Poll KINARM/Convert2';
bio(141).sigName='';
bio(141).portIdx=0;
bio(141).dim=[3,1];
bio(141).sigWidth=3;
bio(141).sigAddress='&reachout_visual_rotation_B.Convert2_b[0]';
bio(141).ndims=2;
bio(141).size=[];


bio(142).blkName='DataLogging/Poll KINARM/Convert3';
bio(142).sigName='';
bio(142).portIdx=0;
bio(142).dim=[8,1];
bio(142).sigWidth=8;
bio(142).sigAddress='&reachout_visual_rotation_B.Convert3_c[0]';
bio(142).ndims=2;
bio(142).size=[];


bio(143).blkName='DataLogging/Poll KINARM/Convert4';
bio(143).sigName='';
bio(143).portIdx=0;
bio(143).dim=[8,1];
bio(143).sigWidth=8;
bio(143).sigAddress='&reachout_visual_rotation_B.Convert4[0]';
bio(143).ndims=2;
bio(143).size=[];


bio(144).blkName='DataLogging/Poll KINARM/Data Type Conversion';
bio(144).sigName='';
bio(144).portIdx=0;
bio(144).dim=[10,1];
bio(144).sigWidth=10;
bio(144).sigAddress='&reachout_visual_rotation_B.DataTypeConversion_i[0]';
bio(144).ndims=2;
bio(144).size=[];


bio(145).blkName='DataLogging/Poll KINARM/Data Type Conversion1';
bio(145).sigName='';
bio(145).portIdx=0;
bio(145).dim=[10,1];
bio(145).sigWidth=10;
bio(145).sigAddress='&reachout_visual_rotation_B.DataTypeConversion1_e[0]';
bio(145).ndims=2;
bio(145).size=[];


bio(146).blkName='DataLogging/Poll KINARM/Data Type Conversion2';
bio(146).sigName='';
bio(146).portIdx=0;
bio(146).dim=[9,1];
bio(146).sigWidth=9;
bio(146).sigAddress='&reachout_visual_rotation_B.DataTypeConversion2_a[0]';
bio(146).ndims=2;
bio(146).size=[];


bio(147).blkName='DataLogging/Poll KINARM/Data Type Conversion3';
bio(147).sigName='';
bio(147).portIdx=0;
bio(147).dim=[9,1];
bio(147).sigWidth=9;
bio(147).sigAddress='&reachout_visual_rotation_B.DataTypeConversion3_p[0]';
bio(147).ndims=2;
bio(147).size=[];


bio(148).blkName='DataLogging/Poll KINARM/Data Type Conversion4';
bio(148).sigName='';
bio(148).portIdx=0;
bio(148).dim=[20,1];
bio(148).sigWidth=20;
bio(148).sigAddress='&reachout_visual_rotation_B.DataTypeConversion4[0]';
bio(148).ndims=2;
bio(148).size=[];


bio(149).blkName='DataLogging/Poll KINARM/Data Type Conversion5';
bio(149).sigName='';
bio(149).portIdx=0;
bio(149).dim=[14,1];
bio(149).sigWidth=14;
bio(149).sigAddress='&reachout_visual_rotation_B.DataTypeConversion5[0]';
bio(149).ndims=2;
bio(149).size=[];


bio(150).blkName='DataLogging/Poll KINARM/Data Type Conversion6';
bio(150).sigName='';
bio(150).portIdx=0;
bio(150).dim=[4,1];
bio(150).sigWidth=4;
bio(150).sigAddress='&reachout_visual_rotation_B.DataTypeConversion6[0]';
bio(150).ndims=2;
bio(150).size=[];


bio(151).blkName='DataLogging/Poll KINARM/Data Type Conversion7';
bio(151).sigName='';
bio(151).portIdx=0;
bio(151).dim=[12,1];
bio(151).sigWidth=12;
bio(151).sigAddress='&reachout_visual_rotation_B.DataTypeConversion7[0]';
bio(151).ndims=2;
bio(151).size=[];


bio(152).blkName='DataLogging/Poll KINARM/Data Type Conversion8';
bio(152).sigName='';
bio(152).portIdx=0;
bio(152).dim=[4,1];
bio(152).sigWidth=4;
bio(152).sigAddress='&reachout_visual_rotation_B.DataTypeConversion8[0]';
bio(152).ndims=2;
bio(152).size=[];


bio(153).blkName='DataLogging/Poll KINARM/Memory';
bio(153).sigName='';
bio(153).portIdx=0;
bio(153).dim=[4,1];
bio(153).sigWidth=4;
bio(153).sigAddress='&reachout_visual_rotation_B.Memory[0]';
bio(153).ndims=2;
bio(153).size=[];


bio(154).blkName='DataLogging/Poll KINARM/Product';
bio(154).sigName='';
bio(154).portIdx=0;
bio(154).dim=[4,1];
bio(154).sigWidth=4;
bio(154).sigAddress='&reachout_visual_rotation_B.Product[0]';
bio(154).ndims=2;
bio(154).size=[];


bio(155).blkName='DataLogging/Poll KINARM/S-Function/p1';
bio(155).sigName='';
bio(155).portIdx=0;
bio(155).dim=[10,1];
bio(155).sigWidth=10;
bio(155).sigAddress='&reachout_visual_rotation_B.SFunction_o1[0]';
bio(155).ndims=2;
bio(155).size=[];


bio(156).blkName='DataLogging/Poll KINARM/S-Function/p2';
bio(156).sigName='';
bio(156).portIdx=1;
bio(156).dim=[10,1];
bio(156).sigWidth=10;
bio(156).sigAddress='&reachout_visual_rotation_B.SFunction_o2[0]';
bio(156).ndims=2;
bio(156).size=[];


bio(157).blkName='DataLogging/Poll KINARM/S-Function/p3';
bio(157).sigName='';
bio(157).portIdx=2;
bio(157).dim=[1,1];
bio(157).sigWidth=1;
bio(157).sigAddress='&reachout_visual_rotation_B.SFunction_o3';
bio(157).ndims=2;
bio(157).size=[];


bio(158).blkName='DataLogging/Poll KINARM/S-Function/p4';
bio(158).sigName='';
bio(158).portIdx=3;
bio(158).dim=[4,1];
bio(158).sigWidth=4;
bio(158).sigAddress='&reachout_visual_rotation_B.SFunction_o4[0]';
bio(158).ndims=2;
bio(158).size=[];


bio(159).blkName='DataLogging/Poll KINARM/S-Function/p5';
bio(159).sigName='';
bio(159).portIdx=4;
bio(159).dim=[6,1];
bio(159).sigWidth=6;
bio(159).sigAddress='&reachout_visual_rotation_B.SFunction_o5[0]';
bio(159).ndims=2;
bio(159).size=[];


bio(160).blkName='DataLogging/Poll KINARM/S-Function/p6';
bio(160).sigName='';
bio(160).portIdx=5;
bio(160).dim=[6,1];
bio(160).sigWidth=6;
bio(160).sigAddress='&reachout_visual_rotation_B.SFunction_o6[0]';
bio(160).ndims=2;
bio(160).size=[];


bio(161).blkName='DataLogging/Poll KINARM/S-Function/p7';
bio(161).sigName='';
bio(161).portIdx=6;
bio(161).dim=[1,1];
bio(161).sigWidth=1;
bio(161).sigAddress='&reachout_visual_rotation_B.SFunction_o7';
bio(161).ndims=2;
bio(161).size=[];


bio(162).blkName='DataLogging/Poll KINARM/S-Function/p8';
bio(162).sigName='';
bio(162).portIdx=7;
bio(162).dim=[1,1];
bio(162).sigWidth=1;
bio(162).sigAddress='&reachout_visual_rotation_B.SFunction_o8';
bio(162).ndims=2;
bio(162).size=[];


bio(163).blkName='DataLogging/Poll KINARM/S-Function/p9';
bio(163).sigName='';
bio(163).portIdx=8;
bio(163).dim=[3,1];
bio(163).sigWidth=3;
bio(163).sigAddress='&reachout_visual_rotation_B.SFunction_o9[0]';
bio(163).ndims=2;
bio(163).size=[];


bio(164).blkName='DataLogging/Poll KINARM/S-Function/p10';
bio(164).sigName='';
bio(164).portIdx=9;
bio(164).dim=[1,1];
bio(164).sigWidth=1;
bio(164).sigAddress='&reachout_visual_rotation_B.SFunction_o10';
bio(164).ndims=2;
bio(164).size=[];


bio(165).blkName='DataLogging/Poll KINARM/AddTorques';
bio(165).sigName='';
bio(165).portIdx=0;
bio(165).dim=[4,1];
bio(165).sigWidth=4;
bio(165).sigAddress='&reachout_visual_rotation_B.AddTorques[0]';
bio(165).ndims=2;
bio(165).size=[];


bio(166).blkName='DataLogging/Receive_Gaze/Create timestamp/p1';
bio(166).sigName='timestamp_out';
bio(166).portIdx=0;
bio(166).dim=[1,1];
bio(166).sigWidth=1;
bio(166).sigAddress='&reachout_visual_rotation_B.timestamp_out';
bio(166).ndims=2;
bio(166).size=[];


bio(167).blkName='DataLogging/Receive_Gaze/Create timestamp/p2';
bio(167).sigName='start_time_out';
bio(167).portIdx=1;
bio(167).dim=[1,1];
bio(167).sigWidth=1;
bio(167).sigAddress='&reachout_visual_rotation_B.start_time_out';
bio(167).ndims=2;
bio(167).size=[];


bio(168).blkName='DataLogging/Receive_Gaze/Embedded MATLAB Function1/p1';
bio(168).sigName='gazeXYCalculated';
bio(168).portIdx=0;
bio(168).dim=[2,1];
bio(168).sigWidth=2;
bio(168).sigAddress='&reachout_visual_rotation_B.gazeXYCalculated[0]';
bio(168).ndims=2;
bio(168).size=[];


bio(169).blkName='DataLogging/Receive_Gaze/Embedded MATLAB Function1/p2';
bio(169).sigName='pupil_area_GLOBAL';
bio(169).portIdx=1;
bio(169).dim=[1,1];
bio(169).sigWidth=1;
bio(169).sigAddress='&reachout_visual_rotation_B.pupil_area_GLOBAL';
bio(169).ndims=2;
bio(169).size=[];


bio(170).blkName='DataLogging/Receive_Gaze/clean_packet/p1';
bio(170).sigName='pack_out';
bio(170).portIdx=0;
bio(170).dim=[512,1];
bio(170).sigWidth=512;
bio(170).sigAddress='&reachout_visual_rotation_B.pack_out[0]';
bio(170).ndims=2;
bio(170).size=[];


bio(171).blkName='DataLogging/Receive_Gaze/clean_packet/p2';
bio(171).sigName='len_out';
bio(171).portIdx=1;
bio(171).dim=[1,1];
bio(171).sigWidth=1;
bio(171).sigAddress='&reachout_visual_rotation_B.len_out';
bio(171).ndims=2;
bio(171).size=[];


bio(172).blkName='DataLogging/Receive_Gaze/convert to seconds';
bio(172).sigName='event_data_out';
bio(172).portIdx=0;
bio(172).dim=[3,1];
bio(172).sigWidth=3;
bio(172).sigAddress='&reachout_visual_rotation_B.event_data_out[0]';
bio(172).ndims=2;
bio(172).size=[];


bio(173).blkName='DataLogging/Receive_Gaze/Convert1';
bio(173).sigName='';
bio(173).portIdx=0;
bio(173).dim=[1,1];
bio(173).sigWidth=1;
bio(173).sigAddress='&reachout_visual_rotation_B.Convert1';
bio(173).ndims=2;
bio(173).size=[];


bio(174).blkName='DataLogging/Receive_Gaze/Convert19';
bio(174).sigName='';
bio(174).portIdx=0;
bio(174).dim=[3,1];
bio(174).sigWidth=3;
bio(174).sigAddress='&reachout_visual_rotation_B.Convert19[0]';
bio(174).ndims=2;
bio(174).size=[];


bio(175).blkName='DataLogging/Receive_Gaze/Convert2';
bio(175).sigName='';
bio(175).portIdx=0;
bio(175).dim=[3,1];
bio(175).sigWidth=3;
bio(175).sigAddress='&reachout_visual_rotation_B.Convert2[0]';
bio(175).ndims=2;
bio(175).size=[];


bio(176).blkName='DataLogging/Receive_Gaze/Convert3';
bio(176).sigName='';
bio(176).portIdx=0;
bio(176).dim=[1,1];
bio(176).sigWidth=1;
bio(176).sigAddress='&reachout_visual_rotation_B.Convert3';
bio(176).ndims=2;
bio(176).size=[];


bio(177).blkName='DataLogging/Receive_Gaze/Data Type Conversion';
bio(177).sigName='';
bio(177).portIdx=0;
bio(177).dim=[1,1];
bio(177).sigWidth=1;
bio(177).sigAddress='&reachout_visual_rotation_B.DataTypeConversion';
bio(177).ndims=2;
bio(177).size=[];


bio(178).blkName='DataLogging/Receive_Gaze/Data Type Conversion1';
bio(178).sigName='';
bio(178).portIdx=0;
bio(178).dim=[3,1];
bio(178).sigWidth=3;
bio(178).sigAddress='&reachout_visual_rotation_B.DataTypeConversion1[0]';
bio(178).ndims=2;
bio(178).size=[];


bio(179).blkName='DataLogging/Receive_Gaze/Data Type Conversion3';
bio(179).sigName='';
bio(179).portIdx=0;
bio(179).dim=[1,4];
bio(179).sigWidth=4;
bio(179).sigAddress='&reachout_visual_rotation_B.DataTypeConversion3[0]';
bio(179).ndims=2;
bio(179).size=[];


bio(180).blkName='DataLogging/Receive_Gaze/Data Type Conversion4';
bio(180).sigName='';
bio(180).portIdx=0;
bio(180).dim=[1,1];
bio(180).sigWidth=1;
bio(180).sigAddress='&reachout_visual_rotation_B.DataTypeConversion4_j';
bio(180).ndims=2;
bio(180).size=[];


bio(181).blkName='DataLogging/Receive_Gaze/Data Type Conversion5';
bio(181).sigName='';
bio(181).portIdx=0;
bio(181).dim=[1,1];
bio(181).sigWidth=1;
bio(181).sigAddress='&reachout_visual_rotation_B.DataTypeConversion5_o';
bio(181).ndims=2;
bio(181).size=[];


bio(182).blkName='DataLogging/Receive_Gaze/convert';
bio(182).sigName='';
bio(182).portIdx=0;
bio(182).dim=[1,1];
bio(182).sigWidth=1;
bio(182).sigAddress='&reachout_visual_rotation_B.convert';
bio(182).ndims=2;
bio(182).size=[];


bio(183).blkName='DataLogging/Receive_Gaze/Reshape';
bio(183).sigName='';
bio(183).portIdx=0;
bio(183).dim=[2,4];
bio(183).sigWidth=8;
bio(183).sigAddress='&reachout_visual_rotation_B.Reshape_i[0]';
bio(183).ndims=2;
bio(183).size=[];


bio(184).blkName='DataLogging/Receive_Gaze/Selector - Left Eye';
bio(184).sigName='';
bio(184).portIdx=0;
bio(184).dim=[1,4];
bio(184).sigWidth=4;
bio(184).sigAddress='&reachout_visual_rotation_B.SelectorLeftEye[0]';
bio(184).ndims=2;
bio(184).size=[];


bio(185).blkName='DataLogging/Receive_Gaze/Receive/p1';
bio(185).sigName='';
bio(185).portIdx=0;
bio(185).dim=[512,1];
bio(185).sigWidth=512;
bio(185).sigAddress='&reachout_visual_rotation_B.Receive_o1[0]';
bio(185).ndims=2;
bio(185).size=[];


bio(186).blkName='DataLogging/Receive_Gaze/Receive/p2';
bio(186).sigName='';
bio(186).portIdx=1;
bio(186).dim=[1,1];
bio(186).sigWidth=1;
bio(186).sigAddress='&reachout_visual_rotation_B.Receive_o2';
bio(186).ndims=2;
bio(186).size=[];


bio(187).blkName='DataLogging/Receive_Gaze/S-Function/p1';
bio(187).sigName='';
bio(187).portIdx=0;
bio(187).dim=[1,1];
bio(187).sigWidth=1;
bio(187).sigAddress='&reachout_visual_rotation_B.SFunction_o1_n';
bio(187).ndims=2;
bio(187).size=[];


bio(188).blkName='DataLogging/Receive_Gaze/S-Function/p2';
bio(188).sigName='SAMPE_TYPE';
bio(188).portIdx=1;
bio(188).dim=[1,1];
bio(188).sigWidth=1;
bio(188).sigAddress='&reachout_visual_rotation_B.SAMPE_TYPE';
bio(188).ndims=2;
bio(188).size=[];


bio(189).blkName='DataLogging/Receive_Gaze/S-Function/p3';
bio(189).sigName='Content Flags';
bio(189).portIdx=2;
bio(189).dim=[1,1];
bio(189).sigWidth=1;
bio(189).sigAddress='&reachout_visual_rotation_B.ContentFlags';
bio(189).ndims=2;
bio(189).size=[];


bio(190).blkName='DataLogging/Receive_Gaze/S-Function/p4';
bio(190).sigName='pupil X';
bio(190).portIdx=3;
bio(190).dim=[2,1];
bio(190).sigWidth=2;
bio(190).sigAddress='&reachout_visual_rotation_B.pupilX[0]';
bio(190).ndims=2;
bio(190).size=[];


bio(191).blkName='DataLogging/Receive_Gaze/S-Function/p5';
bio(191).sigName='pupil Y';
bio(191).portIdx=4;
bio(191).dim=[2,1];
bio(191).sigWidth=2;
bio(191).sigAddress='&reachout_visual_rotation_B.pupilY[0]';
bio(191).ndims=2;
bio(191).size=[];


bio(192).blkName='DataLogging/Receive_Gaze/S-Function/p6';
bio(192).sigName='HREF X';
bio(192).portIdx=5;
bio(192).dim=[2,1];
bio(192).sigWidth=2;
bio(192).sigAddress='&reachout_visual_rotation_B.HREFX[0]';
bio(192).ndims=2;
bio(192).size=[];


bio(193).blkName='DataLogging/Receive_Gaze/S-Function/p7';
bio(193).sigName='HREF Y';
bio(193).portIdx=6;
bio(193).dim=[2,1];
bio(193).sigWidth=2;
bio(193).sigAddress='&reachout_visual_rotation_B.HREFY[0]';
bio(193).ndims=2;
bio(193).size=[];


bio(194).blkName='DataLogging/Receive_Gaze/S-Function/p8';
bio(194).sigName='pupil area';
bio(194).portIdx=7;
bio(194).dim=[2,1];
bio(194).sigWidth=2;
bio(194).sigAddress='&reachout_visual_rotation_B.pupilarea[0]';
bio(194).ndims=2;
bio(194).size=[];


bio(195).blkName='DataLogging/Receive_Gaze/S-Function/p9';
bio(195).sigName='screen gaze X';
bio(195).portIdx=8;
bio(195).dim=[2,1];
bio(195).sigWidth=2;
bio(195).sigAddress='&reachout_visual_rotation_B.screengazeX[0]';
bio(195).ndims=2;
bio(195).size=[];


bio(196).blkName='DataLogging/Receive_Gaze/S-Function/p10';
bio(196).sigName='screen gaze Y';
bio(196).portIdx=9;
bio(196).dim=[2,1];
bio(196).sigWidth=2;
bio(196).sigAddress='&reachout_visual_rotation_B.screengazeY[0]';
bio(196).ndims=2;
bio(196).size=[];


bio(197).blkName='DataLogging/Receive_Gaze/S-Function/p11';
bio(197).sigName='resolution X';
bio(197).portIdx=10;
bio(197).dim=[1,1];
bio(197).sigWidth=1;
bio(197).sigAddress='&reachout_visual_rotation_B.resolutionX';
bio(197).ndims=2;
bio(197).size=[];


bio(198).blkName='DataLogging/Receive_Gaze/S-Function/p12';
bio(198).sigName='resolution Y';
bio(198).portIdx=11;
bio(198).dim=[1,1];
bio(198).sigWidth=1;
bio(198).sigAddress='&reachout_visual_rotation_B.resolutionY';
bio(198).ndims=2;
bio(198).size=[];


bio(199).blkName='DataLogging/Receive_Gaze/S-Function/p13';
bio(199).sigName='status flags';
bio(199).portIdx=12;
bio(199).dim=[1,1];
bio(199).sigWidth=1;
bio(199).sigAddress='&reachout_visual_rotation_B.statusflags';
bio(199).ndims=2;
bio(199).size=[];


bio(200).blkName='DataLogging/Receive_Gaze/S-Function/p14';
bio(200).sigName='extra input';
bio(200).portIdx=13;
bio(200).dim=[1,1];
bio(200).sigWidth=1;
bio(200).sigAddress='&reachout_visual_rotation_B.extrainput';
bio(200).ndims=2;
bio(200).size=[];


bio(201).blkName='DataLogging/Receive_Gaze/S-Function/p15';
bio(201).sigName='buttons';
bio(201).portIdx=14;
bio(201).dim=[1,1];
bio(201).sigWidth=1;
bio(201).sigAddress='&reachout_visual_rotation_B.buttons';
bio(201).ndims=2;
bio(201).size=[];


bio(202).blkName='DataLogging/Receive_Gaze/S-Function/p16';
bio(202).sigName='htype';
bio(202).portIdx=15;
bio(202).dim=[1,1];
bio(202).sigWidth=1;
bio(202).sigAddress='&reachout_visual_rotation_B.htype';
bio(202).ndims=2;
bio(202).size=[];


bio(203).blkName='DataLogging/Receive_Gaze/S-Function/p17';
bio(203).sigName='hdata';
bio(203).portIdx=16;
bio(203).dim=[8,1];
bio(203).sigWidth=8;
bio(203).sigAddress='&reachout_visual_rotation_B.hdata[0]';
bio(203).ndims=2;
bio(203).size=[];


bio(204).blkName='DataLogging/Receive_Gaze/S-Function/p18';
bio(204).sigName='';
bio(204).portIdx=17;
bio(204).dim=[3,1];
bio(204).sigWidth=3;
bio(204).sigAddress='&reachout_visual_rotation_B.SFunction_o18[0]';
bio(204).ndims=2;
bio(204).size=[];


bio(205).blkName='GUI Control/Preview Targets Subsystem/Create Target Vector/p1';
bio(205).sigName='target_vector';
bio(205).portIdx=0;
bio(205).dim=[1,352];
bio(205).sigWidth=352;
bio(205).sigAddress='&reachout_visual_rotation_B.target_vector[0]';
bio(205).ndims=2;
bio(205).size=[];


bio(206).blkName='GUI Control/Preview Targets Subsystem/Create Target Vector/p2';
bio(206).sigName='target_vector_length';
bio(206).portIdx=1;
bio(206).dim=[1,1];
bio(206).sigWidth=1;
bio(206).sigAddress='&reachout_visual_rotation_B.target_vector_length';
bio(206).ndims=2;
bio(206).size=[];


bio(207).blkName='GUI Control/Preview Targets Subsystem/Concatenation';
bio(207).sigName='';
bio(207).portIdx=0;
bio(207).dim=[2,5];
bio(207).sigWidth=10;
bio(207).sigAddress='&reachout_visual_rotation_B.Concatenation1[0]';
bio(207).ndims=2;
bio(207).size=[];


bio(208).blkName='GUI Control/Preview Targets Subsystem/Concatenation1';
bio(208).sigName='';
bio(208).portIdx=0;
bio(208).dim=[2,5];
bio(208).sigWidth=10;
bio(208).sigAddress='&reachout_visual_rotation_B.Concatenation1[0]';
bio(208).ndims=2;
bio(208).size=[];


bio(209).blkName='GUI Control/Preview Targets Subsystem/indices_padding';
bio(209).sigName='';
bio(209).portIdx=0;
bio(209).dim=[2,5];
bio(209).sigWidth=10;
bio(209).sigAddress='&reachout_visual_rotation_B.Concatenation1[0]';
bio(209).ndims=2;
bio(209).size=[];


bio(210).blkName='GUI Control/Preview Targets Subsystem/Reshape';
bio(210).sigName='';
bio(210).portIdx=0;
bio(210).dim=[2,5];
bio(210).sigWidth=10;
bio(210).sigAddress='&reachout_visual_rotation_B.Concatenation1[0]';
bio(210).ndims=2;
bio(210).size=[];


bio(211).blkName='GUI Control/Preview Targets Subsystem/Reshape1';
bio(211).sigName='';
bio(211).portIdx=0;
bio(211).dim=[2,5];
bio(211).sigWidth=10;
bio(211).sigAddress='&reachout_visual_rotation_B.Concatenation1[0]';
bio(211).ndims=2;
bio(211).size=[];


bio(212).blkName='GUI Control/Run Command Subsystem/Embedded MATLAB Function/p1';
bio(212).sigName='y';
bio(212).portIdx=0;
bio(212).dim=[1,1];
bio(212).sigWidth=1;
bio(212).sigAddress='&reachout_visual_rotation_B.y';
bio(212).ndims=2;
bio(212).size=[];


bio(213).blkName='GUI Control/Run Command Subsystem/Embedded MATLAB Function/p2';
bio(213).sigName='z';
bio(213).portIdx=1;
bio(213).dim=[1,1];
bio(213).sigWidth=1;
bio(213).sigAddress='&reachout_visual_rotation_B.z';
bio(213).ndims=2;
bio(213).size=[];


bio(214).blkName='GUI Control/Run Command Subsystem/Data Type Conversion';
bio(214).sigName='';
bio(214).portIdx=0;
bio(214).dim=[1,1];
bio(214).sigWidth=1;
bio(214).sigAddress='&reachout_visual_rotation_B.DataTypeConversion_n';
bio(214).ndims=2;
bio(214).size=[];


bio(215).blkName='GUI Control/Run Command Subsystem/Data Type Conversion1';
bio(215).sigName='';
bio(215).portIdx=0;
bio(215).dim=[1,1];
bio(215).sigWidth=1;
bio(215).sigAddress='&reachout_visual_rotation_B.DataTypeConversion1_g';
bio(215).ndims=2;
bio(215).size=[];


bio(216).blkName='GUI Control/Run Command Subsystem/Data Type Conversion2';
bio(216).sigName='';
bio(216).portIdx=0;
bio(216).dim=[1,1];
bio(216).sigWidth=1;
bio(216).sigAddress='&reachout_visual_rotation_B.DataTypeConversion2';
bio(216).ndims=2;
bio(216).size=[];


bio(217).blkName='GUI Control/Run Command Subsystem/Rate Transition';
bio(217).sigName='';
bio(217).portIdx=0;
bio(217).dim=[1,1];
bio(217).sigWidth=1;
bio(217).sigAddress='&reachout_visual_rotation_B.RateTransition_o';
bio(217).ndims=2;
bio(217).size=[];


bio(218).blkName='GUI Control/Run Command Subsystem/Run Command Receive/p1';
bio(218).sigName='';
bio(218).portIdx=0;
bio(218).dim=[1,1];
bio(218).sigWidth=1;
bio(218).sigAddress='&reachout_visual_rotation_B.RunCommandReceive_o1';
bio(218).ndims=2;
bio(218).size=[];


bio(219).blkName='GUI Control/Run Command Subsystem/Run Command Receive/p2';
bio(219).sigName='';
bio(219).portIdx=1;
bio(219).dim=[1,1];
bio(219).sigWidth=1;
bio(219).sigAddress='&reachout_visual_rotation_B.RunCommandReceive_o2';
bio(219).ndims=2;
bio(219).size=[];


bio(220).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p1';
bio(220).sigName='task_status';
bio(220).portIdx=0;
bio(220).dim=[1,1];
bio(220).sigWidth=1;
bio(220).sigAddress='&reachout_visual_rotation_B.task_status';
bio(220).ndims=2;
bio(220).size=[];


bio(221).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p2';
bio(221).sigName='tp';
bio(221).portIdx=1;
bio(221).dim=[1,1];
bio(221).sigWidth=1;
bio(221).sigAddress='&reachout_visual_rotation_B.tp';
bio(221).ndims=2;
bio(221).size=[];


bio(222).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p3';
bio(222).sigName='block';
bio(222).portIdx=2;
bio(222).dim=[1,1];
bio(222).sigWidth=1;
bio(222).sigAddress='&reachout_visual_rotation_B.block';
bio(222).ndims=2;
bio(222).size=[];


bio(223).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p4';
bio(223).sigName='trial_in_block';
bio(223).portIdx=3;
bio(223).dim=[1,1];
bio(223).sigWidth=1;
bio(223).sigAddress='&reachout_visual_rotation_B.trial_in_block';
bio(223).ndims=2;
bio(223).size=[];


bio(224).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p5';
bio(224).sigName='block_in_set';
bio(224).portIdx=4;
bio(224).dim=[1,1];
bio(224).sigWidth=1;
bio(224).sigAddress='&reachout_visual_rotation_B.block_in_set';
bio(224).ndims=2;
bio(224).size=[];


bio(225).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p6';
bio(225).sigName='trial_in_set';
bio(225).portIdx=5;
bio(225).dim=[1,1];
bio(225).sigWidth=1;
bio(225).sigAddress='&reachout_visual_rotation_B.trial_in_set';
bio(225).ndims=2;
bio(225).size=[];


bio(226).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p7';
bio(226).sigName='e_exit_trial';
bio(226).portIdx=6;
bio(226).dim=[1,1];
bio(226).sigWidth=1;
bio(226).sigAddress='&reachout_visual_rotation_B.e_exit_trial';
bio(226).ndims=2;
bio(226).size=[];


bio(227).blkName='GUI Control/Task Execution Control Subsystem/Data Type Conversion';
bio(227).sigName='';
bio(227).portIdx=0;
bio(227).dim=[1,1];
bio(227).sigWidth=1;
bio(227).sigAddress='&reachout_visual_rotation_B.DataTypeConversion_g';
bio(227).ndims=2;
bio(227).size=[];


bio(228).blkName='GUI Control/Task Execution Control Subsystem/Data Type Conversion1';
bio(228).sigName='';
bio(228).portIdx=0;
bio(228).dim=[1,1];
bio(228).sigWidth=1;
bio(228).sigAddress='&reachout_visual_rotation_B.DataTypeConversion1_m';
bio(228).ndims=2;
bio(228).size=[];


bio(229).blkName='GUI Control/Task Execution Control Subsystem/Data Type Conversion2';
bio(229).sigName='';
bio(229).portIdx=0;
bio(229).dim=[1,1];
bio(229).sigWidth=1;
bio(229).sigAddress='&reachout_visual_rotation_B.DataTypeConversion2_n';
bio(229).ndims=2;
bio(229).size=[];


bio(230).blkName='GUI Control/Task Execution Control Subsystem/Task Clock';
bio(230).sigName='';
bio(230).portIdx=0;
bio(230).dim=[1,1];
bio(230).sigWidth=1;
bio(230).sigAddress='&reachout_visual_rotation_B.TaskClock';
bio(230).ndims=2;
bio(230).size=[];


bio(231).blkName='GUI Control/Task Execution Control Subsystem/Delay';
bio(231).sigName='';
bio(231).portIdx=0;
bio(231).dim=[1,1];
bio(231).sigWidth=1;
bio(231).sigAddress='&reachout_visual_rotation_B.Delay';
bio(231).ndims=2;
bio(231).size=[];


bio(232).blkName='GUI Control/Task Execution Control Subsystem/Delay1';
bio(232).sigName='';
bio(232).portIdx=0;
bio(232).dim=[1,1];
bio(232).sigWidth=1;
bio(232).sigAddress='&reachout_visual_rotation_B.Delay1';
bio(232).ndims=2;
bio(232).size=[];


bio(233).blkName='GUI Control/Task Execution Control Subsystem/Product';
bio(233).sigName='';
bio(233).portIdx=0;
bio(233).dim=[1,1];
bio(233).sigWidth=1;
bio(233).sigAddress='&reachout_visual_rotation_B.Product_i';
bio(233).ndims=2;
bio(233).size=[];


bio(234).blkName='GUI Control/Task Execution Control Subsystem/Product2';
bio(234).sigName='';
bio(234).portIdx=0;
bio(234).dim=[1,1];
bio(234).sigWidth=1;
bio(234).sigAddress='&reachout_visual_rotation_B.Product2';
bio(234).ndims=2;
bio(234).size=[];


bio(235).blkName='GUI Control/Task Execution Control Subsystem/Product3';
bio(235).sigName='';
bio(235).portIdx=0;
bio(235).dim=[1,1];
bio(235).sigWidth=1;
bio(235).sigAddress='&reachout_visual_rotation_B.Product3';
bio(235).ndims=2;
bio(235).size=[];


bio(236).blkName='GUI Control/Task Execution Control Subsystem/Selector';
bio(236).sigName='';
bio(236).portIdx=0;
bio(236).dim=[50,1];
bio(236).sigWidth=50;
bio(236).sigAddress='&reachout_visual_rotation_B.Selector_n[0]';
bio(236).ndims=2;
bio(236).size=[];


bio(237).blkName='GUI Control/Task Execution Control Subsystem/Selector1';
bio(237).sigName='';
bio(237).portIdx=0;
bio(237).dim=[1,500];
bio(237).sigWidth=500;
bio(237).sigAddress='&reachout_visual_rotation_B.Selector1[0]';
bio(237).ndims=2;
bio(237).size=[];


bio(238).blkName='GUI Control/Task Execution Control Subsystem/Selector2';
bio(238).sigName='';
bio(238).portIdx=0;
bio(238).dim=[1000,1];
bio(238).sigWidth=1000;
bio(238).sigAddress='&reachout_visual_rotation_B.Selector2[0]';
bio(238).ndims=2;
bio(238).size=[];


bio(239).blkName='GUI Control/Task Execution Control Subsystem/Subtract';
bio(239).sigName='';
bio(239).portIdx=0;
bio(239).dim=[1,1];
bio(239).sigWidth=1;
bio(239).sigAddress='&reachout_visual_rotation_B.Subtract_p';
bio(239).ndims=2;
bio(239).size=[];


bio(240).blkName='GUI Control/Task Execution Control Subsystem/Width';
bio(240).sigName='';
bio(240).portIdx=0;
bio(240).dim=[1,1];
bio(240).sigWidth=1;
bio(240).sigAddress='&reachout_visual_rotation_B.Width_j';
bio(240).ndims=2;
bio(240).size=[];


bio(241).blkName='GUI Control/Task Execution Control Subsystem/Width1';
bio(241).sigName='';
bio(241).portIdx=0;
bio(241).dim=[1,1];
bio(241).sigWidth=1;
bio(241).sigAddress='&reachout_visual_rotation_B.Width1';
bio(241).ndims=2;
bio(241).size=[];


bio(242).blkName='GUI Control/Task Execution Control Subsystem/Width2';
bio(242).sigName='';
bio(242).portIdx=0;
bio(242).dim=[1,1];
bio(242).sigWidth=1;
bio(242).sigAddress='&reachout_visual_rotation_B.Width2';
bio(242).ndims=2;
bio(242).size=[];


bio(243).blkName='Parameter Table Defn/TP_table/DELAY_POSTTRIAL_COL;Post-Trial_Delay;integer;time between trials (ms);;;none;;';
bio(243).sigName='';
bio(243).portIdx=0;
bio(243).dim=[1,1];
bio(243).sigWidth=1;
bio(243).sigAddress='&reachout_visual_rotation_B.DELAY_POSTTRIAL_COLPostTrial_Delayintegertimebetweentrialsmsnon';
bio(243).ndims=2;
bio(243).size=[];


bio(244).blkName='Parameter Table Defn/TP_table/END_TARGET_COL;End_Target;target;Second target to appear during a trial (i.e. reach to this target from 1st target);;;none;;';
bio(244).sigName='';
bio(244).portIdx=0;
bio(244).dim=[1,1];
bio(244).sigWidth=1;
bio(244).sigAddress='&reachout_visual_rotation_B.END_TARGET_COLEnd_TargettargetSecondtargettoappearduringatriali';
bio(244).ndims=2;
bio(244).size=[];


bio(245).blkName='Parameter Table Defn/TP_table/MAXREACHTIME_COL;MaxReachTime;integer;maximum time allowed for sucessful reach (ms);;;none;;';
bio(245).sigName='';
bio(245).portIdx=0;
bio(245).dim=[1,1];
bio(245).sigWidth=1;
bio(245).sigAddress='&reachout_visual_rotation_B.MAXREACHTIME_COLMaxReachTimeintegermaximumtimeallowedforsucessf';
bio(245).ndims=2;
bio(245).size=[];


bio(246).blkName='Parameter Table Defn/TP_table/ROTATION;Rotation;integer;Rotation (degrees CCW) (absolute or incremental, depending on Rotate_Type));;;none;;';
bio(246).sigName='';
bio(246).portIdx=0;
bio(246).dim=[1,1];
bio(246).sigWidth=1;
bio(246).sigAddress='&reachout_visual_rotation_B.ROTATIONRotationintegerRotationdegreesCCWabsoluteorincrementald';
bio(246).ndims=2;
bio(246).size=[];


bio(247).blkName='Parameter Table Defn/TP_table/ROTATION_CENTER;Rotate_Center;target;Target to use for rotation center (i.e. visual rotation occurs about the position defined by this target);;;none;;';
bio(247).sigName='';
bio(247).portIdx=0;
bio(247).dim=[1,1];
bio(247).sigWidth=1;
bio(247).sigAddress='&reachout_visual_rotation_B.ROTATION_CENTERRotate_CentertargetTargettouseforrotationcenteri';
bio(247).ndims=2;
bio(247).size=[];


bio(248).blkName='Parameter Table Defn/TP_table/ROTATION_TYPE;Rotate_Type;integer;0 -> no rotation, 1 -> rotate specified amount, 2 -> change rotation by specified amount;;;none;;';
bio(248).sigName='';
bio(248).portIdx=0;
bio(248).dim=[1,1];
bio(248).sigWidth=1;
bio(248).sigAddress='&reachout_visual_rotation_B.ROTATION_TYPERotate_Typeinteger0norotation1rotatespecifiedamoun';
bio(248).ndims=2;
bio(248).size=[];


bio(249).blkName='Parameter Table Defn/TP_table/START_TARGET_COL;Start_Target;target;First target to appear during a trial;;;none;;';
bio(249).sigName='';
bio(249).portIdx=0;
bio(249).dim=[1,1];
bio(249).sigWidth=1;
bio(249).sigAddress='&reachout_visual_rotation_B.START_TARGET_COLStart_TargettargetFirsttargettoappearduringatri';
bio(249).ndims=2;
bio(249).size=[];


bio(250).blkName='Parameter Table Defn/TP_table/WAIT_AT_1stTARGET_COL;1st_Target_Wait;integer;Required hold time at 1st target (ms);;;none;;';
bio(250).sigName='';
bio(250).portIdx=0;
bio(250).dim=[1,1];
bio(250).sigWidth=1;
bio(250).sigAddress='&reachout_visual_rotation_B.WAIT_AT_1stTARGET_COL1st_Target_WaitintegerRequiredholdtimeat1s';
bio(250).ndims=2;
bio(250).size=[];


bio(251).blkName='Parameter Table Defn/TP_table/WAIT_AT_2ndTARGET_COL;2nd_Target_Wait;integer;delay after reaching 2nd target (ms);;;none;;';
bio(251).sigName='';
bio(251).portIdx=0;
bio(251).dim=[1,1];
bio(251).sigWidth=1;
bio(251).sigAddress='&reachout_visual_rotation_B.WAIT_AT_2ndTARGET_COL2nd_Target_Waitintegerdelayafterreaching2n';
bio(251).ndims=2;
bio(251).size=[];


bio(252).blkName='Parameter Table Defn/events/E_HOLD_AT_TARGET;HOLD_AT_TARGET;;Subject starts holding at the peripheral target;;;none;;';
bio(252).sigName='';
bio(252).portIdx=0;
bio(252).dim=[1,1];
bio(252).sigWidth=1;
bio(252).sigAddress='&reachout_visual_rotation_B.E_HOLD_AT_TARGETHOLD_AT_TARGETSubjectstartsholdingattheperipher';
bio(252).ndims=2;
bio(252).size=[];


bio(253).blkName='Parameter Table Defn/events/E_STAY_CENTER;STAY_CENTRE;;subject must wait at centre starting now;;;none;;';
bio(253).sigName='';
bio(253).portIdx=0;
bio(253).dim=[1,1];
bio(253).sigWidth=1;
bio(253).sigAddress='&reachout_visual_rotation_B.E_STAY_CENTERSTAY_CENTREsubjectmustwaitatcentrestartingnownone';
bio(253).ndims=2;
bio(253).size=[];


bio(254).blkName='Parameter Table Defn/events/E_TARGET_ON;TARGET_ON;;Target light ON, start waiting for subject to leave centre target;;;none;;';
bio(254).sigName='';
bio(254).portIdx=0;
bio(254).dim=[1,1];
bio(254).sigWidth=1;
bio(254).sigAddress='&reachout_visual_rotation_B.E_TARGET_ONTARGET_ONTargetlightONstartwaitingforsubjecttoleavec';
bio(254).ndims=2;
bio(254).size=[];


bio(255).blkName='Parameter Table Defn/target_table/ALTCOLOR;Alt-Color;colour;;;;none;;';
bio(255).sigName='';
bio(255).portIdx=0;
bio(255).dim=[1,1];
bio(255).sigWidth=1;
bio(255).sigAddress='&reachout_visual_rotation_B.ALTCOLORAltColorcolournone';
bio(255).ndims=2;
bio(255).size=[];


bio(256).blkName='Parameter Table Defn/target_table/COLOR;Color;colour;;;;none;;';
bio(256).sigName='';
bio(256).portIdx=0;
bio(256).dim=[1,1];
bio(256).sigWidth=1;
bio(256).sigAddress='&reachout_visual_rotation_B.COLORColorcolournone';
bio(256).ndims=2;
bio(256).size=[];


bio(257).blkName='Parameter Table Defn/target_table/LOGICAL_RADIUS;Logical radius;float;;;;none;;';
bio(257).sigName='';
bio(257).portIdx=0;
bio(257).dim=[1,1];
bio(257).sigWidth=1;
bio(257).sigAddress='&reachout_visual_rotation_B.LOGICAL_RADIUSLogicalradiusfloatnone';
bio(257).ndims=2;
bio(257).size=[];


bio(258).blkName='Parameter Table Defn/target_table/VISUAL_RADIUS;Visual radius;float;;;;none;;';
bio(258).sigName='';
bio(258).portIdx=0;
bio(258).dim=[1,1];
bio(258).sigWidth=1;
bio(258).sigAddress='&reachout_visual_rotation_B.VISUAL_RADIUSVisualradiusfloatnone';
bio(258).ndims=2;
bio(258).size=[];


bio(259).blkName='Parameter Table Defn/target_table/col_x;X;float;X Position (cm) of the target relative to  local (0,0);;;none;;';
bio(259).sigName='';
bio(259).portIdx=0;
bio(259).dim=[1,1];
bio(259).sigWidth=1;
bio(259).sigAddress='&reachout_visual_rotation_B.col_xXfloatXPositioncmofthetargetrelativetolocal00none';
bio(259).ndims=2;
bio(259).size=[];


bio(260).blkName='Parameter Table Defn/target_table/col_y;Y;float;Y Position (cm) of the target relative to  local (0,0);;;none;;';
bio(260).sigName='';
bio(260).portIdx=0;
bio(260).dim=[1,1];
bio(260).sigWidth=1;
bio(260).sigAddress='&reachout_visual_rotation_B.col_yYfloatYPositioncmofthetargetrelativetolocal00none';
bio(260).ndims=2;
bio(260).size=[];


bio(261).blkName='Parameter Table Defn/task_definition/INSTRUCTIONS=';
bio(261).sigName='';
bio(261).portIdx=0;
bio(261).dim=[1,1];
bio(261).sigWidth=1;
bio(261).sigAddress='&reachout_visual_rotation_B.INSTRUCTIONS';
bio(261).ndims=2;
bio(261).size=[];


bio(262).blkName='Parameter Table Defn/task_definition/LOAD_FOR=EITHER';
bio(262).sigName='';
bio(262).portIdx=0;
bio(262).dim=[1,1];
bio(262).sigWidth=1;
bio(262).sigAddress='&reachout_visual_rotation_B.LOAD_FOREITHER';
bio(262).ndims=2;
bio(262).size=[];


bio(263).blkName='Process_Video_CMD/PVC_core/Embedded MATLAB Function/p1';
bio(263).sigName='vis_cmd_out';
bio(263).portIdx=0;
bio(263).dim=[725,1];
bio(263).sigWidth=725;
bio(263).sigAddress='&reachout_visual_rotation_B.vis_cmd_out[0]';
bio(263).ndims=2;
bio(263).size=[];


bio(264).blkName='Process_Video_CMD/PVC_core/Embedded MATLAB Function/p2';
bio(264).sigName='vis_cmd_cropped';
bio(264).portIdx=1;
bio(264).dim=[1,1];
bio(264).sigWidth=1;
bio(264).sigAddress='&reachout_visual_rotation_B.vis_cmd_cropped';
bio(264).ndims=2;
bio(264).size=[];


bio(265).blkName='Process_Video_CMD/PVC_core/Embedded MATLAB Function/p3';
bio(265).sigName='frame_sent_trigger';
bio(265).portIdx=2;
bio(265).dim=[1,1];
bio(265).sigWidth=1;
bio(265).sigAddress='&reachout_visual_rotation_B.frame_sent_trigger';
bio(265).ndims=2;
bio(265).size=[];


bio(266).blkName='Process_Video_CMD/PVC_core/Embedded MATLAB Function/p4';
bio(266).sigName='frame_number';
bio(266).portIdx=3;
bio(266).dim=[1,1];
bio(266).sigWidth=1;
bio(266).sigAddress='&reachout_visual_rotation_B.frame_number';
bio(266).ndims=2;
bio(266).size=[];


bio(267).blkName='Process_Video_CMD/PVC_core/Latency Tracking Machine/p1';
bio(267).sigName='average_ack_delay';
bio(267).portIdx=0;
bio(267).dim=[1,1];
bio(267).sigWidth=1;
bio(267).sigAddress='&reachout_visual_rotation_B.average_ack_delay';
bio(267).ndims=2;
bio(267).size=[];


bio(268).blkName='Process_Video_CMD/PVC_core/Latency Tracking Machine/p2';
bio(268).sigName='last_frame_sent';
bio(268).portIdx=1;
bio(268).dim=[1,1];
bio(268).sigWidth=1;
bio(268).sigAddress='&reachout_visual_rotation_B.last_frame_sent';
bio(268).ndims=2;
bio(268).size=[];


bio(269).blkName='Process_Video_CMD/PVC_core/Latency Tracking Machine/p3';
bio(269).sigName='last_frame_acknowledged';
bio(269).portIdx=2;
bio(269).dim=[1,1];
bio(269).sigWidth=1;
bio(269).sigAddress='&reachout_visual_rotation_B.last_frame_acknowledged';
bio(269).ndims=2;
bio(269).size=[];


bio(270).blkName='Process_Video_CMD/PVC_core/Latency Tracking Machine/p4';
bio(270).sigName='last_frame_ack_delay';
bio(270).portIdx=3;
bio(270).dim=[1,1];
bio(270).sigWidth=1;
bio(270).sigAddress='&reachout_visual_rotation_B.last_frame_ack_delay';
bio(270).ndims=2;
bio(270).size=[];


bio(271).blkName='Process_Video_CMD/PVC_core/Rate Transition';
bio(271).sigName='';
bio(271).portIdx=0;
bio(271).dim=[1,1];
bio(271).sigWidth=1;
bio(271).sigAddress='&reachout_visual_rotation_B.RateTransition_m';
bio(271).ndims=2;
bio(271).size=[];


bio(272).blkName='Process_Video_CMD/PVC_core/Rate Transition1';
bio(272).sigName='';
bio(272).portIdx=0;
bio(272).dim=[1,1];
bio(272).sigWidth=1;
bio(272).sigAddress='&reachout_visual_rotation_B.RateTransition1';
bio(272).ndims=2;
bio(272).size=[];


bio(273).blkName='Process_Video_CMD/PVC_core/Rate Transition2';
bio(273).sigName='';
bio(273).portIdx=0;
bio(273).dim=[59,70];
bio(273).sigWidth=4130;
bio(273).sigAddress='&reachout_visual_rotation_B.RateTransition2[0]';
bio(273).ndims=2;
bio(273).size=[];


bio(274).blkName='Process_Video_CMD/PVC_core/Rate Transition3';
bio(274).sigName='';
bio(274).portIdx=0;
bio(274).dim=[1,1];
bio(274).sigWidth=1;
bio(274).sigAddress='&reachout_visual_rotation_B.RateTransition3';
bio(274).ndims=2;
bio(274).size=[];


bio(275).blkName='Process_Video_CMD/PVC_core/Rate Transition4';
bio(275).sigName='';
bio(275).portIdx=0;
bio(275).dim=[1,1];
bio(275).sigWidth=1;
bio(275).sigAddress='&reachout_visual_rotation_B.RateTransition4_i';
bio(275).ndims=2;
bio(275).size=[];


bio(276).blkName='Process_Video_CMD/PVC_core/Rate Transition5';
bio(276).sigName='';
bio(276).portIdx=0;
bio(276).dim=[1,1];
bio(276).sigWidth=1;
bio(276).sigAddress='&reachout_visual_rotation_B.RateTransition5';
bio(276).ndims=2;
bio(276).size=[];


bio(277).blkName='Visual_Rotation/Triggered Subsystem/Embedded MATLAB Function';
bio(277).sigName='rotation';
bio(277).portIdx=0;
bio(277).dim=[1,1];
bio(277).sigWidth=1;
bio(277).sigAddress='&reachout_visual_rotation_B.rotation';
bio(277).ndims=2;
bio(277).size=[];


bio(278).blkName='DataLogging/Create Task State Subsystem/Counter Free-Running/Output';
bio(278).sigName='';
bio(278).portIdx=0;
bio(278).dim=[1,1];
bio(278).sigWidth=1;
bio(278).sigAddress='&reachout_visual_rotation_B.Output';
bio(278).ndims=2;
bio(278).size=[];


bio(279).blkName='DataLogging/Create Task State Subsystem/If Running/Compare';
bio(279).sigName='';
bio(279).portIdx=0;
bio(279).dim=[1,1];
bio(279).sigWidth=1;
bio(279).sigAddress='&reachout_visual_rotation_B.Compare';
bio(279).ndims=2;
bio(279).size=[];


bio(280).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Data Type Conversion';
bio(280).sigName='';
bio(280).portIdx=0;
bio(280).dim=[1,78];
bio(280).sigWidth=78;
bio(280).sigAddress='&reachout_visual_rotation_B.DataTypeConversion_p[0]';
bio(280).ndims=2;
bio(280).size=[];


bio(281).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Ideal Frames Per Packet';
bio(281).sigName='';
bio(281).portIdx=0;
bio(281).dim=[1,1];
bio(281).sigWidth=1;
bio(281).sigAddress='&reachout_visual_rotation_B.IdealFramesPerPacket';
bio(281).ndims=2;
bio(281).size=[];


bio(282).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Math Function';
bio(282).sigName='';
bio(282).portIdx=0;
bio(282).dim=[1,1];
bio(282).sigWidth=1;
bio(282).sigAddress='&reachout_visual_rotation_B.MathFunction';
bio(282).ndims=2;
bio(282).size=[];


bio(283).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-1';
bio(283).sigName='';
bio(283).portIdx=0;
bio(283).dim=[1,78];
bio(283).sigWidth=78;
bio(283).sigAddress='&reachout_visual_rotation_B.t1[0]';
bio(283).ndims=2;
bio(283).size=[];


bio(284).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-2';
bio(284).sigName='';
bio(284).portIdx=0;
bio(284).dim=[1,78];
bio(284).sigWidth=78;
bio(284).sigAddress='&reachout_visual_rotation_B.t2[0]';
bio(284).ndims=2;
bio(284).size=[];


bio(285).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-3';
bio(285).sigName='';
bio(285).portIdx=0;
bio(285).dim=[1,78];
bio(285).sigWidth=78;
bio(285).sigAddress='&reachout_visual_rotation_B.t3[0]';
bio(285).ndims=2;
bio(285).size=[];


bio(286).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-4';
bio(286).sigName='';
bio(286).portIdx=0;
bio(286).dim=[1,78];
bio(286).sigWidth=78;
bio(286).sigAddress='&reachout_visual_rotation_B.t4[0]';
bio(286).ndims=2;
bio(286).size=[];


bio(287).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-5';
bio(287).sigName='';
bio(287).portIdx=0;
bio(287).dim=[1,78];
bio(287).sigWidth=78;
bio(287).sigAddress='&reachout_visual_rotation_B.t5[0]';
bio(287).ndims=2;
bio(287).size=[];


bio(288).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/MinMax';
bio(288).sigName='';
bio(288).portIdx=0;
bio(288).dim=[1,1];
bio(288).sigWidth=1;
bio(288).sigAddress='&reachout_visual_rotation_B.MinMax_k';
bio(288).ndims=2;
bio(288).size=[];


bio(289).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Product';
bio(289).sigName='';
bio(289).portIdx=0;
bio(289).dim=[1,1];
bio(289).sigWidth=1;
bio(289).sigAddress='&reachout_visual_rotation_B.Product_l';
bio(289).ndims=2;
bio(289).size=[];


bio(290).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Relational Operator';
bio(290).sigName='';
bio(290).portIdx=0;
bio(290).dim=[1,1];
bio(290).sigWidth=1;
bio(290).sigAddress='&reachout_visual_rotation_B.RelationalOperator';
bio(290).ndims=2;
bio(290).size=[];


bio(291).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Selector';
bio(291).sigName='';
bio(291).portIdx=0;
bio(291).dim=[1,300];
bio(291).sigWidth=300;
bio(291).sigAddress='&reachout_visual_rotation_B.Selector_e[0]';
bio(291).ndims=2;
bio(291).size=[];


bio(292).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Subtract';
bio(292).sigName='';
bio(292).portIdx=0;
bio(292).dim=[1,1];
bio(292).sigWidth=1;
bio(292).sigAddress='&reachout_visual_rotation_B.Subtract_o';
bio(292).ndims=2;
bio(292).size=[];


bio(293).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Width';
bio(293).sigName='';
bio(293).portIdx=0;
bio(293).dim=[1,1];
bio(293).sigWidth=1;
bio(293).sigAddress='&reachout_visual_rotation_B.Width_az';
bio(293).ndims=2;
bio(293).size=[];


bio(294).blkName='DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Pack';
bio(294).sigName='';
bio(294).portIdx=0;
bio(294).dim=[1224,1];
bio(294).sigWidth=1224;
bio(294).sigAddress='&reachout_visual_rotation_B.Pack_i[0]';
bio(294).ndims=2;
bio(294).size=[];


bio(295).blkName='DataLogging/Network Transfer Subsystem/is running/Compare';
bio(295).sigName='';
bio(295).portIdx=0;
bio(295).dim=[1,1];
bio(295).sigWidth=1;
bio(295).sigAddress='&reachout_visual_rotation_B.Compare_b';
bio(295).ndims=2;
bio(295).size=[];


bio(296).blkName='DataLogging/Poll Force Plates/plate1/parse packet 1/p1';
bio(296).sigName='forces';
bio(296).portIdx=0;
bio(296).dim=[3,1];
bio(296).sigWidth=3;
bio(296).sigAddress='&reachout_visual_rotation_B.forces_g[0]';
bio(296).ndims=2;
bio(296).size=[];


bio(297).blkName='DataLogging/Poll Force Plates/plate1/parse packet 1/p2';
bio(297).sigName='moments';
bio(297).portIdx=1;
bio(297).dim=[3,1];
bio(297).sigWidth=3;
bio(297).sigAddress='&reachout_visual_rotation_B.moments_p[0]';
bio(297).ndims=2;
bio(297).size=[];


bio(298).blkName='DataLogging/Poll Force Plates/plate1/parse packet 1/p3';
bio(298).sigName='timer';
bio(298).portIdx=2;
bio(298).dim=[1,1];
bio(298).sigWidth=1;
bio(298).sigAddress='&reachout_visual_rotation_B.timer_c';
bio(298).ndims=2;
bio(298).size=[];


bio(299).blkName='DataLogging/Poll Force Plates/plate1/Receive/p1';
bio(299).sigName='';
bio(299).portIdx=0;
bio(299).dim=[64,1];
bio(299).sigWidth=64;
bio(299).sigAddress='&reachout_visual_rotation_B.Receive_o1_k[0]';
bio(299).ndims=2;
bio(299).size=[];


bio(300).blkName='DataLogging/Poll Force Plates/plate1/Receive/p2';
bio(300).sigName='';
bio(300).portIdx=1;
bio(300).dim=[1,1];
bio(300).sigWidth=1;
bio(300).sigAddress='&reachout_visual_rotation_B.Receive_o2_mi';
bio(300).ndims=2;
bio(300).size=[];


bio(301).blkName='DataLogging/Poll Force Plates/plate2/parse packet 1/p1';
bio(301).sigName='forces';
bio(301).portIdx=0;
bio(301).dim=[3,1];
bio(301).sigWidth=3;
bio(301).sigAddress='&reachout_visual_rotation_B.forces[0]';
bio(301).ndims=2;
bio(301).size=[];


bio(302).blkName='DataLogging/Poll Force Plates/plate2/parse packet 1/p2';
bio(302).sigName='moments';
bio(302).portIdx=1;
bio(302).dim=[3,1];
bio(302).sigWidth=3;
bio(302).sigAddress='&reachout_visual_rotation_B.moments[0]';
bio(302).ndims=2;
bio(302).size=[];


bio(303).blkName='DataLogging/Poll Force Plates/plate2/parse packet 1/p3';
bio(303).sigName='timer';
bio(303).portIdx=2;
bio(303).dim=[1,1];
bio(303).sigWidth=1;
bio(303).sigAddress='&reachout_visual_rotation_B.timer';
bio(303).ndims=2;
bio(303).size=[];


bio(304).blkName='DataLogging/Poll Force Plates/plate2/Receive1/p1';
bio(304).sigName='';
bio(304).portIdx=0;
bio(304).dim=[64,1];
bio(304).sigWidth=64;
bio(304).sigAddress='&reachout_visual_rotation_B.Receive1_o1[0]';
bio(304).ndims=2;
bio(304).size=[];


bio(305).blkName='DataLogging/Poll Force Plates/plate2/Receive1/p2';
bio(305).sigName='';
bio(305).portIdx=1;
bio(305).dim=[1,1];
bio(305).sigWidth=1;
bio(305).sigAddress='&reachout_visual_rotation_B.Receive1_o2';
bio(305).ndims=2;
bio(305).size=[];


bio(306).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/TypeCast';
bio(306).sigName='y';
bio(306).portIdx=0;
bio(306).dim=[1,1];
bio(306).sigWidth=1;
bio(306).sigAddress='&reachout_visual_rotation_B.y_i';
bio(306).ndims=2;
bio(306).size=[];


bio(307).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Data Type Conversion';
bio(307).sigName='';
bio(307).portIdx=0;
bio(307).dim=[1,1];
bio(307).sigWidth=1;
bio(307).sigAddress='&reachout_visual_rotation_B.DataTypeConversion_l';
bio(307).ndims=2;
bio(307).size=[];


bio(308).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/DPRAM Read Value';
bio(308).sigName='';
bio(308).portIdx=0;
bio(308).dim=[1,1];
bio(308).sigWidth=1;
bio(308).sigAddress='&reachout_visual_rotation_B.DPRAMReadValue';
bio(308).ndims=2;
bio(308).size=[];


bio(309).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Unit Delay';
bio(309).sigName='';
bio(309).portIdx=0;
bio(309).dim=[1,1];
bio(309).sigWidth=1;
bio(309).sigAddress='&reachout_visual_rotation_B.UnitDelay';
bio(309).ndims=2;
bio(309).size=[];


bio(310).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Unit Delay1';
bio(310).sigName='';
bio(310).portIdx=0;
bio(310).dim=[1,1];
bio(310).sigWidth=1;
bio(310).sigAddress='&reachout_visual_rotation_B.UnitDelay1';
bio(310).ndims=2;
bio(310).size=[];


bio(311).blkName='GUI Control/Task Execution Control Subsystem/Compare To Constant/Compare';
bio(311).sigName='';
bio(311).portIdx=0;
bio(311).dim=[1,1];
bio(311).sigWidth=1;
bio(311).sigAddress='&reachout_visual_rotation_B.Compare_o';
bio(311).ndims=2;
bio(311).size=[];


bio(312).blkName='DataLogging/Create Task State Subsystem/Counter Free-Running/Increment Real World/FixPt Sum1';
bio(312).sigName='';
bio(312).portIdx=0;
bio(312).dim=[1,1];
bio(312).sigWidth=1;
bio(312).sigAddress='&reachout_visual_rotation_B.FixPtSum1';
bio(312).ndims=2;
bio(312).size=[];


bio(313).blkName='DataLogging/Create Task State Subsystem/Counter Free-Running/Wrap To Zero/FixPt Switch';
bio(313).sigName='';
bio(313).portIdx=0;
bio(313).dim=[1,1];
bio(313).sigWidth=1;
bio(313).sigAddress='&reachout_visual_rotation_B.FixPtSwitch';
bio(313).ndims=2;
bio(313).size=[];


bio(314).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Counter/Sum';
bio(314).sigName='';
bio(314).portIdx=0;
bio(314).dim=[1,1];
bio(314).sigWidth=1;
bio(314).sigAddress='&reachout_visual_rotation_B.Sum';
bio(314).ndims=2;
bio(314).size=[];


bio(315).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Counter/Unit Delay';
bio(315).sigName='';
bio(315).portIdx=0;
bio(315).dim=[1,1];
bio(315).sigWidth=1;
bio(315).sigAddress='&reachout_visual_rotation_B.UnitDelay_h';
bio(315).ndims=2;
bio(315).size=[];


bio(316).blkName='DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Counter Free-Running/Output';
bio(316).sigName='';
bio(316).portIdx=0;
bio(316).dim=[1,1];
bio(316).sigWidth=1;
bio(316).sigAddress='&reachout_visual_rotation_B.Output_n';
bio(316).ndims=2;
bio(316).size=[];


bio(317).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Counter Free-Running/Output';
bio(317).sigName='';
bio(317).portIdx=0;
bio(317).dim=[1,1];
bio(317).sigWidth=1;
bio(317).sigAddress='&reachout_visual_rotation_B.Output_c';
bio(317).ndims=2;
bio(317).size=[];


bio(318).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Read DPRAM/Data Type Conversion';
bio(318).sigName='';
bio(318).portIdx=0;
bio(318).dim=[1,1];
bio(318).sigWidth=1;
bio(318).sigAddress='&reachout_visual_rotation_B.DataTypeConversion_ns';
bio(318).ndims=2;
bio(318).size=[];


bio(319).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Read DPRAM/Data Type Conversion1';
bio(319).sigName='';
bio(319).portIdx=0;
bio(319).dim=[1,1];
bio(319).sigWidth=1;
bio(319).sigAddress='&reachout_visual_rotation_B.DataTypeConversion1_p';
bio(319).ndims=2;
bio(319).size=[];


bio(320).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Read DPRAM/Data Type Conversion2';
bio(320).sigName='';
bio(320).portIdx=0;
bio(320).dim=[1,1];
bio(320).sigWidth=1;
bio(320).sigAddress='&reachout_visual_rotation_B.DataTypeConversion2_c';
bio(320).ndims=2;
bio(320).size=[];


bio(321).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Read DPRAM/Read';
bio(321).sigName='';
bio(321).portIdx=0;
bio(321).dim=[1,1];
bio(321).sigWidth=1;
bio(321).sigAddress='&reachout_visual_rotation_B.Read';
bio(321).ndims=2;
bio(321).size=[];


bio(322).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Write DPRAM/Data Type Conversion';
bio(322).sigName='';
bio(322).portIdx=0;
bio(322).dim=[1,1];
bio(322).sigWidth=1;
bio(322).sigAddress='&reachout_visual_rotation_B.DataTypeConversion_pt';
bio(322).ndims=2;
bio(322).size=[];


bio(323).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Write DPRAM/Data Type Conversion1';
bio(323).sigName='';
bio(323).portIdx=0;
bio(323).dim=[1,1];
bio(323).sigWidth=1;
bio(323).sigAddress='&reachout_visual_rotation_B.DataTypeConversion1_a';
bio(323).ndims=2;
bio(323).size=[];


bio(324).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Create timestamp';
bio(324).sigName='timestamp_out';
bio(324).portIdx=0;
bio(324).dim=[1,1];
bio(324).sigWidth=1;
bio(324).sigAddress='&reachout_visual_rotation_B.sf_Createtimestamp.timestamp_out';
bio(324).ndims=2;
bio(324).size=[];


bio(325).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Data Type Conversion';
bio(325).sigName='';
bio(325).portIdx=0;
bio(325).dim=[6,1];
bio(325).sigWidth=6;
bio(325).sigAddress='&reachout_visual_rotation_B.DataTypeConversion_c[0]';
bio(325).ndims=2;
bio(325).size=[];


bio(326).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Byte Reversal';
bio(326).sigName='';
bio(326).portIdx=0;
bio(326).dim=[6,1];
bio(326).sigWidth=6;
bio(326).sigAddress='&reachout_visual_rotation_B.ByteReversal[0]';
bio(326).ndims=2;
bio(326).size=[];


bio(327).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Byte Reversal1';
bio(327).sigName='';
bio(327).portIdx=0;
bio(327).dim=[3,1];
bio(327).sigWidth=3;
bio(327).sigAddress='&reachout_visual_rotation_B.ByteReversal1[0]';
bio(327).ndims=2;
bio(327).size=[];


bio(328).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Receive from Robot 1 Force Sensor/p1';
bio(328).sigName='';
bio(328).portIdx=0;
bio(328).dim=[36,1];
bio(328).sigWidth=36;
bio(328).sigAddress='&reachout_visual_rotation_B.ReceivefromRobot1ForceSensor_o1[0]';
bio(328).ndims=2;
bio(328).size=[];


bio(329).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Receive from Robot 1 Force Sensor/p2';
bio(329).sigName='';
bio(329).portIdx=1;
bio(329).dim=[1,1];
bio(329).sigWidth=1;
bio(329).sigAddress='&reachout_visual_rotation_B.ReceivefromRobot1ForceSensor_o2';
bio(329).ndims=2;
bio(329).size=[];


bio(330).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Unpack/p1';
bio(330).sigName='';
bio(330).portIdx=0;
bio(330).dim=[3,1];
bio(330).sigWidth=3;
bio(330).sigAddress='&reachout_visual_rotation_B.Unpack_o1[0]';
bio(330).ndims=2;
bio(330).size=[];


bio(331).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Unpack/p2';
bio(331).sigName='';
bio(331).portIdx=1;
bio(331).dim=[6,1];
bio(331).sigWidth=6;
bio(331).sigAddress='&reachout_visual_rotation_B.Unpack_o2[0]';
bio(331).ndims=2;
bio(331).size=[];


bio(332).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Switch';
bio(332).sigName='';
bio(332).portIdx=0;
bio(332).dim=[7,1];
bio(332).sigWidth=7;
bio(332).sigAddress='&reachout_visual_rotation_B.Switch[0]';
bio(332).ndims=2;
bio(332).size=[];


bio(333).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Create timestamp';
bio(333).sigName='timestamp_out';
bio(333).portIdx=0;
bio(333).dim=[1,1];
bio(333).sigWidth=1;
bio(333).sigAddress='&reachout_visual_rotation_B.sf_Createtimestamp_l.timestamp_out';
bio(333).ndims=2;
bio(333).size=[];


bio(334).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Type Conversion1';
bio(334).sigName='';
bio(334).portIdx=0;
bio(334).dim=[6,1];
bio(334).sigWidth=6;
bio(334).sigAddress='&reachout_visual_rotation_B.DataTypeConversion1_o[0]';
bio(334).ndims=2;
bio(334).size=[];


bio(335).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Byte Reversal';
bio(335).sigName='';
bio(335).portIdx=0;
bio(335).dim=[6,1];
bio(335).sigWidth=6;
bio(335).sigAddress='&reachout_visual_rotation_B.ByteReversal_k[0]';
bio(335).ndims=2;
bio(335).size=[];


bio(336).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Byte Reversal1';
bio(336).sigName='';
bio(336).portIdx=0;
bio(336).dim=[3,1];
bio(336).sigWidth=3;
bio(336).sigAddress='&reachout_visual_rotation_B.ByteReversal1_h[0]';
bio(336).ndims=2;
bio(336).size=[];


bio(337).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Receive from Robot 2 Force Sensor/p1';
bio(337).sigName='';
bio(337).portIdx=0;
bio(337).dim=[36,1];
bio(337).sigWidth=36;
bio(337).sigAddress='&reachout_visual_rotation_B.ReceivefromRobot2ForceSensor_o1[0]';
bio(337).ndims=2;
bio(337).size=[];


bio(338).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Receive from Robot 2 Force Sensor/p2';
bio(338).sigName='';
bio(338).portIdx=1;
bio(338).dim=[1,1];
bio(338).sigWidth=1;
bio(338).sigAddress='&reachout_visual_rotation_B.ReceivefromRobot2ForceSensor_o2';
bio(338).ndims=2;
bio(338).size=[];


bio(339).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Unpack1/p1';
bio(339).sigName='';
bio(339).portIdx=0;
bio(339).dim=[3,1];
bio(339).sigWidth=3;
bio(339).sigAddress='&reachout_visual_rotation_B.Unpack1_o1[0]';
bio(339).ndims=2;
bio(339).size=[];


bio(340).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Unpack1/p2';
bio(340).sigName='';
bio(340).portIdx=1;
bio(340).dim=[6,1];
bio(340).sigWidth=6;
bio(340).sigAddress='&reachout_visual_rotation_B.Unpack1_o2[0]';
bio(340).ndims=2;
bio(340).size=[];


bio(341).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Switch1';
bio(341).sigName='';
bio(341).portIdx=0;
bio(341).dim=[7,1];
bio(341).sigWidth=7;
bio(341).sigAddress='&reachout_visual_rotation_B.Switch1[0]';
bio(341).ndims=2;
bio(341).size=[];


bio(342).blkName='DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Counter Free-Running/Increment Real World/FixPt Sum1';
bio(342).sigName='';
bio(342).portIdx=0;
bio(342).dim=[1,1];
bio(342).sigWidth=1;
bio(342).sigAddress='&reachout_visual_rotation_B.FixPtSum1_e';
bio(342).ndims=2;
bio(342).size=[];


bio(343).blkName='DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Counter Free-Running/Wrap To Zero/FixPt Switch';
bio(343).sigName='';
bio(343).portIdx=0;
bio(343).dim=[1,1];
bio(343).sigWidth=1;
bio(343).sigAddress='&reachout_visual_rotation_B.FixPtSwitch_d';
bio(343).ndims=2;
bio(343).size=[];


bio(344).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Counter Free-Running/Increment Real World/FixPt Sum1';
bio(344).sigName='';
bio(344).portIdx=0;
bio(344).dim=[1,1];
bio(344).sigWidth=1;
bio(344).sigAddress='&reachout_visual_rotation_B.FixPtSum1_d';
bio(344).ndims=2;
bio(344).size=[];


bio(345).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Counter Free-Running/Wrap To Zero/FixPt Switch';
bio(345).sigName='';
bio(345).portIdx=0;
bio(345).dim=[1,1];
bio(345).sigWidth=1;
bio(345).sigAddress='&reachout_visual_rotation_B.FixPtSwitch_p';
bio(345).ndims=2;
bio(345).size=[];


bio(346).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Detect Change/FixPt Relational Operator';
bio(346).sigName='';
bio(346).portIdx=0;
bio(346).dim=[1,1];
bio(346).sigWidth=1;
bio(346).sigAddress='&reachout_visual_rotation_B.FixPtRelationalOperator';
bio(346).ndims=2;
bio(346).size=[];


bio(347).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Detect Change/Delay Input1';
bio(347).sigName='U(k-1)';
bio(347).portIdx=0;
bio(347).dim=[1,1];
bio(347).sigWidth=1;
bio(347).sigAddress='&reachout_visual_rotation_B.Uk1';
bio(347).ndims=2;
bio(347).size=[];


bio(348).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Byte Reversal';
bio(348).sigName='';
bio(348).portIdx=0;
bio(348).dim=[1,1];
bio(348).sigWidth=1;
bio(348).sigAddress='&reachout_visual_rotation_B.ByteReversal_m';
bio(348).ndims=2;
bio(348).size=[];


bio(349).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Byte Reversal1';
bio(349).sigName='';
bio(349).portIdx=0;
bio(349).dim=[1,1];
bio(349).sigWidth=1;
bio(349).sigAddress='&reachout_visual_rotation_B.ByteReversal1_m';
bio(349).ndims=2;
bio(349).size=[];


bio(350).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Byte Reversal2';
bio(350).sigName='';
bio(350).portIdx=0;
bio(350).dim=[1,1];
bio(350).sigWidth=1;
bio(350).sigAddress='&reachout_visual_rotation_B.ByteReversal2';
bio(350).ndims=2;
bio(350).size=[];


bio(351).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Pack';
bio(351).sigName='';
bio(351).portIdx=0;
bio(351).dim=[8,1];
bio(351).sigWidth=8;
bio(351).sigAddress='&reachout_visual_rotation_B.Pack_c[0]';
bio(351).ndims=2;
bio(351).size=[];


bio(352).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Switch';
bio(352).sigName='';
bio(352).portIdx=0;
bio(352).dim=[1,1];
bio(352).sigWidth=1;
bio(352).sigAddress='&reachout_visual_rotation_B.Switch_e';
bio(352).ndims=2;
bio(352).size=[];


bio(353).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Byte Reversal';
bio(353).sigName='';
bio(353).portIdx=0;
bio(353).dim=[1,1];
bio(353).sigWidth=1;
bio(353).sigAddress='&reachout_visual_rotation_B.ByteReversal_kp';
bio(353).ndims=2;
bio(353).size=[];


bio(354).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Byte Reversal1';
bio(354).sigName='';
bio(354).portIdx=0;
bio(354).dim=[1,1];
bio(354).sigWidth=1;
bio(354).sigAddress='&reachout_visual_rotation_B.ByteReversal1_b';
bio(354).ndims=2;
bio(354).size=[];


bio(355).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Byte Reversal2';
bio(355).sigName='';
bio(355).portIdx=0;
bio(355).dim=[1,1];
bio(355).sigWidth=1;
bio(355).sigAddress='&reachout_visual_rotation_B.ByteReversal2_l';
bio(355).ndims=2;
bio(355).size=[];


bio(356).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Pack';
bio(356).sigName='';
bio(356).portIdx=0;
bio(356).dim=[8,1];
bio(356).sigWidth=8;
bio(356).sigAddress='&reachout_visual_rotation_B.Pack_l[0]';
bio(356).ndims=2;
bio(356).size=[];


bio(357).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Switch';
bio(357).sigName='';
bio(357).portIdx=0;
bio(357).dim=[1,1];
bio(357).sigWidth=1;
bio(357).sigAddress='&reachout_visual_rotation_B.Switch_l';
bio(357).ndims=2;
bio(357).size=[];


bio(358).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Detect Change/FixPt Relational Operator';
bio(358).sigName='';
bio(358).portIdx=0;
bio(358).dim=[1,1];
bio(358).sigWidth=1;
bio(358).sigAddress='&reachout_visual_rotation_B.FixPtRelationalOperator_e';
bio(358).ndims=2;
bio(358).size=[];


bio(359).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Detect Change/Delay Input1';
bio(359).sigName='U(k-1)';
bio(359).portIdx=0;
bio(359).dim=[1,1];
bio(359).sigWidth=1;
bio(359).sigAddress='&reachout_visual_rotation_B.Uk1_a';
bio(359).ndims=2;
bio(359).size=[];


function len = getlenBIO
len = 359;

