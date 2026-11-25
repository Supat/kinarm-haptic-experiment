function bio=Position_controller_enable_disablebio
bio = [];
bio(1).blkName='Trial_Control/p1';
bio(1).sigName='logging_enable';
bio(1).portIdx=0;
bio(1).dim=[1,1];
bio(1).sigWidth=1;
bio(1).sigAddress='&Position_controller_enable_disable_B.logging_enable';
bio(1).ndims=2;
bio(1).size=[];

bio(getlenBIO) = bio(1);

bio(2).blkName='Trial_Control/p2';
bio(2).sigName='event_code';
bio(2).portIdx=1;
bio(2).dim=[1,1];
bio(2).sigWidth=1;
bio(2).sigAddress='&Position_controller_enable_disable_B.event_code';
bio(2).ndims=2;
bio(2).size=[];


bio(3).blkName='Trial_Control/p3';
bio(3).sigName='duration';
bio(3).portIdx=2;
bio(3).dim=[1,1];
bio(3).sigWidth=1;
bio(3).sigAddress='&Position_controller_enable_disable_B.duration';
bio(3).ndims=2;
bio(3).size=[];


bio(4).blkName='Trial_Control/p4';
bio(4).sigName='start_target';
bio(4).portIdx=3;
bio(4).dim=[1,2];
bio(4).sigWidth=2;
bio(4).sigAddress='&Position_controller_enable_disable_B.start_target[0]';
bio(4).ndims=2;
bio(4).size=[];


bio(5).blkName='Trial_Control/p5';
bio(5).sigName='dest_target';
bio(5).portIdx=4;
bio(5).dim=[1,2];
bio(5).sigWidth=2;
bio(5).sigAddress='&Position_controller_enable_disable_B.dest_target[0]';
bio(5).ndims=2;
bio(5).size=[];


bio(6).blkName='Trial_Control/p6';
bio(6).sigName='e_start';
bio(6).portIdx=5;
bio(6).dim=[1,1];
bio(6).sigWidth=1;
bio(6).sigAddress='&Position_controller_enable_disable_B.e_start';
bio(6).ndims=2;
bio(6).size=[];


bio(7).blkName='Trial_Control/p7';
bio(7).sigName='e_enable_controller';
bio(7).portIdx=6;
bio(7).dim=[1,1];
bio(7).sigWidth=1;
bio(7).sigAddress='&Position_controller_enable_disable_B.e_enable_controller';
bio(7).ndims=2;
bio(7).size=[];


bio(8).blkName='Trial_Control/p8';
bio(8).sigName='e_disable_controller';
bio(8).portIdx=7;
bio(8).dim=[1,1];
bio(8).sigWidth=1;
bio(8).sigAddress='&Position_controller_enable_disable_B.e_disable_controller';
bio(8).ndims=2;
bio(8).size=[];


bio(9).blkName='Trial_Control/p9';
bio(9).sigName='e_Trial_End';
bio(9).portIdx=8;
bio(9).dim=[1,1];
bio(9).sigWidth=1;
bio(9).sigAddress='&Position_controller_enable_disable_B.e_Trial_End';
bio(9).ndims=2;
bio(9).size=[];


bio(10).blkName='Matrix Concatenation';
bio(10).sigName='';
bio(10).portIdx=0;
bio(10).dim=[4,70];
bio(10).sigWidth=280;
bio(10).sigAddress='&Position_controller_enable_disable_B.MatrixConcatenation_c[0]';
bio(10).ndims=2;
bio(10).size=[];


bio(11).blkName='GUI Control/Library Patch Version';
bio(11).sigName='';
bio(11).portIdx=0;
bio(11).dim=[1,1];
bio(11).sigWidth=1;
bio(11).sigAddress='&Position_controller_enable_disable_B.LibraryPatchVersion';
bio(11).ndims=2;
bio(11).size=[];


bio(12).blkName='GUI Control/Library Version';
bio(12).sigName='';
bio(12).portIdx=0;
bio(12).dim=[1,1];
bio(12).sigWidth=1;
bio(12).sigAddress='&Position_controller_enable_disable_B.LibraryVersion';
bio(12).ndims=2;
bio(12).size=[];


bio(13).blkName='GUI Control/Next Block';
bio(13).sigName='';
bio(13).portIdx=0;
bio(13).dim=[1,1];
bio(13).sigWidth=1;
bio(13).sigAddress='&Position_controller_enable_disable_B.NextBlock';
bio(13).ndims=2;
bio(13).size=[];


bio(14).blkName='GUI Control/Pause Type';
bio(14).sigName='';
bio(14).portIdx=0;
bio(14).dim=[1,1];
bio(14).sigWidth=1;
bio(14).sigAddress='&Position_controller_enable_disable_B.PauseType';
bio(14).ndims=2;
bio(14).size=[];


bio(15).blkName='GUI Control/Task Version';
bio(15).sigName='';
bio(15).portIdx=0;
bio(15).dim=[1,1];
bio(15).sigWidth=1;
bio(15).sigAddress='&Position_controller_enable_disable_B.TaskVersion';
bio(15).ndims=2;
bio(15).size=[];


bio(16).blkName='GUI Control/Use Task Protocol Block Sequence Flag';
bio(16).sigName='';
bio(16).portIdx=0;
bio(16).dim=[1,1];
bio(16).sigWidth=1;
bio(16).sigAddress='&Position_controller_enable_disable_B.UseTaskProtocolBlockSequenceFlag';
bio(16).ndims=2;
bio(16).size=[];


bio(17).blkName='GUI Control/dlm build time';
bio(17).sigName='';
bio(17).portIdx=0;
bio(17).dim=[1,1];
bio(17).sigWidth=1;
bio(17).sigAddress='&Position_controller_enable_disable_B.dlmbuildtime';
bio(17).ndims=2;
bio(17).size=[];


bio(18).blkName='GUI Control/xPC Version';
bio(18).sigName='';
bio(18).portIdx=0;
bio(18).dim=[1,1];
bio(18).sigWidth=1;
bio(18).sigAddress='&Position_controller_enable_disable_B.xPCVersion';
bio(18).ndims=2;
bio(18).size=[];


bio(19).blkName='GUI Control/Convert';
bio(19).sigName='';
bio(19).portIdx=0;
bio(19).dim=[32,25];
bio(19).sigWidth=800;
bio(19).sigAddress='&Position_controller_enable_disable_B.Convert[0]';
bio(19).ndims=2;
bio(19).size=[];


bio(20).blkName='GUI Control/Convert1';
bio(20).sigName='';
bio(20).portIdx=0;
bio(20).dim=[100,50];
bio(20).sigWidth=5000;
bio(20).sigAddress='&Position_controller_enable_disable_B.Convert1_f[0]';
bio(20).ndims=2;
bio(20).size=[];


bio(21).blkName='GUI Control/Convert10';
bio(21).sigName='';
bio(21).portIdx=0;
bio(21).dim=[1,2];
bio(21).sigWidth=2;
bio(21).sigAddress='&Position_controller_enable_disable_B.Convert10[0]';
bio(21).ndims=2;
bio(21).size=[];


bio(22).blkName='GUI Control/Convert11';
bio(22).sigName='';
bio(22).portIdx=0;
bio(22).dim=[5,2];
bio(22).sigWidth=10;
bio(22).sigAddress='&Position_controller_enable_disable_B.Convert11[0]';
bio(22).ndims=2;
bio(22).size=[];


bio(23).blkName='GUI Control/Convert12';
bio(23).sigName='';
bio(23).portIdx=0;
bio(23).dim=[1,1];
bio(23).sigWidth=1;
bio(23).sigAddress='&Position_controller_enable_disable_B.Convert12';
bio(23).ndims=2;
bio(23).size=[];


bio(24).blkName='GUI Control/Convert13';
bio(24).sigName='';
bio(24).portIdx=0;
bio(24).dim=[1,3];
bio(24).sigWidth=3;
bio(24).sigAddress='&Position_controller_enable_disable_B.Convert13[0]';
bio(24).ndims=2;
bio(24).size=[];


bio(25).blkName='GUI Control/Convert14';
bio(25).sigName='';
bio(25).portIdx=0;
bio(25).dim=[1,2];
bio(25).sigWidth=2;
bio(25).sigAddress='&Position_controller_enable_disable_B.Convert14[0]';
bio(25).ndims=2;
bio(25).size=[];


bio(26).blkName='GUI Control/Convert15';
bio(26).sigName='';
bio(26).portIdx=0;
bio(26).dim=[1,1];
bio(26).sigWidth=1;
bio(26).sigAddress='&Position_controller_enable_disable_B.Convert15';
bio(26).ndims=2;
bio(26).size=[];


bio(27).blkName='GUI Control/Convert16';
bio(27).sigName='';
bio(27).portIdx=0;
bio(27).dim=[1,1];
bio(27).sigWidth=1;
bio(27).sigAddress='&Position_controller_enable_disable_B.Convert16';
bio(27).ndims=2;
bio(27).size=[];


bio(28).blkName='GUI Control/Convert17';
bio(28).sigName='';
bio(28).portIdx=0;
bio(28).dim=[1,1];
bio(28).sigWidth=1;
bio(28).sigAddress='&Position_controller_enable_disable_B.Convert17';
bio(28).ndims=2;
bio(28).size=[];


bio(29).blkName='GUI Control/Convert18';
bio(29).sigName='';
bio(29).portIdx=0;
bio(29).dim=[1,1];
bio(29).sigWidth=1;
bio(29).sigAddress='&Position_controller_enable_disable_B.Convert18';
bio(29).ndims=2;
bio(29).size=[];


bio(30).blkName='GUI Control/Convert19';
bio(30).sigName='';
bio(30).portIdx=0;
bio(30).dim=[1,1];
bio(30).sigWidth=1;
bio(30).sigAddress='&Position_controller_enable_disable_B.Convert19_g';
bio(30).ndims=2;
bio(30).size=[];


bio(31).blkName='GUI Control/Convert2';
bio(31).sigName='';
bio(31).portIdx=0;
bio(31).dim=[20,20];
bio(31).sigWidth=400;
bio(31).sigAddress='&Position_controller_enable_disable_B.Convert2_h[0]';
bio(31).ndims=2;
bio(31).size=[];


bio(32).blkName='GUI Control/Convert20';
bio(32).sigName='';
bio(32).portIdx=0;
bio(32).dim=[1,1];
bio(32).sigWidth=1;
bio(32).sigAddress='&Position_controller_enable_disable_B.Convert20';
bio(32).ndims=2;
bio(32).size=[];


bio(33).blkName='GUI Control/Convert21';
bio(33).sigName='';
bio(33).portIdx=0;
bio(33).dim=[1,1];
bio(33).sigWidth=1;
bio(33).sigAddress='&Position_controller_enable_disable_B.Convert21';
bio(33).ndims=2;
bio(33).size=[];


bio(34).blkName='GUI Control/Convert22';
bio(34).sigName='';
bio(34).portIdx=0;
bio(34).dim=[1,1];
bio(34).sigWidth=1;
bio(34).sigAddress='&Position_controller_enable_disable_B.Convert22';
bio(34).ndims=2;
bio(34).size=[];


bio(35).blkName='GUI Control/Convert23';
bio(35).sigName='';
bio(35).portIdx=0;
bio(35).dim=[1,1];
bio(35).sigWidth=1;
bio(35).sigAddress='&Position_controller_enable_disable_B.Convert23';
bio(35).ndims=2;
bio(35).size=[];


bio(36).blkName='GUI Control/Convert24';
bio(36).sigName='';
bio(36).portIdx=0;
bio(36).dim=[1,1];
bio(36).sigWidth=1;
bio(36).sigAddress='&Position_controller_enable_disable_B.Convert24';
bio(36).ndims=2;
bio(36).size=[];


bio(37).blkName='GUI Control/Convert3';
bio(37).sigName='';
bio(37).portIdx=0;
bio(37).dim=[100,50];
bio(37).sigWidth=5000;
bio(37).sigAddress='&Position_controller_enable_disable_B.Convert3_e[0]';
bio(37).ndims=2;
bio(37).size=[];


bio(38).blkName='GUI Control/Convert4';
bio(38).sigName='';
bio(38).portIdx=0;
bio(38).dim=[50,500];
bio(38).sigWidth=25000;
bio(38).sigAddress='&Position_controller_enable_disable_B.Convert4[0]';
bio(38).ndims=2;
bio(38).size=[];


bio(39).blkName='GUI Control/Convert5';
bio(39).sigName='';
bio(39).portIdx=0;
bio(39).dim=[1000,2];
bio(39).sigWidth=2000;
bio(39).sigAddress='&Position_controller_enable_disable_B.Convert5[0]';
bio(39).ndims=2;
bio(39).size=[];


bio(40).blkName='GUI Control/Convert6';
bio(40).sigName='';
bio(40).portIdx=0;
bio(40).dim=[50,1];
bio(40).sigWidth=50;
bio(40).sigAddress='&Position_controller_enable_disable_B.Convert6[0]';
bio(40).ndims=2;
bio(40).size=[];


bio(41).blkName='GUI Control/Convert7';
bio(41).sigName='';
bio(41).portIdx=0;
bio(41).dim=[1,1];
bio(41).sigWidth=1;
bio(41).sigAddress='&Position_controller_enable_disable_B.Convert7';
bio(41).ndims=2;
bio(41).size=[];


bio(42).blkName='GUI Control/Convert8';
bio(42).sigName='';
bio(42).portIdx=0;
bio(42).dim=[1,1];
bio(42).sigWidth=1;
bio(42).sigAddress='&Position_controller_enable_disable_B.Convert8';
bio(42).ndims=2;
bio(42).size=[];


bio(43).blkName='GUI Control/Convert9';
bio(43).sigName='';
bio(43).portIdx=0;
bio(43).dim=[1,2];
bio(43).sigWidth=2;
bio(43).sigAddress='&Position_controller_enable_disable_B.Convert9[0]';
bio(43).ndims=2;
bio(43).size=[];


bio(44).blkName='GUI Control/MinMax';
bio(44).sigName='';
bio(44).portIdx=0;
bio(44).dim=[1,1];
bio(44).sigWidth=1;
bio(44).sigAddress='&Position_controller_enable_disable_B.MinMax';
bio(44).ndims=2;
bio(44).size=[];


bio(45).blkName='GUI Control/TP Selector';
bio(45).sigName='';
bio(45).portIdx=0;
bio(45).dim=[1,50];
bio(45).sigWidth=50;
bio(45).sigAddress='&Position_controller_enable_disable_B.TPSelector[0]';
bio(45).ndims=2;
bio(45).size=[];


bio(46).blkName='Hand_Feedback/FeedFwdArm';
bio(46).sigName='VCODES_out';
bio(46).portIdx=0;
bio(46).dim=[2,70];
bio(46).sigWidth=140;
bio(46).sigAddress='&Position_controller_enable_disable_B.VCODES_out[0]';
bio(46).ndims=2;
bio(46).size=[];


bio(47).blkName='Hand_Feedback/Matrix Concatenation';
bio(47).sigName='';
bio(47).portIdx=0;
bio(47).dim=[2,70];
bio(47).sigWidth=140;
bio(47).sigAddress='&Position_controller_enable_disable_B.MatrixConcatenation[0]';
bio(47).ndims=2;
bio(47).size=[];


bio(48).blkName='Hand_Feedback/Reshape';
bio(48).sigName='';
bio(48).portIdx=0;
bio(48).dim=[1,70];
bio(48).sigWidth=70;
bio(48).sigAddress='&Position_controller_enable_disable_B.Reshape[0]';
bio(48).ndims=2;
bio(48).size=[];


bio(49).blkName='Hand_Feedback/Reshape1';
bio(49).sigName='';
bio(49).portIdx=0;
bio(49).dim=[1,70];
bio(49).sigWidth=70;
bio(49).sigAddress='&Position_controller_enable_disable_B.Reshape1[0]';
bio(49).ndims=2;
bio(49).size=[];


bio(50).blkName='KINARM_EP_Apply_Loads/Force_Cap';
bio(50).sigName='y';
bio(50).portIdx=0;
bio(50).dim=[1,4];
bio(50).sigWidth=4;
bio(50).sigAddress='&Position_controller_enable_disable_B.y[0]';
bio(50).ndims=2;
bio(50).size=[];


bio(51).blkName='KINARM_EP_Apply_Loads/Forces_to_Torques';
bio(51).sigName='joint_loads';
bio(51).portIdx=0;
bio(51).dim=[1,4];
bio(51).sigWidth=4;
bio(51).sigAddress='&Position_controller_enable_disable_B.joint_loads[0]';
bio(51).ndims=2;
bio(51).size=[];


bio(52).blkName='KINARM_EP_Apply_Loads/Ramp_Up_Down';
bio(52).sigName='scaling';
bio(52).portIdx=0;
bio(52).dim=[1,1];
bio(52).sigWidth=1;
bio(52).sigAddress='&Position_controller_enable_disable_B.scaling_g';
bio(52).ndims=2;
bio(52).size=[];


bio(53).blkName='KINARM_EP_Apply_Loads/Ramp_Up_Down1';
bio(53).sigName='scaling';
bio(53).portIdx=0;
bio(53).dim=[1,1];
bio(53).sigWidth=1;
bio(53).sigAddress='&Position_controller_enable_disable_B.scaling_i';
bio(53).ndims=2;
bio(53).size=[];


bio(54).blkName='KINARM_EP_Apply_Loads/Remove_NaNs_and_Inf';
bio(54).sigName='out';
bio(54).portIdx=0;
bio(54).dim=[4,1];
bio(54).sigWidth=4;
bio(54).sigAddress='&Position_controller_enable_disable_B.out_c[0]';
bio(54).ndims=2;
bio(54).size=[];


bio(55).blkName='KINARM_EP_Apply_Loads/Remove_NaNs_and_Inf1';
bio(55).sigName='out';
bio(55).portIdx=0;
bio(55).dim=[1,4];
bio(55).sigWidth=4;
bio(55).sigAddress='&Position_controller_enable_disable_B.out[0]';
bio(55).ndims=2;
bio(55).size=[];


bio(56).blkName='KINARM_EP_Apply_Loads/down_duration(ms)';
bio(56).sigName='';
bio(56).portIdx=0;
bio(56).dim=[1,1];
bio(56).sigWidth=1;
bio(56).sigAddress='&Position_controller_enable_disable_B.down_durationms';
bio(56).ndims=2;
bio(56).size=[];


bio(57).blkName='KINARM_EP_Apply_Loads/up_duration(ms)';
bio(57).sigName='';
bio(57).portIdx=0;
bio(57).dim=[1,1];
bio(57).sigWidth=1;
bio(57).sigAddress='&Position_controller_enable_disable_B.up_durationms';
bio(57).ndims=2;
bio(57).size=[];


bio(58).blkName='KINARM_EP_Apply_Loads/Data Type Conversion';
bio(58).sigName='';
bio(58).portIdx=0;
bio(58).dim=[1,1];
bio(58).sigWidth=1;
bio(58).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion_l';
bio(58).ndims=2;
bio(58).size=[];


bio(59).blkName='KINARM_EP_Apply_Loads/Data Type Conversion1';
bio(59).sigName='';
bio(59).portIdx=0;
bio(59).dim=[1,1];
bio(59).sigWidth=1;
bio(59).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion1_p';
bio(59).ndims=2;
bio(59).size=[];


bio(60).blkName='KINARM_EP_Apply_Loads/Product';
bio(60).sigName='';
bio(60).portIdx=0;
bio(60).dim=[1,2];
bio(60).sigWidth=2;
bio(60).sigAddress='&Position_controller_enable_disable_B.Product_e[0]';
bio(60).ndims=2;
bio(60).size=[];


bio(61).blkName='KINARM_EP_Apply_Loads/Product1';
bio(61).sigName='';
bio(61).portIdx=0;
bio(61).dim=[1,2];
bio(61).sigWidth=2;
bio(61).sigAddress='&Position_controller_enable_disable_B.Product1[0]';
bio(61).ndims=2;
bio(61).size=[];


bio(62).blkName='KINARM_EP_Apply_Loads/Motors_Disabled';
bio(62).sigName='';
bio(62).portIdx=0;
bio(62).dim=[1,1];
bio(62).sigWidth=1;
bio(62).sigAddress='&Position_controller_enable_disable_B.Motors_Disabled';
bio(62).ndims=2;
bio(62).size=[];


bio(63).blkName='KINARM_EP_Apply_Loads/Motors_Disabled1';
bio(63).sigName='';
bio(63).portIdx=0;
bio(63).dim=[1,1];
bio(63).sigWidth=1;
bio(63).sigAddress='&Position_controller_enable_disable_B.Motors_Disabled1';
bio(63).ndims=2;
bio(63).size=[];


bio(64).blkName='KINARM_EP_Apply_Loads/Sum of Elements';
bio(64).sigName='';
bio(64).portIdx=0;
bio(64).dim=[1,1];
bio(64).sigWidth=1;
bio(64).sigAddress='&Position_controller_enable_disable_B.SumofElements';
bio(64).ndims=2;
bio(64).size=[];


bio(65).blkName='KINARM_EP_Apply_Loads/Sum of Elements1';
bio(65).sigName='';
bio(65).portIdx=0;
bio(65).dim=[1,1];
bio(65).sigWidth=1;
bio(65).sigAddress='&Position_controller_enable_disable_B.SumofElements1';
bio(65).ndims=2;
bio(65).size=[];


bio(66).blkName='KINARM_HandInTarget/Embedded MATLAB InsideTarget';
bio(66).sigName='intarget';
bio(66).portIdx=0;
bio(66).dim=[32,5];
bio(66).sigWidth=160;
bio(66).sigAddress='&Position_controller_enable_disable_B.intarget[0]';
bio(66).ndims=2;
bio(66).size=[];


bio(67).blkName='KINARM_HandInTarget/Embedded MATLAB WhichHand';
bio(67).sigName='hand';
bio(67).portIdx=0;
bio(67).dim=[1,1];
bio(67).sigWidth=1;
bio(67).sigAddress='&Position_controller_enable_disable_B.hand';
bio(67).ndims=2;
bio(67).size=[];


bio(68).blkName='KINARM_HandInTarget/Multiport Switch';
bio(68).sigName='';
bio(68).portIdx=0;
bio(68).dim=[1,2];
bio(68).sigWidth=2;
bio(68).sigAddress='&Position_controller_enable_disable_B.MultiportSwitch[0]';
bio(68).ndims=2;
bio(68).size=[];


bio(69).blkName='KINARM_HandInTarget/Arm1';
bio(69).sigName='';
bio(69).portIdx=0;
bio(69).dim=[1,2];
bio(69).sigWidth=2;
bio(69).sigAddress='&Position_controller_enable_disable_B.Arm1[0]';
bio(69).ndims=2;
bio(69).size=[];


bio(70).blkName='KINARM_HandInTarget/Arm2';
bio(70).sigName='';
bio(70).portIdx=0;
bio(70).dim=[1,2];
bio(70).sigWidth=2;
bio(70).sigAddress='&Position_controller_enable_disable_B.Arm2[0]';
bio(70).ndims=2;
bio(70).size=[];


bio(71).blkName='KINARM_HandInTarget/Array Selector';
bio(71).sigName='';
bio(71).portIdx=0;
bio(71).dim=[32,1];
bio(71).sigWidth=32;
bio(71).sigAddress='&Position_controller_enable_disable_B.ArraySelector[0]';
bio(71).ndims=2;
bio(71).size=[];


bio(72).blkName='KINARM_HandInTarget/Dominant_Arm';
bio(72).sigName='';
bio(72).portIdx=0;
bio(72).dim=[1,1];
bio(72).sigWidth=1;
bio(72).sigAddress='&Position_controller_enable_disable_B.Dominant_Arm';
bio(72).ndims=2;
bio(72).size=[];


bio(73).blkName='KINARM_HandInTarget/Hand_Pos';
bio(73).sigName='';
bio(73).portIdx=0;
bio(73).dim=[3,2];
bio(73).sigWidth=6;
bio(73).sigAddress='&Position_controller_enable_disable_B.Hand_Pos[0]';
bio(73).ndims=2;
bio(73).size=[];


bio(74).blkName='Process_Video_CMD/EML/p1';
bio(74).sigName='VCODEs_out';
bio(74).portIdx=0;
bio(74).dim=[59,70];
bio(74).sigWidth=4130;
bio(74).sigAddress='&Position_controller_enable_disable_B.VCODEs_out[0]';
bio(74).ndims=2;
bio(74).size=[];


bio(75).blkName='Process_Video_CMD/EML/p2';
bio(75).sigName='num_used_VCODEs';
bio(75).portIdx=1;
bio(75).dim=[1,1];
bio(75).sigWidth=1;
bio(75).sigAddress='&Position_controller_enable_disable_B.num_used_VCODEs';
bio(75).ndims=2;
bio(75).size=[];


bio(76).blkName='Process_Video_CMD/Convert';
bio(76).sigName='';
bio(76).portIdx=0;
bio(76).dim=[1,1];
bio(76).sigWidth=1;
bio(76).sigAddress='&Position_controller_enable_disable_B.Convert_b';
bio(76).ndims=2;
bio(76).size=[];


bio(77).blkName='Process_Video_CMD/Convert1';
bio(77).sigName='';
bio(77).portIdx=0;
bio(77).dim=[1,1];
bio(77).sigWidth=1;
bio(77).sigAddress='&Position_controller_enable_disable_B.Convert1_g';
bio(77).ndims=2;
bio(77).size=[];


bio(78).blkName='Process_Video_CMD/VCODE_Buffer';
bio(78).sigName='';
bio(78).portIdx=0;
bio(78).dim=[725,1];
bio(78).sigWidth=725;
bio(78).sigAddress='&Position_controller_enable_disable_B.VCODE_Buffer[0]';
bio(78).ndims=2;
bio(78).size=[];


bio(79).blkName='Process_Video_CMD/Byte Reversal';
bio(79).sigName='';
bio(79).portIdx=0;
bio(79).dim=[725,1];
bio(79).sigWidth=725;
bio(79).sigAddress='&Position_controller_enable_disable_B.ByteReversal_n[0]';
bio(79).ndims=2;
bio(79).size=[];


bio(80).blkName='Process_Video_CMD/Pack';
bio(80).sigName='';
bio(80).portIdx=0;
bio(80).dim=[2900,1];
bio(80).sigWidth=2900;
bio(80).sigAddress='&Position_controller_enable_disable_B.Pack_c[0]';
bio(80).ndims=2;
bio(80).size=[];


bio(81).blkName='Process_Video_CMD/Receive/p1';
bio(81).sigName='';
bio(81).portIdx=0;
bio(81).dim=[4,1];
bio(81).sigWidth=4;
bio(81).sigAddress='&Position_controller_enable_disable_B.Receive_o1_l[0]';
bio(81).ndims=2;
bio(81).size=[];


bio(82).blkName='Process_Video_CMD/Receive/p2';
bio(82).sigName='';
bio(82).portIdx=1;
bio(82).dim=[1,1];
bio(82).sigWidth=1;
bio(82).sigAddress='&Position_controller_enable_disable_B.Receive_o2_f';
bio(82).ndims=2;
bio(82).size=[];


bio(83).blkName='Process_Video_CMD/Unpack';
bio(83).sigName='';
bio(83).portIdx=0;
bio(83).dim=[1,1];
bio(83).sigWidth=1;
bio(83).sigAddress='&Position_controller_enable_disable_B.Unpack_m';
bio(83).ndims=2;
bio(83).size=[];


bio(84).blkName='Show_Target/Embedded MATLAB Function';
bio(84).sigName='VCODE';
bio(84).portIdx=0;
bio(84).dim=[1,70];
bio(84).sigWidth=70;
bio(84).sigAddress='&Position_controller_enable_disable_B.sf_EmbeddedMATLABFunction_j.VCODE[0]';
bio(84).ndims=2;
bio(84).size=[];


bio(85).blkName='Show_Target/Matrix Concatenation';
bio(85).sigName='';
bio(85).portIdx=0;
bio(85).dim=[5,11];
bio(85).sigWidth=55;
bio(85).sigAddress='&Position_controller_enable_disable_B.MatrixConcatenation1_c[0]';
bio(85).ndims=2;
bio(85).size=[];


bio(86).blkName='Show_Target/Matrix Concatenation1';
bio(86).sigName='';
bio(86).portIdx=0;
bio(86).dim=[5,11];
bio(86).sigWidth=55;
bio(86).sigAddress='&Position_controller_enable_disable_B.MatrixConcatenation1_c[0]';
bio(86).ndims=2;
bio(86).size=[];


bio(87).blkName='Show_Target/padder';
bio(87).sigName='';
bio(87).portIdx=0;
bio(87).dim=[5,11];
bio(87).sigWidth=55;
bio(87).sigAddress='&Position_controller_enable_disable_B.MatrixConcatenation1_c[0]';
bio(87).ndims=2;
bio(87).size=[];


bio(88).blkName='Show_Target/Selector';
bio(88).sigName='';
bio(88).portIdx=0;
bio(88).dim=[1,25];
bio(88).sigWidth=25;
bio(88).sigAddress='&Position_controller_enable_disable_B.Selector_o[0]';
bio(88).ndims=2;
bio(88).size=[];


bio(89).blkName='Show_Target1/Embedded MATLAB Function';
bio(89).sigName='VCODE';
bio(89).portIdx=0;
bio(89).dim=[1,70];
bio(89).sigWidth=70;
bio(89).sigAddress='&Position_controller_enable_disable_B.sf_EmbeddedMATLABFunction_c.VCODE[0]';
bio(89).ndims=2;
bio(89).size=[];


bio(90).blkName='Show_Target1/Matrix Concatenation';
bio(90).sigName='';
bio(90).portIdx=0;
bio(90).dim=[5,11];
bio(90).sigWidth=55;
bio(90).sigAddress='&Position_controller_enable_disable_B.MatrixConcatenation1[0]';
bio(90).ndims=2;
bio(90).size=[];


bio(91).blkName='Show_Target1/Matrix Concatenation1';
bio(91).sigName='';
bio(91).portIdx=0;
bio(91).dim=[5,11];
bio(91).sigWidth=55;
bio(91).sigAddress='&Position_controller_enable_disable_B.MatrixConcatenation1[0]';
bio(91).ndims=2;
bio(91).size=[];


bio(92).blkName='Show_Target1/padder';
bio(92).sigName='';
bio(92).portIdx=0;
bio(92).dim=[5,11];
bio(92).sigWidth=55;
bio(92).sigAddress='&Position_controller_enable_disable_B.MatrixConcatenation1[0]';
bio(92).ndims=2;
bio(92).size=[];


bio(93).blkName='Show_Target1/Selector';
bio(93).sigName='';
bio(93).portIdx=0;
bio(93).dim=[1,25];
bio(93).sigWidth=25;
bio(93).sigAddress='&Position_controller_enable_disable_B.Selector[0]';
bio(93).ndims=2;
bio(93).size=[];


bio(94).blkName='Trajectory subsystem/Product';
bio(94).sigName='';
bio(94).portIdx=0;
bio(94).dim=[1,4];
bio(94).sigWidth=4;
bio(94).sigAddress='&Position_controller_enable_disable_B.Product_n[0]';
bio(94).ndims=2;
bio(94).size=[];


bio(95).blkName='Trajectory subsystem/Product1';
bio(95).sigName='';
bio(95).portIdx=0;
bio(95).dim=[1,4];
bio(95).sigWidth=4;
bio(95).sigAddress='&Position_controller_enable_disable_B.Product1_e[0]';
bio(95).ndims=2;
bio(95).size=[];


bio(96).blkName='DataLogging/Create Analog Inputs Subsystem/Analog Data';
bio(96).sigName='';
bio(96).portIdx=0;
bio(96).dim=[1,1];
bio(96).sigWidth=1;
bio(96).sigAddress='&Position_controller_enable_disable_B.AnalogData';
bio(96).ndims=2;
bio(96).size=[];


bio(97).blkName='DataLogging/Create Analog Inputs Subsystem/Analog Data Width';
bio(97).sigName='';
bio(97).portIdx=0;
bio(97).dim=[1,1];
bio(97).sigWidth=1;
bio(97).sigAddress='&Position_controller_enable_disable_B.AnalogDataWidth';
bio(97).ndims=2;
bio(97).size=[];


bio(98).blkName='DataLogging/Create Analog Inputs Subsystem/Rate Transition9';
bio(98).sigName='';
bio(98).portIdx=0;
bio(98).dim=[2,1];
bio(98).sigWidth=2;
bio(98).sigAddress='&Position_controller_enable_disable_B.RateTransition9_f[0]';
bio(98).ndims=2;
bio(98).size=[];


bio(99).blkName='DataLogging/Create Analog Inputs Subsystem/Subtract';
bio(99).sigName='';
bio(99).portIdx=0;
bio(99).dim=[1,1];
bio(99).sigWidth=1;
bio(99).sigAddress='&Position_controller_enable_disable_B.Subtract_k';
bio(99).ndims=2;
bio(99).size=[];


bio(100).blkName='DataLogging/Create Analog Inputs Subsystem/Width';
bio(100).sigName='';
bio(100).portIdx=0;
bio(100).dim=[1,1];
bio(100).sigWidth=1;
bio(100).sigAddress='&Position_controller_enable_disable_B.Width_k';
bio(100).ndims=2;
bio(100).size=[];


bio(101).blkName='DataLogging/Create Custom Data Subsystem/Custom Data';
bio(101).sigName='';
bio(101).portIdx=0;
bio(101).dim=[4,1];
bio(101).sigWidth=4;
bio(101).sigAddress='&Position_controller_enable_disable_B.CustomData[0]';
bio(101).ndims=2;
bio(101).size=[];


bio(102).blkName='DataLogging/Create Custom Data Subsystem/Custom Data Width';
bio(102).sigName='';
bio(102).portIdx=0;
bio(102).dim=[1,1];
bio(102).sigWidth=1;
bio(102).sigAddress='&Position_controller_enable_disable_B.CustomDataWidth';
bio(102).ndims=2;
bio(102).size=[];


bio(103).blkName='DataLogging/Create Custom Data Subsystem/Rate Transition9';
bio(103).sigName='';
bio(103).portIdx=0;
bio(103).dim=[5,1];
bio(103).sigWidth=5;
bio(103).sigAddress='&Position_controller_enable_disable_B.RateTransition9_o[0]';
bio(103).ndims=2;
bio(103).size=[];


bio(104).blkName='DataLogging/Create Custom Data Subsystem/Width';
bio(104).sigName='';
bio(104).portIdx=0;
bio(104).dim=[1,1];
bio(104).sigWidth=1;
bio(104).sigAddress='&Position_controller_enable_disable_B.Width_h';
bio(104).ndims=2;
bio(104).size=[];


bio(105).blkName='DataLogging/Create Event Codes Subsystem/Event Codes';
bio(105).sigName='';
bio(105).portIdx=0;
bio(105).dim=[1,1];
bio(105).sigWidth=1;
bio(105).sigAddress='&Position_controller_enable_disable_B.EventCodes';
bio(105).ndims=2;
bio(105).size=[];


bio(106).blkName='DataLogging/Create Event Codes Subsystem/Number of Event Codes';
bio(106).sigName='';
bio(106).portIdx=0;
bio(106).dim=[1,1];
bio(106).sigWidth=1;
bio(106).sigAddress='&Position_controller_enable_disable_B.NumberofEventCodes';
bio(106).ndims=2;
bio(106).size=[];


bio(107).blkName='DataLogging/Create Event Codes Subsystem/Rate Transition9';
bio(107).sigName='';
bio(107).portIdx=0;
bio(107).dim=[2,1];
bio(107).sigWidth=2;
bio(107).sigAddress='&Position_controller_enable_disable_B.RateTransition9[0]';
bio(107).ndims=2;
bio(107).size=[];


bio(108).blkName='DataLogging/Create Event Codes Subsystem/Subtract';
bio(108).sigName='';
bio(108).portIdx=0;
bio(108).dim=[1,1];
bio(108).sigWidth=1;
bio(108).sigAddress='&Position_controller_enable_disable_B.Subtract';
bio(108).ndims=2;
bio(108).size=[];


bio(109).blkName='DataLogging/Create Event Codes Subsystem/Width';
bio(109).sigName='';
bio(109).portIdx=0;
bio(109).dim=[1,1];
bio(109).sigWidth=1;
bio(109).sigAddress='&Position_controller_enable_disable_B.Width';
bio(109).ndims=2;
bio(109).size=[];


bio(110).blkName='DataLogging/Create KINARM Data Subsystem/Arm Kinematics';
bio(110).sigName='';
bio(110).portIdx=0;
bio(110).dim=[1,55];
bio(110).sigWidth=55;
bio(110).sigAddress='&Position_controller_enable_disable_B.ArmKinematics[0]';
bio(110).ndims=2;
bio(110).size=[];


bio(111).blkName='DataLogging/Create KINARM Data Subsystem/Kinarm Data Width';
bio(111).sigName='';
bio(111).portIdx=0;
bio(111).dim=[1,1];
bio(111).sigWidth=1;
bio(111).sigAddress='&Position_controller_enable_disable_B.KinarmDataWidth';
bio(111).ndims=2;
bio(111).size=[];


bio(112).blkName='DataLogging/Create KINARM Data Subsystem/Rate Transition4';
bio(112).sigName='';
bio(112).portIdx=0;
bio(112).dim=[1,56];
bio(112).sigWidth=56;
bio(112).sigAddress='&Position_controller_enable_disable_B.RateTransition4[0]';
bio(112).ndims=2;
bio(112).size=[];


bio(113).blkName='DataLogging/Create KINARM Data Subsystem/Select Arm Data';
bio(113).sigName='';
bio(113).portIdx=0;
bio(113).dim=[2,17];
bio(113).sigWidth=34;
bio(113).sigAddress='&Position_controller_enable_disable_B.SelectArmData[0]';
bio(113).ndims=2;
bio(113).size=[];


bio(114).blkName='DataLogging/Create KINARM Data Subsystem/Select Arm1';
bio(114).sigName='';
bio(114).portIdx=0;
bio(114).dim=[1,17];
bio(114).sigWidth=17;
bio(114).sigAddress='&Position_controller_enable_disable_B.SelectArm1[0]';
bio(114).ndims=2;
bio(114).size=[];


bio(115).blkName='DataLogging/Create KINARM Data Subsystem/Select Arm2';
bio(115).sigName='';
bio(115).portIdx=0;
bio(115).dim=[1,17];
bio(115).sigWidth=17;
bio(115).sigAddress='&Position_controller_enable_disable_B.SelectArm2[0]';
bio(115).ndims=2;
bio(115).size=[];


bio(116).blkName='DataLogging/Create KINARM Data Subsystem/Width';
bio(116).sigName='';
bio(116).portIdx=0;
bio(116).dim=[1,1];
bio(116).sigWidth=1;
bio(116).sigAddress='&Position_controller_enable_disable_B.Width_n';
bio(116).ndims=2;
bio(116).size=[];


bio(117).blkName='DataLogging/Create Task State Subsystem/Button Status';
bio(117).sigName='';
bio(117).portIdx=0;
bio(117).dim=[1,1];
bio(117).sigWidth=1;
bio(117).sigAddress='&Position_controller_enable_disable_B.ButtonStatus';
bio(117).ndims=2;
bio(117).size=[];


bio(118).blkName='DataLogging/Create Task State Subsystem/Current Block Index';
bio(118).sigName='';
bio(118).portIdx=0;
bio(118).dim=[1,1];
bio(118).sigWidth=1;
bio(118).sigAddress='&Position_controller_enable_disable_B.CurrentBlockIndex';
bio(118).ndims=2;
bio(118).size=[];


bio(119).blkName='DataLogging/Create Task State Subsystem/Current Block Number in Set';
bio(119).sigName='';
bio(119).portIdx=0;
bio(119).dim=[1,1];
bio(119).sigWidth=1;
bio(119).sigAddress='&Position_controller_enable_disable_B.CurrentBlockNumberinSet';
bio(119).ndims=2;
bio(119).size=[];


bio(120).blkName='DataLogging/Create Task State Subsystem/Current TP Index';
bio(120).sigName='';
bio(120).portIdx=0;
bio(120).dim=[1,1];
bio(120).sigWidth=1;
bio(120).sigAddress='&Position_controller_enable_disable_B.CurrentTPIndex';
bio(120).ndims=2;
bio(120).size=[];


bio(121).blkName='DataLogging/Create Task State Subsystem/Current Trial Number in Block';
bio(121).sigName='';
bio(121).portIdx=0;
bio(121).dim=[1,1];
bio(121).sigWidth=1;
bio(121).sigAddress='&Position_controller_enable_disable_B.CurrentTrialNumberinBlock';
bio(121).ndims=2;
bio(121).size=[];


bio(122).blkName='DataLogging/Create Task State Subsystem/Current Trial Number in Set';
bio(122).sigName='';
bio(122).portIdx=0;
bio(122).dim=[1,1];
bio(122).sigWidth=1;
bio(122).sigAddress='&Position_controller_enable_disable_B.CurrentTrialNumberinSet';
bio(122).ndims=2;
bio(122).size=[];


bio(123).blkName='DataLogging/Create Task State Subsystem/Last Frame Acknowledged';
bio(123).sigName='';
bio(123).portIdx=0;
bio(123).dim=[1,1];
bio(123).sigWidth=1;
bio(123).sigAddress='&Position_controller_enable_disable_B.LastFrameAcknowledged';
bio(123).ndims=2;
bio(123).size=[];


bio(124).blkName='DataLogging/Create Task State Subsystem/Last Frame Sent';
bio(124).sigName='';
bio(124).portIdx=0;
bio(124).dim=[1,1];
bio(124).sigWidth=1;
bio(124).sigAddress='&Position_controller_enable_disable_B.LastFrameSent';
bio(124).ndims=2;
bio(124).size=[];


bio(125).blkName='DataLogging/Create Task State Subsystem/Logging Enable';
bio(125).sigName='';
bio(125).portIdx=0;
bio(125).dim=[1,1];
bio(125).sigWidth=1;
bio(125).sigAddress='&Position_controller_enable_disable_B.LoggingEnable';
bio(125).ndims=2;
bio(125).size=[];


bio(126).blkName='DataLogging/Create Task State Subsystem/Run Status';
bio(126).sigName='';
bio(126).portIdx=0;
bio(126).dim=[1,1];
bio(126).sigWidth=1;
bio(126).sigAddress='&Position_controller_enable_disable_B.RunStatus';
bio(126).ndims=2;
bio(126).size=[];


bio(127).blkName='DataLogging/Create Task State Subsystem/Servo update count';
bio(127).sigName='';
bio(127).portIdx=0;
bio(127).dim=[1,1];
bio(127).sigWidth=1;
bio(127).sigAddress='&Position_controller_enable_disable_B.Servoupdatecount';
bio(127).ndims=2;
bio(127).size=[];


bio(128).blkName='DataLogging/Create Task State Subsystem/Task Control Button';
bio(128).sigName='';
bio(128).portIdx=0;
bio(128).dim=[1,1];
bio(128).sigWidth=1;
bio(128).sigAddress='&Position_controller_enable_disable_B.TaskControlButton';
bio(128).ndims=2;
bio(128).size=[];


bio(129).blkName='DataLogging/Create Task State Subsystem/Timestamp';
bio(129).sigName='';
bio(129).portIdx=0;
bio(129).dim=[1,1];
bio(129).sigWidth=1;
bio(129).sigAddress='&Position_controller_enable_disable_B.Timestamp';
bio(129).ndims=2;
bio(129).size=[];


bio(130).blkName='DataLogging/Create Task State Subsystem/Product';
bio(130).sigName='';
bio(130).portIdx=0;
bio(130).dim=[1,1];
bio(130).sigWidth=1;
bio(130).sigAddress='&Position_controller_enable_disable_B.Product_h';
bio(130).ndims=2;
bio(130).size=[];


bio(131).blkName='DataLogging/Create Task State Subsystem/Rate Transition';
bio(131).sigName='';
bio(131).portIdx=0;
bio(131).dim=[12,1];
bio(131).sigWidth=12;
bio(131).sigAddress='&Position_controller_enable_disable_B.RateTransition[0]';
bio(131).ndims=2;
bio(131).size=[];


bio(132).blkName='DataLogging/Create Task State Subsystem/Select Calibration Button Bitfield';
bio(132).sigName='';
bio(132).portIdx=0;
bio(132).dim=[1,1];
bio(132).sigWidth=1;
bio(132).sigAddress='&Position_controller_enable_disable_B.SelectCalibrationButtonBitfield';
bio(132).ndims=2;
bio(132).size=[];


bio(133).blkName='DataLogging/Create Task State Subsystem/Select servo update count';
bio(133).sigName='';
bio(133).portIdx=0;
bio(133).dim=[1,1];
bio(133).sigWidth=1;
bio(133).sigAddress='&Position_controller_enable_disable_B.Selectservoupdatecount';
bio(133).ndims=2;
bio(133).size=[];


bio(134).blkName='DataLogging/Keep alive/Pack';
bio(134).sigName='';
bio(134).portIdx=0;
bio(134).dim=[40,1];
bio(134).sigWidth=40;
bio(134).sigAddress='&Position_controller_enable_disable_B.Pack[0]';
bio(134).ndims=2;
bio(134).size=[];


bio(135).blkName='DataLogging/Network Transfer Subsystem/Send Control Machine/p1';
bio(135).sigName='data_out';
bio(135).portIdx=0;
bio(135).dim=[306,1];
bio(135).sigWidth=306;
bio(135).sigAddress='&Position_controller_enable_disable_B.data_out[0]';
bio(135).ndims=2;
bio(135).size=[];


bio(136).blkName='DataLogging/Network Transfer Subsystem/Send Control Machine/p2';
bio(136).sigName='queue_size';
bio(136).portIdx=1;
bio(136).dim=[1,1];
bio(136).sigWidth=1;
bio(136).sigAddress='&Position_controller_enable_disable_B.queue_size';
bio(136).ndims=2;
bio(136).size=[];


bio(137).blkName='DataLogging/Network Transfer Subsystem/Send Control Machine/p3';
bio(137).sigName='total_timeouts';
bio(137).portIdx=2;
bio(137).dim=[1,1];
bio(137).sigWidth=1;
bio(137).sigAddress='&Position_controller_enable_disable_B.total_timeouts';
bio(137).ndims=2;
bio(137).size=[];


bio(138).blkName='DataLogging/Network Transfer Subsystem/max_packet_id';
bio(138).sigName='';
bio(138).portIdx=0;
bio(138).dim=[1,1];
bio(138).sigWidth=1;
bio(138).sigAddress='&Position_controller_enable_disable_B.max_packet_id';
bio(138).ndims=2;
bio(138).size=[];


bio(139).blkName='DataLogging/Network Transfer Subsystem/Data Type Conversion';
bio(139).sigName='';
bio(139).portIdx=0;
bio(139).dim=[1,1];
bio(139).sigWidth=1;
bio(139).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion_o';
bio(139).ndims=2;
bio(139).size=[];


bio(140).blkName='DataLogging/Network Transfer Subsystem/Data Type Conversion1';
bio(140).sigName='';
bio(140).portIdx=0;
bio(140).dim=[1,1];
bio(140).sigWidth=1;
bio(140).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion1_i';
bio(140).ndims=2;
bio(140).size=[];


bio(141).blkName='DataLogging/Network Transfer Subsystem/Queue Size';
bio(141).sigName='';
bio(141).portIdx=0;
bio(141).dim=[1,1];
bio(141).sigWidth=1;
bio(141).sigAddress='&Position_controller_enable_disable_B.QueueSize';
bio(141).ndims=2;
bio(141).size=[];


bio(142).blkName='DataLogging/Network Transfer Subsystem/Total Packets Sent';
bio(142).sigName='';
bio(142).portIdx=0;
bio(142).dim=[1,1];
bio(142).sigWidth=1;
bio(142).sigAddress='&Position_controller_enable_disable_B.TotalPacketsSent';
bio(142).ndims=2;
bio(142).size=[];


bio(143).blkName='DataLogging/Network Transfer Subsystem/Total Timeouts';
bio(143).sigName='';
bio(143).portIdx=0;
bio(143).dim=[1,1];
bio(143).sigWidth=1;
bio(143).sigAddress='&Position_controller_enable_disable_B.TotalTimeouts';
bio(143).ndims=2;
bio(143).size=[];


bio(144).blkName='DataLogging/Network Transfer Subsystem/Receive/p1';
bio(144).sigName='';
bio(144).portIdx=0;
bio(144).dim=[4,1];
bio(144).sigWidth=4;
bio(144).sigAddress='&Position_controller_enable_disable_B.Receive_o1_k[0]';
bio(144).ndims=2;
bio(144).size=[];


bio(145).blkName='DataLogging/Network Transfer Subsystem/Receive/p2';
bio(145).sigName='';
bio(145).portIdx=1;
bio(145).dim=[1,1];
bio(145).sigWidth=1;
bio(145).sigAddress='&Position_controller_enable_disable_B.Receive_o2_p';
bio(145).ndims=2;
bio(145).size=[];


bio(146).blkName='DataLogging/Network Transfer Subsystem/Unpack';
bio(146).sigName='';
bio(146).portIdx=0;
bio(146).dim=[1,1];
bio(146).sigWidth=1;
bio(146).sigAddress='&Position_controller_enable_disable_B.Unpack';
bio(146).ndims=2;
bio(146).size=[];


bio(147).blkName='DataLogging/Poll Force Plates/Convert1';
bio(147).sigName='';
bio(147).portIdx=0;
bio(147).dim=[34,1];
bio(147).sigWidth=34;
bio(147).sigAddress='&Position_controller_enable_disable_B.Convert1_fa[0]';
bio(147).ndims=2;
bio(147).size=[];


bio(148).blkName='DataLogging/Poll Force Plates/Convert19';
bio(148).sigName='';
bio(148).portIdx=0;
bio(148).dim=[14,1];
bio(148).sigWidth=14;
bio(148).sigAddress='&Position_controller_enable_disable_B.Convert19_h[0]';
bio(148).ndims=2;
bio(148).size=[];


bio(149).blkName='DataLogging/Poll KINARM/Create KINARM Data Array/p1';
bio(149).sigName='kinarm_data';
bio(149).portIdx=0;
bio(149).dim=[3,50];
bio(149).sigWidth=150;
bio(149).sigAddress='&Position_controller_enable_disable_B.kinarm_data[0]';
bio(149).ndims=2;
bio(149).size=[];


bio(150).blkName='DataLogging/Poll KINARM/Create KINARM Data Array/p2';
bio(150).sigName='primary_encoder_data_out';
bio(150).portIdx=1;
bio(150).dim=[2,6];
bio(150).sigWidth=12;
bio(150).sigAddress='&Position_controller_enable_disable_B.primary_encoder_data_out[0]';
bio(150).ndims=2;
bio(150).size=[];


bio(151).blkName='DataLogging/Poll KINARM/Monitor_status';
bio(151).sigName='force_scale';
bio(151).portIdx=0;
bio(151).dim=[1,1];
bio(151).sigWidth=1;
bio(151).sigAddress='&Position_controller_enable_disable_B.force_scale_d';
bio(151).ndims=2;
bio(151).size=[];


bio(152).blkName='DataLogging/Poll KINARM/Convert1';
bio(152).sigName='';
bio(152).portIdx=0;
bio(152).dim=[2,6];
bio(152).sigWidth=12;
bio(152).sigAddress='&Position_controller_enable_disable_B.Convert1_p[0]';
bio(152).ndims=2;
bio(152).size=[];


bio(153).blkName='DataLogging/Poll KINARM/Convert19';
bio(153).sigName='';
bio(153).portIdx=0;
bio(153).dim=[3,50];
bio(153).sigWidth=150;
bio(153).sigAddress='&Position_controller_enable_disable_B.Convert19_k[0]';
bio(153).ndims=2;
bio(153).size=[];


bio(154).blkName='DataLogging/Poll KINARM/Convert2';
bio(154).sigName='';
bio(154).portIdx=0;
bio(154).dim=[3,1];
bio(154).sigWidth=3;
bio(154).sigAddress='&Position_controller_enable_disable_B.Convert2_j[0]';
bio(154).ndims=2;
bio(154).size=[];


bio(155).blkName='DataLogging/Poll KINARM/Convert3';
bio(155).sigName='';
bio(155).portIdx=0;
bio(155).dim=[8,2];
bio(155).sigWidth=16;
bio(155).sigAddress='&Position_controller_enable_disable_B.MatrixConcatenate[0]';
bio(155).ndims=2;
bio(155).size=[];


bio(156).blkName='DataLogging/Poll KINARM/Convert4';
bio(156).sigName='';
bio(156).portIdx=0;
bio(156).dim=[8,2];
bio(156).sigWidth=16;
bio(156).sigAddress='&Position_controller_enable_disable_B.MatrixConcatenate[0]';
bio(156).ndims=2;
bio(156).size=[];


bio(157).blkName='DataLogging/Poll KINARM/Data Type Conversion';
bio(157).sigName='';
bio(157).portIdx=0;
bio(157).dim=[10,1];
bio(157).sigWidth=10;
bio(157).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion_c[0]';
bio(157).ndims=2;
bio(157).size=[];


bio(158).blkName='DataLogging/Poll KINARM/Data Type Conversion1';
bio(158).sigName='';
bio(158).portIdx=0;
bio(158).dim=[10,1];
bio(158).sigWidth=10;
bio(158).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion1_im[0]';
bio(158).ndims=2;
bio(158).size=[];


bio(159).blkName='DataLogging/Poll KINARM/Data Type Conversion2';
bio(159).sigName='';
bio(159).portIdx=0;
bio(159).dim=[9,1];
bio(159).sigWidth=9;
bio(159).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion2_l[0]';
bio(159).ndims=2;
bio(159).size=[];


bio(160).blkName='DataLogging/Poll KINARM/Data Type Conversion3';
bio(160).sigName='';
bio(160).portIdx=0;
bio(160).dim=[9,1];
bio(160).sigWidth=9;
bio(160).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion3_ma[0]';
bio(160).ndims=2;
bio(160).size=[];


bio(161).blkName='DataLogging/Poll KINARM/Data Type Conversion4';
bio(161).sigName='';
bio(161).portIdx=0;
bio(161).dim=[20,1];
bio(161).sigWidth=20;
bio(161).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion4[0]';
bio(161).ndims=2;
bio(161).size=[];


bio(162).blkName='DataLogging/Poll KINARM/Data Type Conversion5';
bio(162).sigName='';
bio(162).portIdx=0;
bio(162).dim=[14,1];
bio(162).sigWidth=14;
bio(162).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion5[0]';
bio(162).ndims=2;
bio(162).size=[];


bio(163).blkName='DataLogging/Poll KINARM/Data Type Conversion6';
bio(163).sigName='';
bio(163).portIdx=0;
bio(163).dim=[4,1];
bio(163).sigWidth=4;
bio(163).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion6[0]';
bio(163).ndims=2;
bio(163).size=[];


bio(164).blkName='DataLogging/Poll KINARM/Data Type Conversion7';
bio(164).sigName='';
bio(164).portIdx=0;
bio(164).dim=[12,1];
bio(164).sigWidth=12;
bio(164).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion7[0]';
bio(164).ndims=2;
bio(164).size=[];


bio(165).blkName='DataLogging/Poll KINARM/Data Type Conversion8';
bio(165).sigName='';
bio(165).portIdx=0;
bio(165).dim=[4,1];
bio(165).sigWidth=4;
bio(165).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion8[0]';
bio(165).ndims=2;
bio(165).size=[];


bio(166).blkName='DataLogging/Poll KINARM/Memory';
bio(166).sigName='';
bio(166).portIdx=0;
bio(166).dim=[4,1];
bio(166).sigWidth=4;
bio(166).sigAddress='&Position_controller_enable_disable_B.Memory[0]';
bio(166).ndims=2;
bio(166).size=[];


bio(167).blkName='DataLogging/Poll KINARM/Product';
bio(167).sigName='';
bio(167).portIdx=0;
bio(167).dim=[4,1];
bio(167).sigWidth=4;
bio(167).sigAddress='&Position_controller_enable_disable_B.Product_m[0]';
bio(167).ndims=2;
bio(167).size=[];


bio(168).blkName='DataLogging/Poll KINARM/S-Function/p1';
bio(168).sigName='';
bio(168).portIdx=0;
bio(168).dim=[10,1];
bio(168).sigWidth=10;
bio(168).sigAddress='&Position_controller_enable_disable_B.SFunction_o1[0]';
bio(168).ndims=2;
bio(168).size=[];


bio(169).blkName='DataLogging/Poll KINARM/S-Function/p2';
bio(169).sigName='';
bio(169).portIdx=1;
bio(169).dim=[10,1];
bio(169).sigWidth=10;
bio(169).sigAddress='&Position_controller_enable_disable_B.SFunction_o2[0]';
bio(169).ndims=2;
bio(169).size=[];


bio(170).blkName='DataLogging/Poll KINARM/S-Function/p3';
bio(170).sigName='';
bio(170).portIdx=2;
bio(170).dim=[1,1];
bio(170).sigWidth=1;
bio(170).sigAddress='&Position_controller_enable_disable_B.SFunction_o3';
bio(170).ndims=2;
bio(170).size=[];


bio(171).blkName='DataLogging/Poll KINARM/S-Function/p4';
bio(171).sigName='';
bio(171).portIdx=3;
bio(171).dim=[4,1];
bio(171).sigWidth=4;
bio(171).sigAddress='&Position_controller_enable_disable_B.SFunction_o4[0]';
bio(171).ndims=2;
bio(171).size=[];


bio(172).blkName='DataLogging/Poll KINARM/S-Function/p5';
bio(172).sigName='';
bio(172).portIdx=4;
bio(172).dim=[6,1];
bio(172).sigWidth=6;
bio(172).sigAddress='&Position_controller_enable_disable_B.SFunction_o5[0]';
bio(172).ndims=2;
bio(172).size=[];


bio(173).blkName='DataLogging/Poll KINARM/S-Function/p6';
bio(173).sigName='';
bio(173).portIdx=5;
bio(173).dim=[6,1];
bio(173).sigWidth=6;
bio(173).sigAddress='&Position_controller_enable_disable_B.SFunction_o6[0]';
bio(173).ndims=2;
bio(173).size=[];


bio(174).blkName='DataLogging/Poll KINARM/S-Function/p7';
bio(174).sigName='';
bio(174).portIdx=6;
bio(174).dim=[1,1];
bio(174).sigWidth=1;
bio(174).sigAddress='&Position_controller_enable_disable_B.SFunction_o7';
bio(174).ndims=2;
bio(174).size=[];


bio(175).blkName='DataLogging/Poll KINARM/S-Function/p8';
bio(175).sigName='';
bio(175).portIdx=7;
bio(175).dim=[1,1];
bio(175).sigWidth=1;
bio(175).sigAddress='&Position_controller_enable_disable_B.SFunction_o8';
bio(175).ndims=2;
bio(175).size=[];


bio(176).blkName='DataLogging/Poll KINARM/S-Function/p9';
bio(176).sigName='';
bio(176).portIdx=8;
bio(176).dim=[3,1];
bio(176).sigWidth=3;
bio(176).sigAddress='&Position_controller_enable_disable_B.SFunction_o9[0]';
bio(176).ndims=2;
bio(176).size=[];


bio(177).blkName='DataLogging/Poll KINARM/S-Function/p10';
bio(177).sigName='';
bio(177).portIdx=9;
bio(177).dim=[1,1];
bio(177).sigWidth=1;
bio(177).sigAddress='&Position_controller_enable_disable_B.SFunction_o10';
bio(177).ndims=2;
bio(177).size=[];


bio(178).blkName='DataLogging/Poll KINARM/AddTorques';
bio(178).sigName='';
bio(178).portIdx=0;
bio(178).dim=[4,1];
bio(178).sigWidth=4;
bio(178).sigAddress='&Position_controller_enable_disable_B.AddTorques[0]';
bio(178).ndims=2;
bio(178).size=[];


bio(179).blkName='DataLogging/Receive_Gaze/Create timestamp/p1';
bio(179).sigName='timestamp_out';
bio(179).portIdx=0;
bio(179).dim=[1,1];
bio(179).sigWidth=1;
bio(179).sigAddress='&Position_controller_enable_disable_B.timestamp_out';
bio(179).ndims=2;
bio(179).size=[];


bio(180).blkName='DataLogging/Receive_Gaze/Create timestamp/p2';
bio(180).sigName='start_time_out';
bio(180).portIdx=1;
bio(180).dim=[1,1];
bio(180).sigWidth=1;
bio(180).sigAddress='&Position_controller_enable_disable_B.start_time_out';
bio(180).ndims=2;
bio(180).size=[];


bio(181).blkName='DataLogging/Receive_Gaze/Embedded MATLAB Function1/p1';
bio(181).sigName='gazeXYCalculated';
bio(181).portIdx=0;
bio(181).dim=[2,1];
bio(181).sigWidth=2;
bio(181).sigAddress='&Position_controller_enable_disable_B.gazeXYCalculated[0]';
bio(181).ndims=2;
bio(181).size=[];


bio(182).blkName='DataLogging/Receive_Gaze/Embedded MATLAB Function1/p2';
bio(182).sigName='pupil_area_GLOBAL';
bio(182).portIdx=1;
bio(182).dim=[1,1];
bio(182).sigWidth=1;
bio(182).sigAddress='&Position_controller_enable_disable_B.pupil_area_GLOBAL';
bio(182).ndims=2;
bio(182).size=[];


bio(183).blkName='DataLogging/Receive_Gaze/clean_packet/p1';
bio(183).sigName='pack_out';
bio(183).portIdx=0;
bio(183).dim=[512,1];
bio(183).sigWidth=512;
bio(183).sigAddress='&Position_controller_enable_disable_B.pack_out[0]';
bio(183).ndims=2;
bio(183).size=[];


bio(184).blkName='DataLogging/Receive_Gaze/clean_packet/p2';
bio(184).sigName='len_out';
bio(184).portIdx=1;
bio(184).dim=[1,1];
bio(184).sigWidth=1;
bio(184).sigAddress='&Position_controller_enable_disable_B.len_out';
bio(184).ndims=2;
bio(184).size=[];


bio(185).blkName='DataLogging/Receive_Gaze/convert to seconds';
bio(185).sigName='event_data_out';
bio(185).portIdx=0;
bio(185).dim=[3,1];
bio(185).sigWidth=3;
bio(185).sigAddress='&Position_controller_enable_disable_B.event_data_out[0]';
bio(185).ndims=2;
bio(185).size=[];


bio(186).blkName='DataLogging/Receive_Gaze/Convert1';
bio(186).sigName='';
bio(186).portIdx=0;
bio(186).dim=[1,1];
bio(186).sigWidth=1;
bio(186).sigAddress='&Position_controller_enable_disable_B.Convert1';
bio(186).ndims=2;
bio(186).size=[];


bio(187).blkName='DataLogging/Receive_Gaze/Convert19';
bio(187).sigName='';
bio(187).portIdx=0;
bio(187).dim=[3,1];
bio(187).sigWidth=3;
bio(187).sigAddress='&Position_controller_enable_disable_B.Convert19[0]';
bio(187).ndims=2;
bio(187).size=[];


bio(188).blkName='DataLogging/Receive_Gaze/Convert2';
bio(188).sigName='';
bio(188).portIdx=0;
bio(188).dim=[3,1];
bio(188).sigWidth=3;
bio(188).sigAddress='&Position_controller_enable_disable_B.Convert2[0]';
bio(188).ndims=2;
bio(188).size=[];


bio(189).blkName='DataLogging/Receive_Gaze/Convert3';
bio(189).sigName='';
bio(189).portIdx=0;
bio(189).dim=[1,1];
bio(189).sigWidth=1;
bio(189).sigAddress='&Position_controller_enable_disable_B.Convert3';
bio(189).ndims=2;
bio(189).size=[];


bio(190).blkName='DataLogging/Receive_Gaze/Data Type Conversion';
bio(190).sigName='';
bio(190).portIdx=0;
bio(190).dim=[1,1];
bio(190).sigWidth=1;
bio(190).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion';
bio(190).ndims=2;
bio(190).size=[];


bio(191).blkName='DataLogging/Receive_Gaze/Data Type Conversion1';
bio(191).sigName='';
bio(191).portIdx=0;
bio(191).dim=[3,1];
bio(191).sigWidth=3;
bio(191).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion1[0]';
bio(191).ndims=2;
bio(191).size=[];


bio(192).blkName='DataLogging/Receive_Gaze/Data Type Conversion3';
bio(192).sigName='';
bio(192).portIdx=0;
bio(192).dim=[1,4];
bio(192).sigWidth=4;
bio(192).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion3[0]';
bio(192).ndims=2;
bio(192).size=[];


bio(193).blkName='DataLogging/Receive_Gaze/Data Type Conversion4';
bio(193).sigName='';
bio(193).portIdx=0;
bio(193).dim=[1,1];
bio(193).sigWidth=1;
bio(193).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion4_a';
bio(193).ndims=2;
bio(193).size=[];


bio(194).blkName='DataLogging/Receive_Gaze/Data Type Conversion5';
bio(194).sigName='';
bio(194).portIdx=0;
bio(194).dim=[1,1];
bio(194).sigWidth=1;
bio(194).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion5_b';
bio(194).ndims=2;
bio(194).size=[];


bio(195).blkName='DataLogging/Receive_Gaze/convert';
bio(195).sigName='';
bio(195).portIdx=0;
bio(195).dim=[1,1];
bio(195).sigWidth=1;
bio(195).sigAddress='&Position_controller_enable_disable_B.convert';
bio(195).ndims=2;
bio(195).size=[];


bio(196).blkName='DataLogging/Receive_Gaze/Reshape';
bio(196).sigName='';
bio(196).portIdx=0;
bio(196).dim=[2,4];
bio(196).sigWidth=8;
bio(196).sigAddress='&Position_controller_enable_disable_B.Reshape_m[0]';
bio(196).ndims=2;
bio(196).size=[];


bio(197).blkName='DataLogging/Receive_Gaze/Selector - Left Eye';
bio(197).sigName='';
bio(197).portIdx=0;
bio(197).dim=[1,4];
bio(197).sigWidth=4;
bio(197).sigAddress='&Position_controller_enable_disable_B.SelectorLeftEye[0]';
bio(197).ndims=2;
bio(197).size=[];


bio(198).blkName='DataLogging/Receive_Gaze/Receive/p1';
bio(198).sigName='';
bio(198).portIdx=0;
bio(198).dim=[512,1];
bio(198).sigWidth=512;
bio(198).sigAddress='&Position_controller_enable_disable_B.Receive_o1[0]';
bio(198).ndims=2;
bio(198).size=[];


bio(199).blkName='DataLogging/Receive_Gaze/Receive/p2';
bio(199).sigName='';
bio(199).portIdx=1;
bio(199).dim=[1,1];
bio(199).sigWidth=1;
bio(199).sigAddress='&Position_controller_enable_disable_B.Receive_o2';
bio(199).ndims=2;
bio(199).size=[];


bio(200).blkName='DataLogging/Receive_Gaze/S-Function/p1';
bio(200).sigName='';
bio(200).portIdx=0;
bio(200).dim=[1,1];
bio(200).sigWidth=1;
bio(200).sigAddress='&Position_controller_enable_disable_B.SFunction_o1_f';
bio(200).ndims=2;
bio(200).size=[];


bio(201).blkName='DataLogging/Receive_Gaze/S-Function/p2';
bio(201).sigName='SAMPE_TYPE';
bio(201).portIdx=1;
bio(201).dim=[1,1];
bio(201).sigWidth=1;
bio(201).sigAddress='&Position_controller_enable_disable_B.SAMPE_TYPE';
bio(201).ndims=2;
bio(201).size=[];


bio(202).blkName='DataLogging/Receive_Gaze/S-Function/p3';
bio(202).sigName='Content Flags';
bio(202).portIdx=2;
bio(202).dim=[1,1];
bio(202).sigWidth=1;
bio(202).sigAddress='&Position_controller_enable_disable_B.ContentFlags';
bio(202).ndims=2;
bio(202).size=[];


bio(203).blkName='DataLogging/Receive_Gaze/S-Function/p4';
bio(203).sigName='pupil X';
bio(203).portIdx=3;
bio(203).dim=[2,1];
bio(203).sigWidth=2;
bio(203).sigAddress='&Position_controller_enable_disable_B.pupilX[0]';
bio(203).ndims=2;
bio(203).size=[];


bio(204).blkName='DataLogging/Receive_Gaze/S-Function/p5';
bio(204).sigName='pupil Y';
bio(204).portIdx=4;
bio(204).dim=[2,1];
bio(204).sigWidth=2;
bio(204).sigAddress='&Position_controller_enable_disable_B.pupilY[0]';
bio(204).ndims=2;
bio(204).size=[];


bio(205).blkName='DataLogging/Receive_Gaze/S-Function/p6';
bio(205).sigName='HREF X';
bio(205).portIdx=5;
bio(205).dim=[2,1];
bio(205).sigWidth=2;
bio(205).sigAddress='&Position_controller_enable_disable_B.HREFX[0]';
bio(205).ndims=2;
bio(205).size=[];


bio(206).blkName='DataLogging/Receive_Gaze/S-Function/p7';
bio(206).sigName='HREF Y';
bio(206).portIdx=6;
bio(206).dim=[2,1];
bio(206).sigWidth=2;
bio(206).sigAddress='&Position_controller_enable_disable_B.HREFY[0]';
bio(206).ndims=2;
bio(206).size=[];


bio(207).blkName='DataLogging/Receive_Gaze/S-Function/p8';
bio(207).sigName='pupil area';
bio(207).portIdx=7;
bio(207).dim=[2,1];
bio(207).sigWidth=2;
bio(207).sigAddress='&Position_controller_enable_disable_B.pupilarea[0]';
bio(207).ndims=2;
bio(207).size=[];


bio(208).blkName='DataLogging/Receive_Gaze/S-Function/p9';
bio(208).sigName='screen gaze X';
bio(208).portIdx=8;
bio(208).dim=[2,1];
bio(208).sigWidth=2;
bio(208).sigAddress='&Position_controller_enable_disable_B.screengazeX[0]';
bio(208).ndims=2;
bio(208).size=[];


bio(209).blkName='DataLogging/Receive_Gaze/S-Function/p10';
bio(209).sigName='screen gaze Y';
bio(209).portIdx=9;
bio(209).dim=[2,1];
bio(209).sigWidth=2;
bio(209).sigAddress='&Position_controller_enable_disable_B.screengazeY[0]';
bio(209).ndims=2;
bio(209).size=[];


bio(210).blkName='DataLogging/Receive_Gaze/S-Function/p11';
bio(210).sigName='resolution X';
bio(210).portIdx=10;
bio(210).dim=[1,1];
bio(210).sigWidth=1;
bio(210).sigAddress='&Position_controller_enable_disable_B.resolutionX';
bio(210).ndims=2;
bio(210).size=[];


bio(211).blkName='DataLogging/Receive_Gaze/S-Function/p12';
bio(211).sigName='resolution Y';
bio(211).portIdx=11;
bio(211).dim=[1,1];
bio(211).sigWidth=1;
bio(211).sigAddress='&Position_controller_enable_disable_B.resolutionY';
bio(211).ndims=2;
bio(211).size=[];


bio(212).blkName='DataLogging/Receive_Gaze/S-Function/p13';
bio(212).sigName='status flags';
bio(212).portIdx=12;
bio(212).dim=[1,1];
bio(212).sigWidth=1;
bio(212).sigAddress='&Position_controller_enable_disable_B.statusflags';
bio(212).ndims=2;
bio(212).size=[];


bio(213).blkName='DataLogging/Receive_Gaze/S-Function/p14';
bio(213).sigName='extra input';
bio(213).portIdx=13;
bio(213).dim=[1,1];
bio(213).sigWidth=1;
bio(213).sigAddress='&Position_controller_enable_disable_B.extrainput';
bio(213).ndims=2;
bio(213).size=[];


bio(214).blkName='DataLogging/Receive_Gaze/S-Function/p15';
bio(214).sigName='buttons';
bio(214).portIdx=14;
bio(214).dim=[1,1];
bio(214).sigWidth=1;
bio(214).sigAddress='&Position_controller_enable_disable_B.buttons';
bio(214).ndims=2;
bio(214).size=[];


bio(215).blkName='DataLogging/Receive_Gaze/S-Function/p16';
bio(215).sigName='htype';
bio(215).portIdx=15;
bio(215).dim=[1,1];
bio(215).sigWidth=1;
bio(215).sigAddress='&Position_controller_enable_disable_B.htype';
bio(215).ndims=2;
bio(215).size=[];


bio(216).blkName='DataLogging/Receive_Gaze/S-Function/p17';
bio(216).sigName='hdata';
bio(216).portIdx=16;
bio(216).dim=[8,1];
bio(216).sigWidth=8;
bio(216).sigAddress='&Position_controller_enable_disable_B.hdata[0]';
bio(216).ndims=2;
bio(216).size=[];


bio(217).blkName='DataLogging/Receive_Gaze/S-Function/p18';
bio(217).sigName='';
bio(217).portIdx=17;
bio(217).dim=[3,1];
bio(217).sigWidth=3;
bio(217).sigAddress='&Position_controller_enable_disable_B.SFunction_o18[0]';
bio(217).ndims=2;
bio(217).size=[];


bio(218).blkName='GUI Control/Preview Targets Subsystem/Create Target Vector/p1';
bio(218).sigName='target_vector';
bio(218).portIdx=0;
bio(218).dim=[1,352];
bio(218).sigWidth=352;
bio(218).sigAddress='&Position_controller_enable_disable_B.target_vector[0]';
bio(218).ndims=2;
bio(218).size=[];


bio(219).blkName='GUI Control/Preview Targets Subsystem/Create Target Vector/p2';
bio(219).sigName='target_vector_length';
bio(219).portIdx=1;
bio(219).dim=[1,1];
bio(219).sigWidth=1;
bio(219).sigAddress='&Position_controller_enable_disable_B.target_vector_length';
bio(219).ndims=2;
bio(219).size=[];


bio(220).blkName='GUI Control/Preview Targets Subsystem/Concatenation';
bio(220).sigName='';
bio(220).portIdx=0;
bio(220).dim=[2,5];
bio(220).sigWidth=10;
bio(220).sigAddress='&Position_controller_enable_disable_B.Concatenation1[0]';
bio(220).ndims=2;
bio(220).size=[];


bio(221).blkName='GUI Control/Preview Targets Subsystem/Concatenation1';
bio(221).sigName='';
bio(221).portIdx=0;
bio(221).dim=[2,5];
bio(221).sigWidth=10;
bio(221).sigAddress='&Position_controller_enable_disable_B.Concatenation1[0]';
bio(221).ndims=2;
bio(221).size=[];


bio(222).blkName='GUI Control/Preview Targets Subsystem/indices_padding';
bio(222).sigName='';
bio(222).portIdx=0;
bio(222).dim=[2,5];
bio(222).sigWidth=10;
bio(222).sigAddress='&Position_controller_enable_disable_B.Concatenation1[0]';
bio(222).ndims=2;
bio(222).size=[];


bio(223).blkName='GUI Control/Preview Targets Subsystem/Reshape';
bio(223).sigName='';
bio(223).portIdx=0;
bio(223).dim=[2,5];
bio(223).sigWidth=10;
bio(223).sigAddress='&Position_controller_enable_disable_B.Concatenation1[0]';
bio(223).ndims=2;
bio(223).size=[];


bio(224).blkName='GUI Control/Preview Targets Subsystem/Reshape1';
bio(224).sigName='';
bio(224).portIdx=0;
bio(224).dim=[2,5];
bio(224).sigWidth=10;
bio(224).sigAddress='&Position_controller_enable_disable_B.Concatenation1[0]';
bio(224).ndims=2;
bio(224).size=[];


bio(225).blkName='GUI Control/Run Command Subsystem/Embedded MATLAB Function/p1';
bio(225).sigName='y';
bio(225).portIdx=0;
bio(225).dim=[1,1];
bio(225).sigWidth=1;
bio(225).sigAddress='&Position_controller_enable_disable_B.y_k';
bio(225).ndims=2;
bio(225).size=[];


bio(226).blkName='GUI Control/Run Command Subsystem/Embedded MATLAB Function/p2';
bio(226).sigName='z';
bio(226).portIdx=1;
bio(226).dim=[1,1];
bio(226).sigWidth=1;
bio(226).sigAddress='&Position_controller_enable_disable_B.z';
bio(226).ndims=2;
bio(226).size=[];


bio(227).blkName='GUI Control/Run Command Subsystem/Data Type Conversion';
bio(227).sigName='';
bio(227).portIdx=0;
bio(227).dim=[1,1];
bio(227).sigWidth=1;
bio(227).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion_nb';
bio(227).ndims=2;
bio(227).size=[];


bio(228).blkName='GUI Control/Run Command Subsystem/Data Type Conversion1';
bio(228).sigName='';
bio(228).portIdx=0;
bio(228).dim=[1,1];
bio(228).sigWidth=1;
bio(228).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion1_k';
bio(228).ndims=2;
bio(228).size=[];


bio(229).blkName='GUI Control/Run Command Subsystem/Data Type Conversion2';
bio(229).sigName='';
bio(229).portIdx=0;
bio(229).dim=[1,1];
bio(229).sigWidth=1;
bio(229).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion2_p';
bio(229).ndims=2;
bio(229).size=[];


bio(230).blkName='GUI Control/Run Command Subsystem/Rate Transition';
bio(230).sigName='';
bio(230).portIdx=0;
bio(230).dim=[1,1];
bio(230).sigWidth=1;
bio(230).sigAddress='&Position_controller_enable_disable_B.RateTransition_c';
bio(230).ndims=2;
bio(230).size=[];


bio(231).blkName='GUI Control/Run Command Subsystem/Run Command Receive/p1';
bio(231).sigName='';
bio(231).portIdx=0;
bio(231).dim=[1,1];
bio(231).sigWidth=1;
bio(231).sigAddress='&Position_controller_enable_disable_B.RunCommandReceive_o1';
bio(231).ndims=2;
bio(231).size=[];


bio(232).blkName='GUI Control/Run Command Subsystem/Run Command Receive/p2';
bio(232).sigName='';
bio(232).portIdx=1;
bio(232).dim=[1,1];
bio(232).sigWidth=1;
bio(232).sigAddress='&Position_controller_enable_disable_B.RunCommandReceive_o2';
bio(232).ndims=2;
bio(232).size=[];


bio(233).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p1';
bio(233).sigName='task_status';
bio(233).portIdx=0;
bio(233).dim=[1,1];
bio(233).sigWidth=1;
bio(233).sigAddress='&Position_controller_enable_disable_B.task_status_k';
bio(233).ndims=2;
bio(233).size=[];


bio(234).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p2';
bio(234).sigName='tp';
bio(234).portIdx=1;
bio(234).dim=[1,1];
bio(234).sigWidth=1;
bio(234).sigAddress='&Position_controller_enable_disable_B.tp';
bio(234).ndims=2;
bio(234).size=[];


bio(235).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p3';
bio(235).sigName='block';
bio(235).portIdx=2;
bio(235).dim=[1,1];
bio(235).sigWidth=1;
bio(235).sigAddress='&Position_controller_enable_disable_B.block';
bio(235).ndims=2;
bio(235).size=[];


bio(236).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p4';
bio(236).sigName='trial_in_block';
bio(236).portIdx=3;
bio(236).dim=[1,1];
bio(236).sigWidth=1;
bio(236).sigAddress='&Position_controller_enable_disable_B.trial_in_block';
bio(236).ndims=2;
bio(236).size=[];


bio(237).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p5';
bio(237).sigName='block_in_set';
bio(237).portIdx=4;
bio(237).dim=[1,1];
bio(237).sigWidth=1;
bio(237).sigAddress='&Position_controller_enable_disable_B.block_in_set';
bio(237).ndims=2;
bio(237).size=[];


bio(238).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p6';
bio(238).sigName='trial_in_set';
bio(238).portIdx=5;
bio(238).dim=[1,1];
bio(238).sigWidth=1;
bio(238).sigAddress='&Position_controller_enable_disable_B.trial_in_set';
bio(238).ndims=2;
bio(238).size=[];


bio(239).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p7';
bio(239).sigName='e_exit_trial';
bio(239).portIdx=6;
bio(239).dim=[1,1];
bio(239).sigWidth=1;
bio(239).sigAddress='&Position_controller_enable_disable_B.e_exit_trial';
bio(239).ndims=2;
bio(239).size=[];


bio(240).blkName='GUI Control/Task Execution Control Subsystem/Data Type Conversion';
bio(240).sigName='';
bio(240).portIdx=0;
bio(240).dim=[1,1];
bio(240).sigWidth=1;
bio(240).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion_g';
bio(240).ndims=2;
bio(240).size=[];


bio(241).blkName='GUI Control/Task Execution Control Subsystem/Data Type Conversion1';
bio(241).sigName='';
bio(241).portIdx=0;
bio(241).dim=[1,1];
bio(241).sigWidth=1;
bio(241).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion1_gn';
bio(241).ndims=2;
bio(241).size=[];


bio(242).blkName='GUI Control/Task Execution Control Subsystem/Data Type Conversion2';
bio(242).sigName='';
bio(242).portIdx=0;
bio(242).dim=[1,1];
bio(242).sigWidth=1;
bio(242).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion2';
bio(242).ndims=2;
bio(242).size=[];


bio(243).blkName='GUI Control/Task Execution Control Subsystem/Task Clock';
bio(243).sigName='';
bio(243).portIdx=0;
bio(243).dim=[1,1];
bio(243).sigWidth=1;
bio(243).sigAddress='&Position_controller_enable_disable_B.TaskClock';
bio(243).ndims=2;
bio(243).size=[];


bio(244).blkName='GUI Control/Task Execution Control Subsystem/Delay';
bio(244).sigName='';
bio(244).portIdx=0;
bio(244).dim=[1,1];
bio(244).sigWidth=1;
bio(244).sigAddress='&Position_controller_enable_disable_B.Delay';
bio(244).ndims=2;
bio(244).size=[];


bio(245).blkName='GUI Control/Task Execution Control Subsystem/Delay1';
bio(245).sigName='';
bio(245).portIdx=0;
bio(245).dim=[1,1];
bio(245).sigWidth=1;
bio(245).sigAddress='&Position_controller_enable_disable_B.Delay1';
bio(245).ndims=2;
bio(245).size=[];


bio(246).blkName='GUI Control/Task Execution Control Subsystem/Product';
bio(246).sigName='';
bio(246).portIdx=0;
bio(246).dim=[1,1];
bio(246).sigWidth=1;
bio(246).sigAddress='&Position_controller_enable_disable_B.Product';
bio(246).ndims=2;
bio(246).size=[];


bio(247).blkName='GUI Control/Task Execution Control Subsystem/Product2';
bio(247).sigName='';
bio(247).portIdx=0;
bio(247).dim=[1,1];
bio(247).sigWidth=1;
bio(247).sigAddress='&Position_controller_enable_disable_B.Product2';
bio(247).ndims=2;
bio(247).size=[];


bio(248).blkName='GUI Control/Task Execution Control Subsystem/Product3';
bio(248).sigName='';
bio(248).portIdx=0;
bio(248).dim=[1,1];
bio(248).sigWidth=1;
bio(248).sigAddress='&Position_controller_enable_disable_B.Product3';
bio(248).ndims=2;
bio(248).size=[];


bio(249).blkName='GUI Control/Task Execution Control Subsystem/Selector';
bio(249).sigName='';
bio(249).portIdx=0;
bio(249).dim=[50,1];
bio(249).sigWidth=50;
bio(249).sigAddress='&Position_controller_enable_disable_B.Selector_p[0]';
bio(249).ndims=2;
bio(249).size=[];


bio(250).blkName='GUI Control/Task Execution Control Subsystem/Selector1';
bio(250).sigName='';
bio(250).portIdx=0;
bio(250).dim=[1,500];
bio(250).sigWidth=500;
bio(250).sigAddress='&Position_controller_enable_disable_B.Selector1[0]';
bio(250).ndims=2;
bio(250).size=[];


bio(251).blkName='GUI Control/Task Execution Control Subsystem/Selector2';
bio(251).sigName='';
bio(251).portIdx=0;
bio(251).dim=[1000,1];
bio(251).sigWidth=1000;
bio(251).sigAddress='&Position_controller_enable_disable_B.Selector2[0]';
bio(251).ndims=2;
bio(251).size=[];


bio(252).blkName='GUI Control/Task Execution Control Subsystem/Subtract';
bio(252).sigName='';
bio(252).portIdx=0;
bio(252).dim=[1,1];
bio(252).sigWidth=1;
bio(252).sigAddress='&Position_controller_enable_disable_B.Subtract_ki';
bio(252).ndims=2;
bio(252).size=[];


bio(253).blkName='GUI Control/Task Execution Control Subsystem/Width';
bio(253).sigName='';
bio(253).portIdx=0;
bio(253).dim=[1,1];
bio(253).sigWidth=1;
bio(253).sigAddress='&Position_controller_enable_disable_B.Width_o';
bio(253).ndims=2;
bio(253).size=[];


bio(254).blkName='GUI Control/Task Execution Control Subsystem/Width1';
bio(254).sigName='';
bio(254).portIdx=0;
bio(254).dim=[1,1];
bio(254).sigWidth=1;
bio(254).sigAddress='&Position_controller_enable_disable_B.Width1';
bio(254).ndims=2;
bio(254).size=[];


bio(255).blkName='GUI Control/Task Execution Control Subsystem/Width2';
bio(255).sigName='';
bio(255).portIdx=0;
bio(255).dim=[1,1];
bio(255).sigWidth=1;
bio(255).sigAddress='&Position_controller_enable_disable_B.Width2';
bio(255).ndims=2;
bio(255).size=[];


bio(256).blkName='Parameter Table Defn/TP_table/START_TARGET;Start target;target;Target to initiate movement from;;;none;;';
bio(256).sigName='';
bio(256).portIdx=0;
bio(256).dim=[1,1];
bio(256).sigWidth=1;
bio(256).sigAddress='&Position_controller_enable_disable_B.START_TARGETStarttargettargetTargettoinitiatemovementfromnone';
bio(256).ndims=2;
bio(256).size=[];


bio(257).blkName='Parameter Table Defn/TP_table/TARGET_COL;Destination Target;target;Target to reach to;;;none;;';
bio(257).sigName='';
bio(257).portIdx=0;
bio(257).dim=[1,1];
bio(257).sigWidth=1;
bio(257).sigAddress='&Position_controller_enable_disable_B.TARGET_COLDestinationTargettargetTargettoreachtonone';
bio(257).ndims=2;
bio(257).size=[];


bio(258).blkName='Parameter Table Defn/TP_table/TRAJ_DURATION_COL;Trajectory Duration;integer;Duration of trajectory (ms);;;none;;';
bio(258).sigName='';
bio(258).portIdx=0;
bio(258).dim=[1,1];
bio(258).sigWidth=1;
bio(258).sigAddress='&Position_controller_enable_disable_B.TRAJ_DURATION_COLTrajectoryDurationintegerDurationoftrajectorym';
bio(258).ndims=2;
bio(258).size=[];


bio(259).blkName='Parameter Table Defn/events/DONE_MOVEMENT;Done movement;;The trajectory has been completed;;;none;;';
bio(259).sigName='';
bio(259).portIdx=0;
bio(259).dim=[1,1];
bio(259).sigWidth=1;
bio(259).sigAddress='&Position_controller_enable_disable_B.DONE_MOVEMENTDonemovementThetrajectoryhasbeencompletednone';
bio(259).ndims=2;
bio(259).size=[];


bio(260).blkName='Parameter Table Defn/events/ENABLED_CONTROLLER;Enabled controller;;The position controller is ramping on;;;none;;';
bio(260).sigName='';
bio(260).portIdx=0;
bio(260).dim=[1,1];
bio(260).sigWidth=1;
bio(260).sigAddress='&Position_controller_enable_disable_B.ENABLED_CONTROLLEREnabledcontrollerThepositioncontrollerisrampi';
bio(260).ndims=2;
bio(260).size=[];


bio(261).blkName='Parameter Table Defn/events/MOVING;Moving;;The trajectory has started;;;none;;';
bio(261).sigName='';
bio(261).portIdx=0;
bio(261).dim=[1,1];
bio(261).sigWidth=1;
bio(261).sigAddress='&Position_controller_enable_disable_B.MOVINGMovingThetrajectoryhasstartednone';
bio(261).ndims=2;
bio(261).size=[];


bio(262).blkName='Parameter Table Defn/events/WAIT_FOR_ENABLE;Wait for enable;;Waiting to enter the start target;;;none;;';
bio(262).sigName='';
bio(262).portIdx=0;
bio(262).dim=[1,1];
bio(262).sigWidth=1;
bio(262).sigAddress='&Position_controller_enable_disable_B.WAIT_FOR_ENABLEWaitforenableWaitingtoenterthestarttargetnone';
bio(262).ndims=2;
bio(262).size=[];


bio(263).blkName='Parameter Table Defn/target_table/COLOR;Color;colour;Initial target colour;;;none;;';
bio(263).sigName='';
bio(263).portIdx=0;
bio(263).dim=[1,1];
bio(263).sigWidth=1;
bio(263).sigAddress='&Position_controller_enable_disable_B.COLORColorcolourInitialtargetcolournone';
bio(263).ndims=2;
bio(263).size=[];


bio(264).blkName='Parameter Table Defn/target_table/VRAD;Vrad;float;Visual Radius in cm (Radius used for visual stimulation);;;none;;';
bio(264).sigName='';
bio(264).portIdx=0;
bio(264).dim=[1,1];
bio(264).sigWidth=1;
bio(264).sigAddress='&Position_controller_enable_disable_B.VRADVradfloatVisualRadiusincmRadiususedforvisualstimulationnone';
bio(264).ndims=2;
bio(264).size=[];


bio(265).blkName='Parameter Table Defn/target_table/col_x;X;float;X Position (cm) of the target relative to  local (0,0);;;none;;';
bio(265).sigName='';
bio(265).portIdx=0;
bio(265).dim=[1,1];
bio(265).sigWidth=1;
bio(265).sigAddress='&Position_controller_enable_disable_B.col_xXfloatXPositioncmofthetargetrelativetolocal00none';
bio(265).ndims=2;
bio(265).size=[];


bio(266).blkName='Parameter Table Defn/target_table/col_y;Y;float;Y Position (cm) of the target relative to  local (0,0);;;none;;';
bio(266).sigName='';
bio(266).portIdx=0;
bio(266).dim=[1,1];
bio(266).sigWidth=1;
bio(266).sigAddress='&Position_controller_enable_disable_B.col_yYfloatYPositioncmofthetargetrelativetolocal00none';
bio(266).ndims=2;
bio(266).size=[];


bio(267).blkName='Parameter Table Defn/task_definition/INSTRUCTIONS=Forces will be disabled until you move into the first target you see. The position controller will ramp on,\\nthen you will be moved to a peripheral target. Once at the peripheral target the position controller\\nwill be ramped off.\\n';
bio(267).sigName='';
bio(267).portIdx=0;
bio(267).dim=[1,1];
bio(267).sigWidth=1;
bio(267).sigAddress='&Position_controller_enable_disable_B.INSTRUCTIONSForceswillbedisableduntilyoumoveintothefirsttargety';
bio(267).ndims=2;
bio(267).size=[];


bio(268).blkName='Parameter Table Defn/task_definition/LOAD_FOR=EITHER';
bio(268).sigName='';
bio(268).portIdx=0;
bio(268).dim=[1,1];
bio(268).sigWidth=1;
bio(268).sigAddress='&Position_controller_enable_disable_B.LOAD_FOREITHER';
bio(268).ndims=2;
bio(268).size=[];


bio(269).blkName='Parameter Table Defn/task_wide/POSITION_RAMP_TIME;Ramp time;integer;Position controller ramp on and ramp off time (ms);;;none;;';
bio(269).sigName='';
bio(269).portIdx=0;
bio(269).dim=[1,1];
bio(269).sigWidth=1;
bio(269).sigAddress='&Position_controller_enable_disable_B.POSITION_RAMP_TIMERamptimeintegerPositioncontrollerramponandram';
bio(269).ndims=2;
bio(269).size=[];


bio(270).blkName='Parameter Table Defn/task_wide/WAIT_AT_START_TIME;Wait at start time;integer;Time to wait at start target before position control starts (ms);;;none;;';
bio(270).sigName='';
bio(270).portIdx=0;
bio(270).dim=[1,1];
bio(270).sigWidth=1;
bio(270).sigAddress='&Position_controller_enable_disable_B.WAIT_AT_START_TIMEWaitatstarttimeintegerTimetowaitatstarttarget';
bio(270).ndims=2;
bio(270).size=[];


bio(271).blkName='Process_Video_CMD/PVC_core/Embedded MATLAB Function/p1';
bio(271).sigName='vis_cmd_out';
bio(271).portIdx=0;
bio(271).dim=[725,1];
bio(271).sigWidth=725;
bio(271).sigAddress='&Position_controller_enable_disable_B.vis_cmd_out[0]';
bio(271).ndims=2;
bio(271).size=[];


bio(272).blkName='Process_Video_CMD/PVC_core/Embedded MATLAB Function/p2';
bio(272).sigName='vis_cmd_cropped';
bio(272).portIdx=1;
bio(272).dim=[1,1];
bio(272).sigWidth=1;
bio(272).sigAddress='&Position_controller_enable_disable_B.vis_cmd_cropped';
bio(272).ndims=2;
bio(272).size=[];


bio(273).blkName='Process_Video_CMD/PVC_core/Embedded MATLAB Function/p3';
bio(273).sigName='frame_sent_trigger';
bio(273).portIdx=2;
bio(273).dim=[1,1];
bio(273).sigWidth=1;
bio(273).sigAddress='&Position_controller_enable_disable_B.frame_sent_trigger';
bio(273).ndims=2;
bio(273).size=[];


bio(274).blkName='Process_Video_CMD/PVC_core/Embedded MATLAB Function/p4';
bio(274).sigName='frame_number';
bio(274).portIdx=3;
bio(274).dim=[1,1];
bio(274).sigWidth=1;
bio(274).sigAddress='&Position_controller_enable_disable_B.frame_number';
bio(274).ndims=2;
bio(274).size=[];


bio(275).blkName='Process_Video_CMD/PVC_core/Latency Tracking Machine/p1';
bio(275).sigName='average_ack_delay';
bio(275).portIdx=0;
bio(275).dim=[1,1];
bio(275).sigWidth=1;
bio(275).sigAddress='&Position_controller_enable_disable_B.average_ack_delay';
bio(275).ndims=2;
bio(275).size=[];


bio(276).blkName='Process_Video_CMD/PVC_core/Latency Tracking Machine/p2';
bio(276).sigName='last_frame_sent';
bio(276).portIdx=1;
bio(276).dim=[1,1];
bio(276).sigWidth=1;
bio(276).sigAddress='&Position_controller_enable_disable_B.last_frame_sent';
bio(276).ndims=2;
bio(276).size=[];


bio(277).blkName='Process_Video_CMD/PVC_core/Latency Tracking Machine/p3';
bio(277).sigName='last_frame_acknowledged';
bio(277).portIdx=2;
bio(277).dim=[1,1];
bio(277).sigWidth=1;
bio(277).sigAddress='&Position_controller_enable_disable_B.last_frame_acknowledged';
bio(277).ndims=2;
bio(277).size=[];


bio(278).blkName='Process_Video_CMD/PVC_core/Latency Tracking Machine/p4';
bio(278).sigName='last_frame_ack_delay';
bio(278).portIdx=3;
bio(278).dim=[1,1];
bio(278).sigWidth=1;
bio(278).sigAddress='&Position_controller_enable_disable_B.last_frame_ack_delay';
bio(278).ndims=2;
bio(278).size=[];


bio(279).blkName='Process_Video_CMD/PVC_core/Rate Transition';
bio(279).sigName='';
bio(279).portIdx=0;
bio(279).dim=[1,1];
bio(279).sigWidth=1;
bio(279).sigAddress='&Position_controller_enable_disable_B.RateTransition_e';
bio(279).ndims=2;
bio(279).size=[];


bio(280).blkName='Process_Video_CMD/PVC_core/Rate Transition1';
bio(280).sigName='';
bio(280).portIdx=0;
bio(280).dim=[1,1];
bio(280).sigWidth=1;
bio(280).sigAddress='&Position_controller_enable_disable_B.RateTransition1_d';
bio(280).ndims=2;
bio(280).size=[];


bio(281).blkName='Process_Video_CMD/PVC_core/Rate Transition2';
bio(281).sigName='';
bio(281).portIdx=0;
bio(281).dim=[59,70];
bio(281).sigWidth=4130;
bio(281).sigAddress='&Position_controller_enable_disable_B.RateTransition2_c[0]';
bio(281).ndims=2;
bio(281).size=[];


bio(282).blkName='Process_Video_CMD/PVC_core/Rate Transition3';
bio(282).sigName='';
bio(282).portIdx=0;
bio(282).dim=[1,1];
bio(282).sigWidth=1;
bio(282).sigAddress='&Position_controller_enable_disable_B.RateTransition3_h';
bio(282).ndims=2;
bio(282).size=[];


bio(283).blkName='Process_Video_CMD/PVC_core/Rate Transition4';
bio(283).sigName='';
bio(283).portIdx=0;
bio(283).dim=[1,1];
bio(283).sigWidth=1;
bio(283).sigAddress='&Position_controller_enable_disable_B.RateTransition4_i';
bio(283).ndims=2;
bio(283).size=[];


bio(284).blkName='Process_Video_CMD/PVC_core/Rate Transition5';
bio(284).sigName='';
bio(284).portIdx=0;
bio(284).dim=[1,1];
bio(284).sigWidth=1;
bio(284).sigAddress='&Position_controller_enable_disable_B.RateTransition5_f';
bio(284).ndims=2;
bio(284).size=[];


bio(285).blkName='Trajectory subsystem/Create_Trajectory/get_arm_info/p1';
bio(285).sigName='position';
bio(285).portIdx=0;
bio(285).dim=[1,2];
bio(285).sigWidth=2;
bio(285).sigAddress='&Position_controller_enable_disable_B.position[0]';
bio(285).ndims=2;
bio(285).size=[];


bio(286).blkName='Trajectory subsystem/Create_Trajectory/get_arm_info/p2';
bio(286).sigName='task_status';
bio(286).portIdx=1;
bio(286).dim=[1,1];
bio(286).sigWidth=1;
bio(286).sigAddress='&Position_controller_enable_disable_B.task_status';
bio(286).ndims=2;
bio(286).size=[];


bio(287).blkName='Trajectory subsystem/Create_Trajectory/get_arm_info/p3';
bio(287).sigName='robot_enabled';
bio(287).portIdx=2;
bio(287).dim=[1,1];
bio(287).sigWidth=1;
bio(287).sigAddress='&Position_controller_enable_disable_B.robot_enabled';
bio(287).ndims=2;
bio(287).size=[];


bio(288).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/FF_FB_Position_Controller/p1';
bio(288).sigName='Force_FB';
bio(288).portIdx=0;
bio(288).dim=[1,4];
bio(288).sigWidth=4;
bio(288).sigAddress='&Position_controller_enable_disable_B.Force_FB[0]';
bio(288).ndims=2;
bio(288).size=[];


bio(289).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/FF_FB_Position_Controller/p2';
bio(289).sigName='Force_FF';
bio(289).portIdx=1;
bio(289).dim=[1,4];
bio(289).sigWidth=4;
bio(289).sigAddress='&Position_controller_enable_disable_B.Force_FF[0]';
bio(289).ndims=2;
bio(289).size=[];


bio(290).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Matrix Concatenate';
bio(290).sigName='';
bio(290).portIdx=0;
bio(290).dim=[8,2];
bio(290).sigWidth=16;
bio(290).sigAddress='&Position_controller_enable_disable_B.MatrixConcatenate[0]';
bio(290).ndims=2;
bio(290).size=[];


bio(291).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/coordinate_system_option';
bio(291).sigName='';
bio(291).portIdx=0;
bio(291).dim=[1,1];
bio(291).sigWidth=1;
bio(291).sigAddress='&Position_controller_enable_disable_B.coordinate_system_option';
bio(291).ndims=2;
bio(291).size=[];


bio(292).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Data Type Conversion';
bio(292).sigName='';
bio(292).portIdx=0;
bio(292).dim=[2,6];
bio(292).sigWidth=12;
bio(292).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion_n[0]';
bio(292).ndims=2;
bio(292).size=[];


bio(293).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Data Type Conversion1';
bio(293).sigName='';
bio(293).portIdx=0;
bio(293).dim=[3,50];
bio(293).sigWidth=150;
bio(293).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion1_n[0]';
bio(293).ndims=2;
bio(293).size=[];


bio(294).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Rate Transition1';
bio(294).sigName='';
bio(294).portIdx=0;
bio(294).dim=[2,1];
bio(294).sigWidth=2;
bio(294).sigAddress='&Position_controller_enable_disable_B.RateTransition1[0]';
bio(294).ndims=2;
bio(294).size=[];


bio(295).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Rate Transition2';
bio(295).sigName='';
bio(295).portIdx=0;
bio(295).dim=[2,1];
bio(295).sigWidth=2;
bio(295).sigAddress='&Position_controller_enable_disable_B.RateTransition2[0]';
bio(295).ndims=2;
bio(295).size=[];


bio(296).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Rate Transition3';
bio(296).sigName='';
bio(296).portIdx=0;
bio(296).dim=[2,1];
bio(296).sigWidth=2;
bio(296).sigAddress='&Position_controller_enable_disable_B.RateTransition3[0]';
bio(296).ndims=2;
bio(296).size=[];


bio(297).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Rate Transition4';
bio(297).sigName='';
bio(297).portIdx=0;
bio(297).dim=[1,1];
bio(297).sigWidth=1;
bio(297).sigAddress='&Position_controller_enable_disable_B.RateTransition4_c';
bio(297).ndims=2;
bio(297).size=[];


bio(298).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Rate Transition5';
bio(298).sigName='';
bio(298).portIdx=0;
bio(298).dim=[1,1];
bio(298).sigWidth=1;
bio(298).sigAddress='&Position_controller_enable_disable_B.RateTransition5';
bio(298).ndims=2;
bio(298).size=[];


bio(299).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Rate Transition6';
bio(299).sigName='';
bio(299).portIdx=0;
bio(299).dim=[3,50];
bio(299).sigWidth=150;
bio(299).sigAddress='&Position_controller_enable_disable_B.RateTransition6[0]';
bio(299).ndims=2;
bio(299).size=[];


bio(300).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Rate Transition7';
bio(300).sigName='';
bio(300).portIdx=0;
bio(300).dim=[8,2];
bio(300).sigWidth=16;
bio(300).sigAddress='&Position_controller_enable_disable_B.RateTransition7[0]';
bio(300).ndims=2;
bio(300).size=[];


bio(301).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Sum';
bio(301).sigName='';
bio(301).portIdx=0;
bio(301).dim=[1,4];
bio(301).sigWidth=4;
bio(301).sigAddress='&Position_controller_enable_disable_B.Sum[0]';
bio(301).ndims=2;
bio(301).size=[];


bio(302).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/FF_FB_Position_Controller/p1';
bio(302).sigName='TorqueFB';
bio(302).portIdx=0;
bio(302).dim=[1,4];
bio(302).sigWidth=4;
bio(302).sigAddress='&Position_controller_enable_disable_B.TorqueFB[0]';
bio(302).ndims=2;
bio(302).size=[];


bio(303).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/FF_FB_Position_Controller/p2';
bio(303).sigName='TorqueFF';
bio(303).portIdx=1;
bio(303).dim=[1,4];
bio(303).sigWidth=4;
bio(303).sigAddress='&Position_controller_enable_disable_B.TorqueFF[0]';
bio(303).ndims=2;
bio(303).size=[];


bio(304).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/FF_FB_Position_Controller/p3';
bio(304).sigName='filterType';
bio(304).portIdx=2;
bio(304).dim=[1,1];
bio(304).sigWidth=1;
bio(304).sigAddress='&Position_controller_enable_disable_B.filterType';
bio(304).ndims=2;
bio(304).size=[];


bio(305).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Data Type Conversion';
bio(305).sigName='';
bio(305).portIdx=0;
bio(305).dim=[2,6];
bio(305).sigWidth=12;
bio(305).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion_e[0]';
bio(305).ndims=2;
bio(305).size=[];


bio(306).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Rate Transition1';
bio(306).sigName='';
bio(306).portIdx=0;
bio(306).dim=[2,1];
bio(306).sigWidth=2;
bio(306).sigAddress='&Position_controller_enable_disable_B.RateTransition1_p[0]';
bio(306).ndims=2;
bio(306).size=[];


bio(307).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Rate Transition2';
bio(307).sigName='';
bio(307).portIdx=0;
bio(307).dim=[2,1];
bio(307).sigWidth=2;
bio(307).sigAddress='&Position_controller_enable_disable_B.RateTransition2_i[0]';
bio(307).ndims=2;
bio(307).size=[];


bio(308).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Rate Transition3';
bio(308).sigName='';
bio(308).portIdx=0;
bio(308).dim=[1,1];
bio(308).sigWidth=1;
bio(308).sigAddress='&Position_controller_enable_disable_B.RateTransition3_o';
bio(308).ndims=2;
bio(308).size=[];


bio(309).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Rate Transition4';
bio(309).sigName='';
bio(309).portIdx=0;
bio(309).dim=[2,1];
bio(309).sigWidth=2;
bio(309).sigAddress='&Position_controller_enable_disable_B.RateTransition4_m[0]';
bio(309).ndims=2;
bio(309).size=[];


bio(310).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Rate Transition5';
bio(310).sigName='';
bio(310).portIdx=0;
bio(310).dim=[1,1];
bio(310).sigWidth=1;
bio(310).sigAddress='&Position_controller_enable_disable_B.RateTransition5_k';
bio(310).ndims=2;
bio(310).size=[];


bio(311).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Rate Transition6';
bio(311).sigName='';
bio(311).portIdx=0;
bio(311).dim=[3,50];
bio(311).sigWidth=150;
bio(311).sigAddress='&Position_controller_enable_disable_B.RateTransition6_e[0]';
bio(311).ndims=2;
bio(311).size=[];


bio(312).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Sum';
bio(312).sigName='';
bio(312).portIdx=0;
bio(312).dim=[1,4];
bio(312).sigWidth=4;
bio(312).sigAddress='&Position_controller_enable_disable_B.Sum_m[0]';
bio(312).ndims=2;
bio(312).size=[];


bio(313).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Switch';
bio(313).sigName='';
bio(313).portIdx=0;
bio(313).dim=[4,1];
bio(313).sigWidth=4;
bio(313).sigAddress='&Position_controller_enable_disable_B.Switch_i[0]';
bio(313).ndims=2;
bio(313).size=[];


bio(314).blkName='DataLogging/Create Task State Subsystem/Counter Free-Running/Output';
bio(314).sigName='';
bio(314).portIdx=0;
bio(314).dim=[1,1];
bio(314).sigWidth=1;
bio(314).sigAddress='&Position_controller_enable_disable_B.Output';
bio(314).ndims=2;
bio(314).size=[];


bio(315).blkName='DataLogging/Create Task State Subsystem/If Running/Compare';
bio(315).sigName='';
bio(315).portIdx=0;
bio(315).dim=[1,1];
bio(315).sigWidth=1;
bio(315).sigAddress='&Position_controller_enable_disable_B.Compare_g';
bio(315).ndims=2;
bio(315).size=[];


bio(316).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Data Type Conversion';
bio(316).sigName='';
bio(316).portIdx=0;
bio(316).dim=[1,78];
bio(316).sigWidth=78;
bio(316).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion_f[0]';
bio(316).ndims=2;
bio(316).size=[];


bio(317).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Ideal Frames Per Packet';
bio(317).sigName='';
bio(317).portIdx=0;
bio(317).dim=[1,1];
bio(317).sigWidth=1;
bio(317).sigAddress='&Position_controller_enable_disable_B.IdealFramesPerPacket';
bio(317).ndims=2;
bio(317).size=[];


bio(318).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Math Function';
bio(318).sigName='';
bio(318).portIdx=0;
bio(318).dim=[1,1];
bio(318).sigWidth=1;
bio(318).sigAddress='&Position_controller_enable_disable_B.MathFunction';
bio(318).ndims=2;
bio(318).size=[];


bio(319).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-1';
bio(319).sigName='';
bio(319).portIdx=0;
bio(319).dim=[1,78];
bio(319).sigWidth=78;
bio(319).sigAddress='&Position_controller_enable_disable_B.t1[0]';
bio(319).ndims=2;
bio(319).size=[];


bio(320).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-2';
bio(320).sigName='';
bio(320).portIdx=0;
bio(320).dim=[1,78];
bio(320).sigWidth=78;
bio(320).sigAddress='&Position_controller_enable_disable_B.t2[0]';
bio(320).ndims=2;
bio(320).size=[];


bio(321).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-3';
bio(321).sigName='';
bio(321).portIdx=0;
bio(321).dim=[1,78];
bio(321).sigWidth=78;
bio(321).sigAddress='&Position_controller_enable_disable_B.t3[0]';
bio(321).ndims=2;
bio(321).size=[];


bio(322).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-4';
bio(322).sigName='';
bio(322).portIdx=0;
bio(322).dim=[1,78];
bio(322).sigWidth=78;
bio(322).sigAddress='&Position_controller_enable_disable_B.t4[0]';
bio(322).ndims=2;
bio(322).size=[];


bio(323).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-5';
bio(323).sigName='';
bio(323).portIdx=0;
bio(323).dim=[1,78];
bio(323).sigWidth=78;
bio(323).sigAddress='&Position_controller_enable_disable_B.t5[0]';
bio(323).ndims=2;
bio(323).size=[];


bio(324).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/MinMax';
bio(324).sigName='';
bio(324).portIdx=0;
bio(324).dim=[1,1];
bio(324).sigWidth=1;
bio(324).sigAddress='&Position_controller_enable_disable_B.MinMax_n';
bio(324).ndims=2;
bio(324).size=[];


bio(325).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Product';
bio(325).sigName='';
bio(325).portIdx=0;
bio(325).dim=[1,1];
bio(325).sigWidth=1;
bio(325).sigAddress='&Position_controller_enable_disable_B.Product_d';
bio(325).ndims=2;
bio(325).size=[];


bio(326).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Relational Operator';
bio(326).sigName='';
bio(326).portIdx=0;
bio(326).dim=[1,1];
bio(326).sigWidth=1;
bio(326).sigAddress='&Position_controller_enable_disable_B.RelationalOperator';
bio(326).ndims=2;
bio(326).size=[];


bio(327).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Selector';
bio(327).sigName='';
bio(327).portIdx=0;
bio(327).dim=[1,300];
bio(327).sigWidth=300;
bio(327).sigAddress='&Position_controller_enable_disable_B.Selector_k[0]';
bio(327).ndims=2;
bio(327).size=[];


bio(328).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Subtract';
bio(328).sigName='';
bio(328).portIdx=0;
bio(328).dim=[1,1];
bio(328).sigWidth=1;
bio(328).sigAddress='&Position_controller_enable_disable_B.Subtract_m';
bio(328).ndims=2;
bio(328).size=[];


bio(329).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Width';
bio(329).sigName='';
bio(329).portIdx=0;
bio(329).dim=[1,1];
bio(329).sigWidth=1;
bio(329).sigAddress='&Position_controller_enable_disable_B.Width_b';
bio(329).ndims=2;
bio(329).size=[];


bio(330).blkName='DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Pack';
bio(330).sigName='';
bio(330).portIdx=0;
bio(330).dim=[1224,1];
bio(330).sigWidth=1224;
bio(330).sigAddress='&Position_controller_enable_disable_B.Pack_d[0]';
bio(330).ndims=2;
bio(330).size=[];


bio(331).blkName='DataLogging/Network Transfer Subsystem/is running/Compare';
bio(331).sigName='';
bio(331).portIdx=0;
bio(331).dim=[1,1];
bio(331).sigWidth=1;
bio(331).sigAddress='&Position_controller_enable_disable_B.Compare_c';
bio(331).ndims=2;
bio(331).size=[];


bio(332).blkName='DataLogging/Poll Force Plates/plate1/parse packet 1/p1';
bio(332).sigName='forces';
bio(332).portIdx=0;
bio(332).dim=[3,1];
bio(332).sigWidth=3;
bio(332).sigAddress='&Position_controller_enable_disable_B.forces_b[0]';
bio(332).ndims=2;
bio(332).size=[];


bio(333).blkName='DataLogging/Poll Force Plates/plate1/parse packet 1/p2';
bio(333).sigName='moments';
bio(333).portIdx=1;
bio(333).dim=[3,1];
bio(333).sigWidth=3;
bio(333).sigAddress='&Position_controller_enable_disable_B.moments_j[0]';
bio(333).ndims=2;
bio(333).size=[];


bio(334).blkName='DataLogging/Poll Force Plates/plate1/parse packet 1/p3';
bio(334).sigName='timer';
bio(334).portIdx=2;
bio(334).dim=[1,1];
bio(334).sigWidth=1;
bio(334).sigAddress='&Position_controller_enable_disable_B.timer_m';
bio(334).ndims=2;
bio(334).size=[];


bio(335).blkName='DataLogging/Poll Force Plates/plate1/Receive/p1';
bio(335).sigName='';
bio(335).portIdx=0;
bio(335).dim=[64,1];
bio(335).sigWidth=64;
bio(335).sigAddress='&Position_controller_enable_disable_B.Receive_o1_f[0]';
bio(335).ndims=2;
bio(335).size=[];


bio(336).blkName='DataLogging/Poll Force Plates/plate1/Receive/p2';
bio(336).sigName='';
bio(336).portIdx=1;
bio(336).dim=[1,1];
bio(336).sigWidth=1;
bio(336).sigAddress='&Position_controller_enable_disable_B.Receive_o2_d';
bio(336).ndims=2;
bio(336).size=[];


bio(337).blkName='DataLogging/Poll Force Plates/plate2/parse packet 1/p1';
bio(337).sigName='forces';
bio(337).portIdx=0;
bio(337).dim=[3,1];
bio(337).sigWidth=3;
bio(337).sigAddress='&Position_controller_enable_disable_B.forces[0]';
bio(337).ndims=2;
bio(337).size=[];


bio(338).blkName='DataLogging/Poll Force Plates/plate2/parse packet 1/p2';
bio(338).sigName='moments';
bio(338).portIdx=1;
bio(338).dim=[3,1];
bio(338).sigWidth=3;
bio(338).sigAddress='&Position_controller_enable_disable_B.moments[0]';
bio(338).ndims=2;
bio(338).size=[];


bio(339).blkName='DataLogging/Poll Force Plates/plate2/parse packet 1/p3';
bio(339).sigName='timer';
bio(339).portIdx=2;
bio(339).dim=[1,1];
bio(339).sigWidth=1;
bio(339).sigAddress='&Position_controller_enable_disable_B.timer';
bio(339).ndims=2;
bio(339).size=[];


bio(340).blkName='DataLogging/Poll Force Plates/plate2/Receive1/p1';
bio(340).sigName='';
bio(340).portIdx=0;
bio(340).dim=[64,1];
bio(340).sigWidth=64;
bio(340).sigAddress='&Position_controller_enable_disable_B.Receive1_o1[0]';
bio(340).ndims=2;
bio(340).size=[];


bio(341).blkName='DataLogging/Poll Force Plates/plate2/Receive1/p2';
bio(341).sigName='';
bio(341).portIdx=1;
bio(341).dim=[1,1];
bio(341).sigWidth=1;
bio(341).sigAddress='&Position_controller_enable_disable_B.Receive1_o2';
bio(341).ndims=2;
bio(341).size=[];


bio(342).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/TypeCast';
bio(342).sigName='y';
bio(342).portIdx=0;
bio(342).dim=[1,1];
bio(342).sigWidth=1;
bio(342).sigAddress='&Position_controller_enable_disable_B.y_p';
bio(342).ndims=2;
bio(342).size=[];


bio(343).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Data Type Conversion';
bio(343).sigName='';
bio(343).portIdx=0;
bio(343).dim=[1,1];
bio(343).sigWidth=1;
bio(343).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion_lp';
bio(343).ndims=2;
bio(343).size=[];


bio(344).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/DPRAM Read Value';
bio(344).sigName='';
bio(344).portIdx=0;
bio(344).dim=[1,1];
bio(344).sigWidth=1;
bio(344).sigAddress='&Position_controller_enable_disable_B.DPRAMReadValue';
bio(344).ndims=2;
bio(344).size=[];


bio(345).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Unit Delay';
bio(345).sigName='';
bio(345).portIdx=0;
bio(345).dim=[1,1];
bio(345).sigWidth=1;
bio(345).sigAddress='&Position_controller_enable_disable_B.UnitDelay';
bio(345).ndims=2;
bio(345).size=[];


bio(346).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Unit Delay1';
bio(346).sigName='';
bio(346).portIdx=0;
bio(346).dim=[1,1];
bio(346).sigWidth=1;
bio(346).sigAddress='&Position_controller_enable_disable_B.UnitDelay1';
bio(346).ndims=2;
bio(346).size=[];


bio(347).blkName='GUI Control/Task Execution Control Subsystem/Compare To Constant/Compare';
bio(347).sigName='';
bio(347).portIdx=0;
bio(347).dim=[1,1];
bio(347).sigWidth=1;
bio(347).sigAddress='&Position_controller_enable_disable_B.Compare';
bio(347).ndims=2;
bio(347).size=[];


bio(348).blkName='Trajectory subsystem/Create_Trajectory/Detect Change/FixPt Relational Operator';
bio(348).sigName='';
bio(348).portIdx=0;
bio(348).dim=[1,1];
bio(348).sigWidth=1;
bio(348).sigAddress='&Position_controller_enable_disable_B.FixPtRelationalOperator_j';
bio(348).ndims=2;
bio(348).size=[];


bio(349).blkName='Trajectory subsystem/Create_Trajectory/Detect Change/Delay Input1';
bio(349).sigName='U(k-1)';
bio(349).portIdx=0;
bio(349).dim=[1,1];
bio(349).sigWidth=1;
bio(349).sigAddress='&Position_controller_enable_disable_B.Uk1_k';
bio(349).ndims=2;
bio(349).size=[];


bio(350).blkName='Trajectory subsystem/Create_Trajectory/Enable_Disable_Controller/Enable_controller/p1';
bio(350).sigName='task_status_out';
bio(350).portIdx=0;
bio(350).dim=[1,1];
bio(350).sigWidth=1;
bio(350).sigAddress='&Position_controller_enable_disable_B.task_status_out';
bio(350).ndims=2;
bio(350).size=[];


bio(351).blkName='Trajectory subsystem/Create_Trajectory/Enable_Disable_Controller/Enable_controller/p2';
bio(351).sigName='force_scale';
bio(351).portIdx=1;
bio(351).dim=[1,1];
bio(351).sigWidth=1;
bio(351).sigAddress='&Position_controller_enable_disable_B.force_scale';
bio(351).ndims=2;
bio(351).size=[];


bio(352).blkName='Trajectory subsystem/Create_Trajectory/Enable_Disable_Controller/Data Type Conversion1';
bio(352).sigName='';
bio(352).portIdx=0;
bio(352).dim=[1,1];
bio(352).sigWidth=1;
bio(352).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion1_c';
bio(352).ndims=2;
bio(352).size=[];


bio(353).blkName='Trajectory subsystem/Create_Trajectory/Enable_Disable_Controller/Data Type Conversion2';
bio(353).sigName='';
bio(353).portIdx=0;
bio(353).dim=[1,1];
bio(353).sigWidth=1;
bio(353).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion2_h';
bio(353).ndims=2;
bio(353).size=[];


bio(354).blkName='Trajectory subsystem/Create_Trajectory/Enable_Disable_Controller/Data Type Conversion3';
bio(354).sigName='';
bio(354).portIdx=0;
bio(354).dim=[1,1];
bio(354).sigWidth=1;
bio(354).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion3_m';
bio(354).ndims=2;
bio(354).size=[];


bio(355).blkName='Trajectory subsystem/Create_Trajectory/Virtual_Trajectory/Extract_Position';
bio(355).sigName='position';
bio(355).portIdx=0;
bio(355).dim=[1,2];
bio(355).sigWidth=2;
bio(355).sigAddress='&Position_controller_enable_disable_B.position_g[0]';
bio(355).ndims=2;
bio(355).size=[];


bio(356).blkName='Trajectory subsystem/Create_Trajectory/Virtual_Trajectory/Extract_Position1';
bio(356).sigName='position';
bio(356).portIdx=0;
bio(356).dim=[1,2];
bio(356).sigWidth=2;
bio(356).sigAddress='&Position_controller_enable_disable_B.position_a[0]';
bio(356).ndims=2;
bio(356).size=[];


bio(357).blkName='Trajectory subsystem/Create_Trajectory/Virtual_Trajectory/VirtualTrajectory/p1';
bio(357).sigName='virt_pos';
bio(357).portIdx=0;
bio(357).dim=[1,2];
bio(357).sigWidth=2;
bio(357).sigAddress='&Position_controller_enable_disable_B.virt_pos[0]';
bio(357).ndims=2;
bio(357).size=[];


bio(358).blkName='Trajectory subsystem/Create_Trajectory/Virtual_Trajectory/VirtualTrajectory/p2';
bio(358).sigName='traj_status';
bio(358).portIdx=1;
bio(358).dim=[1,1];
bio(358).sigWidth=1;
bio(358).sigAddress='&Position_controller_enable_disable_B.traj_status';
bio(358).ndims=2;
bio(358).size=[];


bio(359).blkName='Trajectory subsystem/Create_Trajectory/Virtual_Trajectory/VirtualTrajectory/p3';
bio(359).sigName='reset_controller';
bio(359).portIdx=2;
bio(359).dim=[1,1];
bio(359).sigWidth=1;
bio(359).sigAddress='&Position_controller_enable_disable_B.reset_controller';
bio(359).ndims=2;
bio(359).size=[];


bio(360).blkName='Trajectory subsystem/Create_Trajectory/Virtual_Trajectory/Data Type Conversion1';
bio(360).sigName='';
bio(360).portIdx=0;
bio(360).dim=[1,1];
bio(360).sigWidth=1;
bio(360).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion1_f';
bio(360).ndims=2;
bio(360).size=[];


bio(361).blkName='Trajectory subsystem/Create_Trajectory/Virtual_Trajectory/Data Type Conversion2';
bio(361).sigName='';
bio(361).portIdx=0;
bio(361).dim=[1,1];
bio(361).sigWidth=1;
bio(361).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion2_j';
bio(361).ndims=2;
bio(361).size=[];


bio(362).blkName='Trajectory subsystem/Create_Trajectory/calculate robot scaling/MATLAB Function';
bio(362).sigName='scaling';
bio(362).portIdx=0;
bio(362).dim=[1,2];
bio(362).sigWidth=2;
bio(362).sigAddress='&Position_controller_enable_disable_B.scaling[0]';
bio(362).ndims=2;
bio(362).size=[];


bio(363).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth';
bio(363).sigName='';
bio(363).portIdx=0;
bio(363).dim=[1,1];
bio(363).sigWidth=1;
bio(363).sigAddress='&Position_controller_enable_disable_B.ndorder50HzButterworth';
bio(363).ndims=2;
bio(363).size=[];


bio(364).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth1';
bio(364).sigName='';
bio(364).portIdx=0;
bio(364).dim=[1,1];
bio(364).sigWidth=1;
bio(364).sigAddress='&Position_controller_enable_disable_B.ndorder50HzButterworth1';
bio(364).ndims=2;
bio(364).size=[];


bio(365).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth2';
bio(365).sigName='';
bio(365).portIdx=0;
bio(365).dim=[1,1];
bio(365).sigWidth=1;
bio(365).sigAddress='&Position_controller_enable_disable_B.ndorder50HzButterworth2';
bio(365).ndims=2;
bio(365).size=[];


bio(366).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth3';
bio(366).sigName='';
bio(366).portIdx=0;
bio(366).dim=[1,1];
bio(366).sigWidth=1;
bio(366).sigAddress='&Position_controller_enable_disable_B.ndorder50HzButterworth3';
bio(366).ndims=2;
bio(366).size=[];


bio(367).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/xy_to_segment_angles_EP';
bio(367).sigName='SEGMENT_ANG';
bio(367).portIdx=0;
bio(367).dim=[2,1];
bio(367).sigWidth=2;
bio(367).sigAddress='&Position_controller_enable_disable_B.SEGMENT_ANG_mk[0]';
bio(367).ndims=2;
bio(367).size=[];


bio(368).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Switch1';
bio(368).sigName='';
bio(368).portIdx=0;
bio(368).dim=[2,1];
bio(368).sigWidth=2;
bio(368).sigAddress='&Position_controller_enable_disable_B.Switch1_h[0]';
bio(368).ndims=2;
bio(368).size=[];


bio(369).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/10 Hz Filter/2nd order 10Hz Butterworth @ 2kHz';
bio(369).sigName='';
bio(369).portIdx=0;
bio(369).dim=[1,1];
bio(369).sigWidth=1;
bio(369).sigAddress='&Position_controller_enable_disable_B.ndorder10HzButterworth2kHz';
bio(369).ndims=2;
bio(369).size=[];


bio(370).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/10 Hz Filter/2nd order 10Hz Butterworth @ 2kHz1';
bio(370).sigName='';
bio(370).portIdx=0;
bio(370).dim=[1,1];
bio(370).sigWidth=1;
bio(370).sigAddress='&Position_controller_enable_disable_B.ndorder10HzButterworth2kHz1';
bio(370).ndims=2;
bio(370).size=[];


bio(371).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/10 Hz Filter/2nd order 10Hz Butterworth @ 2kHz2';
bio(371).sigName='';
bio(371).portIdx=0;
bio(371).dim=[1,1];
bio(371).sigWidth=1;
bio(371).sigAddress='&Position_controller_enable_disable_B.ndorder10HzButterworth2kHz2';
bio(371).ndims=2;
bio(371).size=[];


bio(372).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/10 Hz Filter/2nd order 10Hz Butterworth @ 2kHz3';
bio(372).sigName='';
bio(372).portIdx=0;
bio(372).dim=[1,1];
bio(372).sigWidth=1;
bio(372).sigAddress='&Position_controller_enable_disable_B.ndorder10HzButterworth2kHz3';
bio(372).ndims=2;
bio(372).size=[];


bio(373).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth';
bio(373).sigName='';
bio(373).portIdx=0;
bio(373).dim=[1,1];
bio(373).sigWidth=1;
bio(373).sigAddress='&Position_controller_enable_disable_B.ndorder50HzButterworth_l';
bio(373).ndims=2;
bio(373).size=[];


bio(374).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth1';
bio(374).sigName='';
bio(374).portIdx=0;
bio(374).dim=[1,1];
bio(374).sigWidth=1;
bio(374).sigAddress='&Position_controller_enable_disable_B.ndorder50HzButterworth1_c';
bio(374).ndims=2;
bio(374).size=[];


bio(375).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth2';
bio(375).sigName='';
bio(375).portIdx=0;
bio(375).dim=[1,1];
bio(375).sigWidth=1;
bio(375).sigAddress='&Position_controller_enable_disable_B.ndorder50HzButterworth2_n';
bio(375).ndims=2;
bio(375).size=[];


bio(376).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth3';
bio(376).sigName='';
bio(376).portIdx=0;
bio(376).dim=[1,1];
bio(376).sigWidth=1;
bio(376).sigAddress='&Position_controller_enable_disable_B.ndorder50HzButterworth3_m';
bio(376).ndims=2;
bio(376).size=[];


bio(377).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/convert_to_segment_angles';
bio(377).sigName='SEGMENT_ANG';
bio(377).portIdx=0;
bio(377).dim=[2,1];
bio(377).sigWidth=2;
bio(377).sigAddress='&Position_controller_enable_disable_B.SEGMENT_ANG_m[0]';
bio(377).ndims=2;
bio(377).size=[];


bio(378).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/xy_to_segment_angles_EXO';
bio(378).sigName='SEGMENT_ANG';
bio(378).portIdx=0;
bio(378).dim=[2,1];
bio(378).sigWidth=2;
bio(378).sigAddress='&Position_controller_enable_disable_B.SEGMENT_ANG[0]';
bio(378).ndims=2;
bio(378).size=[];


bio(379).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Switch';
bio(379).sigName='';
bio(379).portIdx=0;
bio(379).dim=[2,1];
bio(379).sigWidth=2;
bio(379).sigAddress='&Position_controller_enable_disable_B.Switch_f[0]';
bio(379).ndims=2;
bio(379).size=[];


bio(380).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Switch1';
bio(380).sigName='';
bio(380).portIdx=0;
bio(380).dim=[2,1];
bio(380).sigWidth=2;
bio(380).sigAddress='&Position_controller_enable_disable_B.Switch1_i[0]';
bio(380).ndims=2;
bio(380).size=[];


bio(381).blkName='DataLogging/Create Task State Subsystem/Counter Free-Running/Increment Real World/FixPt Sum1';
bio(381).sigName='';
bio(381).portIdx=0;
bio(381).dim=[1,1];
bio(381).sigWidth=1;
bio(381).sigAddress='&Position_controller_enable_disable_B.FixPtSum1';
bio(381).ndims=2;
bio(381).size=[];


bio(382).blkName='DataLogging/Create Task State Subsystem/Counter Free-Running/Wrap To Zero/FixPt Switch';
bio(382).sigName='';
bio(382).portIdx=0;
bio(382).dim=[1,1];
bio(382).sigWidth=1;
bio(382).sigAddress='&Position_controller_enable_disable_B.FixPtSwitch';
bio(382).ndims=2;
bio(382).size=[];


bio(383).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Counter/Sum';
bio(383).sigName='';
bio(383).portIdx=0;
bio(383).dim=[1,1];
bio(383).sigWidth=1;
bio(383).sigAddress='&Position_controller_enable_disable_B.Sum_p';
bio(383).ndims=2;
bio(383).size=[];


bio(384).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Counter/Unit Delay';
bio(384).sigName='';
bio(384).portIdx=0;
bio(384).dim=[1,1];
bio(384).sigWidth=1;
bio(384).sigAddress='&Position_controller_enable_disable_B.UnitDelay_o';
bio(384).ndims=2;
bio(384).size=[];


bio(385).blkName='DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Counter Free-Running/Output';
bio(385).sigName='';
bio(385).portIdx=0;
bio(385).dim=[1,1];
bio(385).sigWidth=1;
bio(385).sigAddress='&Position_controller_enable_disable_B.Output_f';
bio(385).ndims=2;
bio(385).size=[];


bio(386).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Counter Free-Running/Output';
bio(386).sigName='';
bio(386).portIdx=0;
bio(386).dim=[1,1];
bio(386).sigWidth=1;
bio(386).sigAddress='&Position_controller_enable_disable_B.Output_m';
bio(386).ndims=2;
bio(386).size=[];


bio(387).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Read DPRAM/Data Type Conversion';
bio(387).sigName='';
bio(387).portIdx=0;
bio(387).dim=[1,1];
bio(387).sigWidth=1;
bio(387).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion_le';
bio(387).ndims=2;
bio(387).size=[];


bio(388).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Read DPRAM/Data Type Conversion1';
bio(388).sigName='';
bio(388).portIdx=0;
bio(388).dim=[1,1];
bio(388).sigWidth=1;
bio(388).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion1_g';
bio(388).ndims=2;
bio(388).size=[];


bio(389).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Read DPRAM/Data Type Conversion2';
bio(389).sigName='';
bio(389).portIdx=0;
bio(389).dim=[1,1];
bio(389).sigWidth=1;
bio(389).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion2_c';
bio(389).ndims=2;
bio(389).size=[];


bio(390).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Read DPRAM/Read';
bio(390).sigName='';
bio(390).portIdx=0;
bio(390).dim=[1,1];
bio(390).sigWidth=1;
bio(390).sigAddress='&Position_controller_enable_disable_B.Read';
bio(390).ndims=2;
bio(390).size=[];


bio(391).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Write DPRAM/Data Type Conversion';
bio(391).sigName='';
bio(391).portIdx=0;
bio(391).dim=[1,1];
bio(391).sigWidth=1;
bio(391).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion_k';
bio(391).ndims=2;
bio(391).size=[];


bio(392).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Write DPRAM/Data Type Conversion1';
bio(392).sigName='';
bio(392).portIdx=0;
bio(392).dim=[1,1];
bio(392).sigWidth=1;
bio(392).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion1_b';
bio(392).ndims=2;
bio(392).size=[];


bio(393).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Create timestamp';
bio(393).sigName='timestamp_out';
bio(393).portIdx=0;
bio(393).dim=[1,1];
bio(393).sigWidth=1;
bio(393).sigAddress='&Position_controller_enable_disable_B.sf_Createtimestamp.timestamp_out';
bio(393).ndims=2;
bio(393).size=[];


bio(394).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Data Type Conversion';
bio(394).sigName='';
bio(394).portIdx=0;
bio(394).dim=[6,1];
bio(394).sigWidth=6;
bio(394).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion_n2[0]';
bio(394).ndims=2;
bio(394).size=[];


bio(395).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Byte Reversal';
bio(395).sigName='';
bio(395).portIdx=0;
bio(395).dim=[6,1];
bio(395).sigWidth=6;
bio(395).sigAddress='&Position_controller_enable_disable_B.ByteReversal[0]';
bio(395).ndims=2;
bio(395).size=[];


bio(396).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Byte Reversal1';
bio(396).sigName='';
bio(396).portIdx=0;
bio(396).dim=[3,1];
bio(396).sigWidth=3;
bio(396).sigAddress='&Position_controller_enable_disable_B.ByteReversal1[0]';
bio(396).ndims=2;
bio(396).size=[];


bio(397).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Receive from Robot 1 Force Sensor/p1';
bio(397).sigName='';
bio(397).portIdx=0;
bio(397).dim=[36,1];
bio(397).sigWidth=36;
bio(397).sigAddress='&Position_controller_enable_disable_B.ReceivefromRobot1ForceSensor_o1[0]';
bio(397).ndims=2;
bio(397).size=[];


bio(398).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Receive from Robot 1 Force Sensor/p2';
bio(398).sigName='';
bio(398).portIdx=1;
bio(398).dim=[1,1];
bio(398).sigWidth=1;
bio(398).sigAddress='&Position_controller_enable_disable_B.ReceivefromRobot1ForceSensor_o2';
bio(398).ndims=2;
bio(398).size=[];


bio(399).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Unpack/p1';
bio(399).sigName='';
bio(399).portIdx=0;
bio(399).dim=[3,1];
bio(399).sigWidth=3;
bio(399).sigAddress='&Position_controller_enable_disable_B.Unpack_o1[0]';
bio(399).ndims=2;
bio(399).size=[];


bio(400).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Unpack/p2';
bio(400).sigName='';
bio(400).portIdx=1;
bio(400).dim=[6,1];
bio(400).sigWidth=6;
bio(400).sigAddress='&Position_controller_enable_disable_B.Unpack_o2[0]';
bio(400).ndims=2;
bio(400).size=[];


bio(401).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Switch';
bio(401).sigName='';
bio(401).portIdx=0;
bio(401).dim=[7,1];
bio(401).sigWidth=7;
bio(401).sigAddress='&Position_controller_enable_disable_B.Switch[0]';
bio(401).ndims=2;
bio(401).size=[];


bio(402).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Create timestamp';
bio(402).sigName='timestamp_out';
bio(402).portIdx=0;
bio(402).dim=[1,1];
bio(402).sigWidth=1;
bio(402).sigAddress='&Position_controller_enable_disable_B.sf_Createtimestamp_o.timestamp_out';
bio(402).ndims=2;
bio(402).size=[];


bio(403).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Type Conversion1';
bio(403).sigName='';
bio(403).portIdx=0;
bio(403).dim=[6,1];
bio(403).sigWidth=6;
bio(403).sigAddress='&Position_controller_enable_disable_B.DataTypeConversion1_ie[0]';
bio(403).ndims=2;
bio(403).size=[];


bio(404).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Byte Reversal';
bio(404).sigName='';
bio(404).portIdx=0;
bio(404).dim=[6,1];
bio(404).sigWidth=6;
bio(404).sigAddress='&Position_controller_enable_disable_B.ByteReversal_j[0]';
bio(404).ndims=2;
bio(404).size=[];


bio(405).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Byte Reversal1';
bio(405).sigName='';
bio(405).portIdx=0;
bio(405).dim=[3,1];
bio(405).sigWidth=3;
bio(405).sigAddress='&Position_controller_enable_disable_B.ByteReversal1_g[0]';
bio(405).ndims=2;
bio(405).size=[];


bio(406).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Receive from Robot 2 Force Sensor/p1';
bio(406).sigName='';
bio(406).portIdx=0;
bio(406).dim=[36,1];
bio(406).sigWidth=36;
bio(406).sigAddress='&Position_controller_enable_disable_B.ReceivefromRobot2ForceSensor_o1[0]';
bio(406).ndims=2;
bio(406).size=[];


bio(407).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Receive from Robot 2 Force Sensor/p2';
bio(407).sigName='';
bio(407).portIdx=1;
bio(407).dim=[1,1];
bio(407).sigWidth=1;
bio(407).sigAddress='&Position_controller_enable_disable_B.ReceivefromRobot2ForceSensor_o2';
bio(407).ndims=2;
bio(407).size=[];


bio(408).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Unpack1/p1';
bio(408).sigName='';
bio(408).portIdx=0;
bio(408).dim=[3,1];
bio(408).sigWidth=3;
bio(408).sigAddress='&Position_controller_enable_disable_B.Unpack1_o1[0]';
bio(408).ndims=2;
bio(408).size=[];


bio(409).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Unpack1/p2';
bio(409).sigName='';
bio(409).portIdx=1;
bio(409).dim=[6,1];
bio(409).sigWidth=6;
bio(409).sigAddress='&Position_controller_enable_disable_B.Unpack1_o2[0]';
bio(409).ndims=2;
bio(409).size=[];


bio(410).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Switch1';
bio(410).sigName='';
bio(410).portIdx=0;
bio(410).dim=[7,1];
bio(410).sigWidth=7;
bio(410).sigAddress='&Position_controller_enable_disable_B.Switch1[0]';
bio(410).ndims=2;
bio(410).size=[];


bio(411).blkName='Trajectory subsystem/Create_Trajectory/Enable_Disable_Controller/Detect Change/FixPt Relational Operator';
bio(411).sigName='';
bio(411).portIdx=0;
bio(411).dim=[1,1];
bio(411).sigWidth=1;
bio(411).sigAddress='&Position_controller_enable_disable_B.FixPtRelationalOperator';
bio(411).ndims=2;
bio(411).size=[];


bio(412).blkName='Trajectory subsystem/Create_Trajectory/Enable_Disable_Controller/Detect Change/Delay Input1';
bio(412).sigName='U(k-1)';
bio(412).portIdx=0;
bio(412).dim=[1,1];
bio(412).sigWidth=1;
bio(412).sigAddress='&Position_controller_enable_disable_B.Uk1_o';
bio(412).ndims=2;
bio(412).size=[];


bio(413).blkName='Trajectory subsystem/Create_Trajectory/Enable_Disable_Controller/Detect Change1/FixPt Relational Operator';
bio(413).sigName='';
bio(413).portIdx=0;
bio(413).dim=[1,1];
bio(413).sigWidth=1;
bio(413).sigAddress='&Position_controller_enable_disable_B.FixPtRelationalOperator_d';
bio(413).ndims=2;
bio(413).size=[];


bio(414).blkName='Trajectory subsystem/Create_Trajectory/Enable_Disable_Controller/Detect Change1/Delay Input1';
bio(414).sigName='U(k-1)';
bio(414).portIdx=0;
bio(414).dim=[1,1];
bio(414).sigWidth=1;
bio(414).sigAddress='&Position_controller_enable_disable_B.Uk1_mu';
bio(414).ndims=2;
bio(414).size=[];


bio(415).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Detect Increase/FixPt Relational Operator';
bio(415).sigName='';
bio(415).portIdx=0;
bio(415).dim=[1,1];
bio(415).sigWidth=1;
bio(415).sigAddress='&Position_controller_enable_disable_B.FixPtRelationalOperator_m';
bio(415).ndims=2;
bio(415).size=[];


bio(416).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Detect Increase/Delay Input1';
bio(416).sigName='U(k-1)';
bio(416).portIdx=0;
bio(416).dim=[1,1];
bio(416).sigWidth=1;
bio(416).sigAddress='&Position_controller_enable_disable_B.Uk1_g';
bio(416).ndims=2;
bio(416).size=[];


bio(417).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Discrete Derivative/Diff';
bio(417).sigName='';
bio(417).portIdx=0;
bio(417).dim=[2,1];
bio(417).sigWidth=2;
bio(417).sigAddress='&Position_controller_enable_disable_B.Diff[0]';
bio(417).ndims=2;
bio(417).size=[];


bio(418).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Discrete Derivative/TSamp';
bio(418).sigName='';
bio(418).portIdx=0;
bio(418).dim=[2,1];
bio(418).sigWidth=2;
bio(418).sigAddress='&Position_controller_enable_disable_B.TSamp[0]';
bio(418).ndims=2;
bio(418).size=[];


bio(419).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Discrete Derivative/UD';
bio(419).sigName='U(k-1)';
bio(419).portIdx=0;
bio(419).dim=[2,1];
bio(419).sigWidth=2;
bio(419).sigAddress='&Position_controller_enable_disable_B.Uk1_c[0]';
bio(419).ndims=2;
bio(419).size=[];


bio(420).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Discrete Derivative1/Diff';
bio(420).sigName='';
bio(420).portIdx=0;
bio(420).dim=[2,1];
bio(420).sigWidth=2;
bio(420).sigAddress='&Position_controller_enable_disable_B.Diff_f[0]';
bio(420).ndims=2;
bio(420).size=[];


bio(421).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Discrete Derivative1/TSamp';
bio(421).sigName='';
bio(421).portIdx=0;
bio(421).dim=[2,1];
bio(421).sigWidth=2;
bio(421).sigAddress='&Position_controller_enable_disable_B.TSamp_e[0]';
bio(421).ndims=2;
bio(421).size=[];


bio(422).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Discrete Derivative1/UD';
bio(422).sigName='U(k-1)';
bio(422).portIdx=0;
bio(422).dim=[2,1];
bio(422).sigWidth=2;
bio(422).sigAddress='&Position_controller_enable_disable_B.Uk1_md[0]';
bio(422).ndims=2;
bio(422).size=[];


bio(423).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Detect Increase/FixPt Relational Operator';
bio(423).sigName='';
bio(423).portIdx=0;
bio(423).dim=[1,1];
bio(423).sigWidth=1;
bio(423).sigAddress='&Position_controller_enable_disable_B.FixPtRelationalOperator_nq';
bio(423).ndims=2;
bio(423).size=[];


bio(424).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Detect Increase/Delay Input1';
bio(424).sigName='U(k-1)';
bio(424).portIdx=0;
bio(424).dim=[1,1];
bio(424).sigWidth=1;
bio(424).sigAddress='&Position_controller_enable_disable_B.Uk1_p';
bio(424).ndims=2;
bio(424).size=[];


bio(425).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Discrete Derivative/Diff';
bio(425).sigName='';
bio(425).portIdx=0;
bio(425).dim=[2,1];
bio(425).sigWidth=2;
bio(425).sigAddress='&Position_controller_enable_disable_B.Diff_i[0]';
bio(425).ndims=2;
bio(425).size=[];


bio(426).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Discrete Derivative/TSamp';
bio(426).sigName='';
bio(426).portIdx=0;
bio(426).dim=[2,1];
bio(426).sigWidth=2;
bio(426).sigAddress='&Position_controller_enable_disable_B.TSamp_m[0]';
bio(426).ndims=2;
bio(426).size=[];


bio(427).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Discrete Derivative/UD';
bio(427).sigName='U(k-1)';
bio(427).portIdx=0;
bio(427).dim=[2,1];
bio(427).sigWidth=2;
bio(427).sigAddress='&Position_controller_enable_disable_B.Uk1_mi[0]';
bio(427).ndims=2;
bio(427).size=[];


bio(428).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Discrete Derivative1/Diff';
bio(428).sigName='';
bio(428).portIdx=0;
bio(428).dim=[2,1];
bio(428).sigWidth=2;
bio(428).sigAddress='&Position_controller_enable_disable_B.Diff_fm[0]';
bio(428).ndims=2;
bio(428).size=[];


bio(429).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Discrete Derivative1/TSamp';
bio(429).sigName='';
bio(429).portIdx=0;
bio(429).dim=[2,1];
bio(429).sigWidth=2;
bio(429).sigAddress='&Position_controller_enable_disable_B.TSamp_h[0]';
bio(429).ndims=2;
bio(429).size=[];


bio(430).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Discrete Derivative1/UD';
bio(430).sigName='U(k-1)';
bio(430).portIdx=0;
bio(430).dim=[2,1];
bio(430).sigWidth=2;
bio(430).sigAddress='&Position_controller_enable_disable_B.Uk1_a[0]';
bio(430).ndims=2;
bio(430).size=[];


bio(431).blkName='DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Counter Free-Running/Increment Real World/FixPt Sum1';
bio(431).sigName='';
bio(431).portIdx=0;
bio(431).dim=[1,1];
bio(431).sigWidth=1;
bio(431).sigAddress='&Position_controller_enable_disable_B.FixPtSum1_j';
bio(431).ndims=2;
bio(431).size=[];


bio(432).blkName='DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Counter Free-Running/Wrap To Zero/FixPt Switch';
bio(432).sigName='';
bio(432).portIdx=0;
bio(432).dim=[1,1];
bio(432).sigWidth=1;
bio(432).sigAddress='&Position_controller_enable_disable_B.FixPtSwitch_n';
bio(432).ndims=2;
bio(432).size=[];


bio(433).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Counter Free-Running/Increment Real World/FixPt Sum1';
bio(433).sigName='';
bio(433).portIdx=0;
bio(433).dim=[1,1];
bio(433).sigWidth=1;
bio(433).sigAddress='&Position_controller_enable_disable_B.FixPtSum1_g';
bio(433).ndims=2;
bio(433).size=[];


bio(434).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Counter Free-Running/Wrap To Zero/FixPt Switch';
bio(434).sigName='';
bio(434).portIdx=0;
bio(434).dim=[1,1];
bio(434).sigWidth=1;
bio(434).sigAddress='&Position_controller_enable_disable_B.FixPtSwitch_a';
bio(434).ndims=2;
bio(434).size=[];


bio(435).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Detect Change/FixPt Relational Operator';
bio(435).sigName='';
bio(435).portIdx=0;
bio(435).dim=[1,1];
bio(435).sigWidth=1;
bio(435).sigAddress='&Position_controller_enable_disable_B.FixPtRelationalOperator_n';
bio(435).ndims=2;
bio(435).size=[];


bio(436).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Detect Change/Delay Input1';
bio(436).sigName='U(k-1)';
bio(436).portIdx=0;
bio(436).dim=[1,1];
bio(436).sigWidth=1;
bio(436).sigAddress='&Position_controller_enable_disable_B.Uk1';
bio(436).ndims=2;
bio(436).size=[];


bio(437).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Byte Reversal';
bio(437).sigName='';
bio(437).portIdx=0;
bio(437).dim=[1,1];
bio(437).sigWidth=1;
bio(437).sigAddress='&Position_controller_enable_disable_B.ByteReversal_d';
bio(437).ndims=2;
bio(437).size=[];


bio(438).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Byte Reversal1';
bio(438).sigName='';
bio(438).portIdx=0;
bio(438).dim=[1,1];
bio(438).sigWidth=1;
bio(438).sigAddress='&Position_controller_enable_disable_B.ByteReversal1_a';
bio(438).ndims=2;
bio(438).size=[];


bio(439).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Byte Reversal2';
bio(439).sigName='';
bio(439).portIdx=0;
bio(439).dim=[1,1];
bio(439).sigWidth=1;
bio(439).sigAddress='&Position_controller_enable_disable_B.ByteReversal2';
bio(439).ndims=2;
bio(439).size=[];


bio(440).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Pack';
bio(440).sigName='';
bio(440).portIdx=0;
bio(440).dim=[8,1];
bio(440).sigWidth=8;
bio(440).sigAddress='&Position_controller_enable_disable_B.Pack_h[0]';
bio(440).ndims=2;
bio(440).size=[];


bio(441).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Switch';
bio(441).sigName='';
bio(441).portIdx=0;
bio(441).dim=[1,1];
bio(441).sigWidth=1;
bio(441).sigAddress='&Position_controller_enable_disable_B.Switch_m';
bio(441).ndims=2;
bio(441).size=[];


bio(442).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Byte Reversal';
bio(442).sigName='';
bio(442).portIdx=0;
bio(442).dim=[1,1];
bio(442).sigWidth=1;
bio(442).sigAddress='&Position_controller_enable_disable_B.ByteReversal_l';
bio(442).ndims=2;
bio(442).size=[];


bio(443).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Byte Reversal1';
bio(443).sigName='';
bio(443).portIdx=0;
bio(443).dim=[1,1];
bio(443).sigWidth=1;
bio(443).sigAddress='&Position_controller_enable_disable_B.ByteReversal1_i';
bio(443).ndims=2;
bio(443).size=[];


bio(444).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Byte Reversal2';
bio(444).sigName='';
bio(444).portIdx=0;
bio(444).dim=[1,1];
bio(444).sigWidth=1;
bio(444).sigAddress='&Position_controller_enable_disable_B.ByteReversal2_d';
bio(444).ndims=2;
bio(444).size=[];


bio(445).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Pack';
bio(445).sigName='';
bio(445).portIdx=0;
bio(445).dim=[8,1];
bio(445).sigWidth=8;
bio(445).sigAddress='&Position_controller_enable_disable_B.Pack_g[0]';
bio(445).ndims=2;
bio(445).size=[];


bio(446).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Switch';
bio(446).sigName='';
bio(446).portIdx=0;
bio(446).dim=[1,1];
bio(446).sigWidth=1;
bio(446).sigAddress='&Position_controller_enable_disable_B.Switch_o';
bio(446).ndims=2;
bio(446).size=[];


bio(447).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Detect Change/FixPt Relational Operator';
bio(447).sigName='';
bio(447).portIdx=0;
bio(447).dim=[1,1];
bio(447).sigWidth=1;
bio(447).sigAddress='&Position_controller_enable_disable_B.FixPtRelationalOperator_k';
bio(447).ndims=2;
bio(447).size=[];


bio(448).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Detect Change/Delay Input1';
bio(448).sigName='U(k-1)';
bio(448).portIdx=0;
bio(448).dim=[1,1];
bio(448).sigWidth=1;
bio(448).sigAddress='&Position_controller_enable_disable_B.Uk1_m';
bio(448).ndims=2;
bio(448).size=[];


function len = getlenBIO
len = 448;

