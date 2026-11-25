function bio=dynamic_textbio
bio = [];
bio(1).blkName='VelocityVCODE/p1';
bio(1).sigName='VCODE_out';
bio(1).portIdx=0;
bio(1).dim=[1,70];
bio(1).sigWidth=70;
bio(1).sigAddress='&dynamic_text_B.VCODE_out[0]';
bio(1).ndims=2;
bio(1).size=[];

bio(getlenBIO) = bio(1);

bio(2).blkName='VelocityVCODE/p2';
bio(2).sigName='fingerTipSpeed';
bio(2).portIdx=1;
bio(2).dim=[1,1];
bio(2).sigWidth=1;
bio(2).sigAddress='&dynamic_text_B.fingerTipSpeed';
bio(2).ndims=2;
bio(2).size=[];


bio(3).blkName='Matrix Concatenate';
bio(3).sigName='';
bio(3).portIdx=0;
bio(3).dim=[3,70];
bio(3).sigWidth=210;
bio(3).sigAddress='&dynamic_text_B.MatrixConcatenate[0]';
bio(3).ndims=2;
bio(3).size=[];


bio(4).blkName='GUI Control/Library Patch Version';
bio(4).sigName='';
bio(4).portIdx=0;
bio(4).dim=[1,1];
bio(4).sigWidth=1;
bio(4).sigAddress='&dynamic_text_B.LibraryPatchVersion';
bio(4).ndims=2;
bio(4).size=[];


bio(5).blkName='GUI Control/Library Version';
bio(5).sigName='';
bio(5).portIdx=0;
bio(5).dim=[1,1];
bio(5).sigWidth=1;
bio(5).sigAddress='&dynamic_text_B.LibraryVersion';
bio(5).ndims=2;
bio(5).size=[];


bio(6).blkName='GUI Control/Next Block';
bio(6).sigName='';
bio(6).portIdx=0;
bio(6).dim=[1,1];
bio(6).sigWidth=1;
bio(6).sigAddress='&dynamic_text_B.NextBlock';
bio(6).ndims=2;
bio(6).size=[];


bio(7).blkName='GUI Control/Pause Type';
bio(7).sigName='';
bio(7).portIdx=0;
bio(7).dim=[1,1];
bio(7).sigWidth=1;
bio(7).sigAddress='&dynamic_text_B.PauseType';
bio(7).ndims=2;
bio(7).size=[];


bio(8).blkName='GUI Control/Task Version';
bio(8).sigName='';
bio(8).portIdx=0;
bio(8).dim=[1,1];
bio(8).sigWidth=1;
bio(8).sigAddress='&dynamic_text_B.TaskVersion';
bio(8).ndims=2;
bio(8).size=[];


bio(9).blkName='GUI Control/Use Task Protocol Block Sequence Flag';
bio(9).sigName='';
bio(9).portIdx=0;
bio(9).dim=[1,1];
bio(9).sigWidth=1;
bio(9).sigAddress='&dynamic_text_B.UseTaskProtocolBlockSequenceFlag';
bio(9).ndims=2;
bio(9).size=[];


bio(10).blkName='GUI Control/dlm build time';
bio(10).sigName='';
bio(10).portIdx=0;
bio(10).dim=[1,1];
bio(10).sigWidth=1;
bio(10).sigAddress='&dynamic_text_B.dlmbuildtime';
bio(10).ndims=2;
bio(10).size=[];


bio(11).blkName='GUI Control/xPC Version';
bio(11).sigName='';
bio(11).portIdx=0;
bio(11).dim=[1,1];
bio(11).sigWidth=1;
bio(11).sigAddress='&dynamic_text_B.xPCVersion';
bio(11).ndims=2;
bio(11).size=[];


bio(12).blkName='GUI Control/Convert';
bio(12).sigName='';
bio(12).portIdx=0;
bio(12).dim=[32,25];
bio(12).sigWidth=800;
bio(12).sigAddress='&dynamic_text_B.Convert[0]';
bio(12).ndims=2;
bio(12).size=[];


bio(13).blkName='GUI Control/Convert1';
bio(13).sigName='';
bio(13).portIdx=0;
bio(13).dim=[100,50];
bio(13).sigWidth=5000;
bio(13).sigAddress='&dynamic_text_B.Convert1_n[0]';
bio(13).ndims=2;
bio(13).size=[];


bio(14).blkName='GUI Control/Convert10';
bio(14).sigName='';
bio(14).portIdx=0;
bio(14).dim=[1,2];
bio(14).sigWidth=2;
bio(14).sigAddress='&dynamic_text_B.Convert10[0]';
bio(14).ndims=2;
bio(14).size=[];


bio(15).blkName='GUI Control/Convert11';
bio(15).sigName='';
bio(15).portIdx=0;
bio(15).dim=[5,2];
bio(15).sigWidth=10;
bio(15).sigAddress='&dynamic_text_B.Convert11[0]';
bio(15).ndims=2;
bio(15).size=[];


bio(16).blkName='GUI Control/Convert12';
bio(16).sigName='';
bio(16).portIdx=0;
bio(16).dim=[1,1];
bio(16).sigWidth=1;
bio(16).sigAddress='&dynamic_text_B.Convert12';
bio(16).ndims=2;
bio(16).size=[];


bio(17).blkName='GUI Control/Convert13';
bio(17).sigName='';
bio(17).portIdx=0;
bio(17).dim=[1,3];
bio(17).sigWidth=3;
bio(17).sigAddress='&dynamic_text_B.Convert13[0]';
bio(17).ndims=2;
bio(17).size=[];


bio(18).blkName='GUI Control/Convert14';
bio(18).sigName='';
bio(18).portIdx=0;
bio(18).dim=[1,2];
bio(18).sigWidth=2;
bio(18).sigAddress='&dynamic_text_B.Convert14[0]';
bio(18).ndims=2;
bio(18).size=[];


bio(19).blkName='GUI Control/Convert15';
bio(19).sigName='';
bio(19).portIdx=0;
bio(19).dim=[1,1];
bio(19).sigWidth=1;
bio(19).sigAddress='&dynamic_text_B.Convert15';
bio(19).ndims=2;
bio(19).size=[];


bio(20).blkName='GUI Control/Convert16';
bio(20).sigName='';
bio(20).portIdx=0;
bio(20).dim=[1,1];
bio(20).sigWidth=1;
bio(20).sigAddress='&dynamic_text_B.Convert16';
bio(20).ndims=2;
bio(20).size=[];


bio(21).blkName='GUI Control/Convert17';
bio(21).sigName='';
bio(21).portIdx=0;
bio(21).dim=[1,1];
bio(21).sigWidth=1;
bio(21).sigAddress='&dynamic_text_B.Convert17';
bio(21).ndims=2;
bio(21).size=[];


bio(22).blkName='GUI Control/Convert18';
bio(22).sigName='';
bio(22).portIdx=0;
bio(22).dim=[1,1];
bio(22).sigWidth=1;
bio(22).sigAddress='&dynamic_text_B.Convert18';
bio(22).ndims=2;
bio(22).size=[];


bio(23).blkName='GUI Control/Convert19';
bio(23).sigName='';
bio(23).portIdx=0;
bio(23).dim=[1,1];
bio(23).sigWidth=1;
bio(23).sigAddress='&dynamic_text_B.Convert19_o';
bio(23).ndims=2;
bio(23).size=[];


bio(24).blkName='GUI Control/Convert2';
bio(24).sigName='';
bio(24).portIdx=0;
bio(24).dim=[20,20];
bio(24).sigWidth=400;
bio(24).sigAddress='&dynamic_text_B.Convert2_m[0]';
bio(24).ndims=2;
bio(24).size=[];


bio(25).blkName='GUI Control/Convert20';
bio(25).sigName='';
bio(25).portIdx=0;
bio(25).dim=[1,1];
bio(25).sigWidth=1;
bio(25).sigAddress='&dynamic_text_B.Convert20';
bio(25).ndims=2;
bio(25).size=[];


bio(26).blkName='GUI Control/Convert21';
bio(26).sigName='';
bio(26).portIdx=0;
bio(26).dim=[1,1];
bio(26).sigWidth=1;
bio(26).sigAddress='&dynamic_text_B.Convert21';
bio(26).ndims=2;
bio(26).size=[];


bio(27).blkName='GUI Control/Convert22';
bio(27).sigName='';
bio(27).portIdx=0;
bio(27).dim=[1,1];
bio(27).sigWidth=1;
bio(27).sigAddress='&dynamic_text_B.Convert22';
bio(27).ndims=2;
bio(27).size=[];


bio(28).blkName='GUI Control/Convert23';
bio(28).sigName='';
bio(28).portIdx=0;
bio(28).dim=[1,1];
bio(28).sigWidth=1;
bio(28).sigAddress='&dynamic_text_B.Convert23';
bio(28).ndims=2;
bio(28).size=[];


bio(29).blkName='GUI Control/Convert24';
bio(29).sigName='';
bio(29).portIdx=0;
bio(29).dim=[1,1];
bio(29).sigWidth=1;
bio(29).sigAddress='&dynamic_text_B.Convert24';
bio(29).ndims=2;
bio(29).size=[];


bio(30).blkName='GUI Control/Convert3';
bio(30).sigName='';
bio(30).portIdx=0;
bio(30).dim=[100,50];
bio(30).sigWidth=5000;
bio(30).sigAddress='&dynamic_text_B.Convert3_p[0]';
bio(30).ndims=2;
bio(30).size=[];


bio(31).blkName='GUI Control/Convert4';
bio(31).sigName='';
bio(31).portIdx=0;
bio(31).dim=[50,500];
bio(31).sigWidth=25000;
bio(31).sigAddress='&dynamic_text_B.Convert4_h[0]';
bio(31).ndims=2;
bio(31).size=[];


bio(32).blkName='GUI Control/Convert5';
bio(32).sigName='';
bio(32).portIdx=0;
bio(32).dim=[1000,2];
bio(32).sigWidth=2000;
bio(32).sigAddress='&dynamic_text_B.Convert5[0]';
bio(32).ndims=2;
bio(32).size=[];


bio(33).blkName='GUI Control/Convert6';
bio(33).sigName='';
bio(33).portIdx=0;
bio(33).dim=[50,1];
bio(33).sigWidth=50;
bio(33).sigAddress='&dynamic_text_B.Convert6[0]';
bio(33).ndims=2;
bio(33).size=[];


bio(34).blkName='GUI Control/Convert7';
bio(34).sigName='';
bio(34).portIdx=0;
bio(34).dim=[1,1];
bio(34).sigWidth=1;
bio(34).sigAddress='&dynamic_text_B.Convert7';
bio(34).ndims=2;
bio(34).size=[];


bio(35).blkName='GUI Control/Convert8';
bio(35).sigName='';
bio(35).portIdx=0;
bio(35).dim=[1,1];
bio(35).sigWidth=1;
bio(35).sigAddress='&dynamic_text_B.Convert8';
bio(35).ndims=2;
bio(35).size=[];


bio(36).blkName='GUI Control/Convert9';
bio(36).sigName='';
bio(36).portIdx=0;
bio(36).dim=[1,2];
bio(36).sigWidth=2;
bio(36).sigAddress='&dynamic_text_B.Convert9[0]';
bio(36).ndims=2;
bio(36).size=[];


bio(37).blkName='GUI Control/MinMax';
bio(37).sigName='';
bio(37).portIdx=0;
bio(37).dim=[1,1];
bio(37).sigWidth=1;
bio(37).sigAddress='&dynamic_text_B.MinMax';
bio(37).ndims=2;
bio(37).size=[];


bio(38).blkName='GUI Control/TP Selector';
bio(38).sigName='';
bio(38).portIdx=0;
bio(38).dim=[1,50];
bio(38).sigWidth=50;
bio(38).sigAddress='&dynamic_text_B.TPSelector[0]';
bio(38).ndims=2;
bio(38).size=[];


bio(39).blkName='Hand_Feedback/FeedFwdArm';
bio(39).sigName='VCODES_out';
bio(39).portIdx=0;
bio(39).dim=[2,70];
bio(39).sigWidth=140;
bio(39).sigAddress='&dynamic_text_B.VCODES_out[0]';
bio(39).ndims=2;
bio(39).size=[];


bio(40).blkName='Hand_Feedback/Matrix Concatenation';
bio(40).sigName='';
bio(40).portIdx=0;
bio(40).dim=[2,70];
bio(40).sigWidth=140;
bio(40).sigAddress='&dynamic_text_B.MatrixConcatenation[0]';
bio(40).ndims=2;
bio(40).size=[];


bio(41).blkName='Hand_Feedback/Reshape';
bio(41).sigName='';
bio(41).portIdx=0;
bio(41).dim=[1,70];
bio(41).sigWidth=70;
bio(41).sigAddress='&dynamic_text_B.Reshape[0]';
bio(41).ndims=2;
bio(41).size=[];


bio(42).blkName='Hand_Feedback/Reshape1';
bio(42).sigName='';
bio(42).portIdx=0;
bio(42).dim=[1,70];
bio(42).sigWidth=70;
bio(42).sigAddress='&dynamic_text_B.Reshape1[0]';
bio(42).ndims=2;
bio(42).size=[];


bio(43).blkName='Process_Video_CMD/EML/p1';
bio(43).sigName='VCODEs_out';
bio(43).portIdx=0;
bio(43).dim=[59,70];
bio(43).sigWidth=4130;
bio(43).sigAddress='&dynamic_text_B.VCODEs_out[0]';
bio(43).ndims=2;
bio(43).size=[];


bio(44).blkName='Process_Video_CMD/EML/p2';
bio(44).sigName='num_used_VCODEs';
bio(44).portIdx=1;
bio(44).dim=[1,1];
bio(44).sigWidth=1;
bio(44).sigAddress='&dynamic_text_B.num_used_VCODEs';
bio(44).ndims=2;
bio(44).size=[];


bio(45).blkName='Process_Video_CMD/Convert';
bio(45).sigName='';
bio(45).portIdx=0;
bio(45).dim=[1,1];
bio(45).sigWidth=1;
bio(45).sigAddress='&dynamic_text_B.Convert_p';
bio(45).ndims=2;
bio(45).size=[];


bio(46).blkName='Process_Video_CMD/Convert1';
bio(46).sigName='';
bio(46).portIdx=0;
bio(46).dim=[1,1];
bio(46).sigWidth=1;
bio(46).sigAddress='&dynamic_text_B.Convert1_k';
bio(46).ndims=2;
bio(46).size=[];


bio(47).blkName='Process_Video_CMD/VCODE_Buffer';
bio(47).sigName='';
bio(47).portIdx=0;
bio(47).dim=[725,1];
bio(47).sigWidth=725;
bio(47).sigAddress='&dynamic_text_B.VCODE_Buffer[0]';
bio(47).ndims=2;
bio(47).size=[];


bio(48).blkName='Process_Video_CMD/Byte Reversal';
bio(48).sigName='';
bio(48).portIdx=0;
bio(48).dim=[725,1];
bio(48).sigWidth=725;
bio(48).sigAddress='&dynamic_text_B.ByteReversal_m[0]';
bio(48).ndims=2;
bio(48).size=[];


bio(49).blkName='Process_Video_CMD/Pack';
bio(49).sigName='';
bio(49).portIdx=0;
bio(49).dim=[2900,1];
bio(49).sigWidth=2900;
bio(49).sigAddress='&dynamic_text_B.Pack_c[0]';
bio(49).ndims=2;
bio(49).size=[];


bio(50).blkName='Process_Video_CMD/Receive/p1';
bio(50).sigName='';
bio(50).portIdx=0;
bio(50).dim=[4,1];
bio(50).sigWidth=4;
bio(50).sigAddress='&dynamic_text_B.Receive_o1_l[0]';
bio(50).ndims=2;
bio(50).size=[];


bio(51).blkName='Process_Video_CMD/Receive/p2';
bio(51).sigName='';
bio(51).portIdx=1;
bio(51).dim=[1,1];
bio(51).sigWidth=1;
bio(51).sigAddress='&dynamic_text_B.Receive_o2_e';
bio(51).ndims=2;
bio(51).size=[];


bio(52).blkName='Process_Video_CMD/Unpack';
bio(52).sigName='';
bio(52).portIdx=0;
bio(52).dim=[1,1];
bio(52).sigWidth=1;
bio(52).sigAddress='&dynamic_text_B.Unpack_c';
bio(52).ndims=2;
bio(52).size=[];


bio(53).blkName='Show_Target_With_Label/Embedded MATLAB Function';
bio(53).sigName='VCODE';
bio(53).portIdx=0;
bio(53).dim=[1,70];
bio(53).sigWidth=70;
bio(53).sigAddress='&dynamic_text_B.VCODE[0]';
bio(53).ndims=2;
bio(53).size=[];


bio(54).blkName='Show_Target_With_Label/Matrix Concatenation';
bio(54).sigName='';
bio(54).portIdx=0;
bio(54).dim=[5,11];
bio(54).sigWidth=55;
bio(54).sigAddress='&dynamic_text_B.MatrixConcatenation1[0]';
bio(54).ndims=2;
bio(54).size=[];


bio(55).blkName='Show_Target_With_Label/Matrix Concatenation1';
bio(55).sigName='';
bio(55).portIdx=0;
bio(55).dim=[5,11];
bio(55).sigWidth=55;
bio(55).sigAddress='&dynamic_text_B.MatrixConcatenation1[0]';
bio(55).ndims=2;
bio(55).size=[];


bio(56).blkName='Show_Target_With_Label/padder';
bio(56).sigName='';
bio(56).portIdx=0;
bio(56).dim=[5,11];
bio(56).sigWidth=55;
bio(56).sigAddress='&dynamic_text_B.MatrixConcatenation1[0]';
bio(56).ndims=2;
bio(56).size=[];


bio(57).blkName='Show_Target_With_Label/Selector';
bio(57).sigName='';
bio(57).portIdx=0;
bio(57).dim=[1,25];
bio(57).sigWidth=25;
bio(57).sigAddress='&dynamic_text_B.Selector[0]';
bio(57).ndims=2;
bio(57).size=[];


bio(58).blkName='DataLogging/Create Analog Inputs Subsystem/Analog Data';
bio(58).sigName='';
bio(58).portIdx=0;
bio(58).dim=[1,1];
bio(58).sigWidth=1;
bio(58).sigAddress='&dynamic_text_B.AnalogData';
bio(58).ndims=2;
bio(58).size=[];


bio(59).blkName='DataLogging/Create Analog Inputs Subsystem/Analog Data Width';
bio(59).sigName='';
bio(59).portIdx=0;
bio(59).dim=[1,1];
bio(59).sigWidth=1;
bio(59).sigAddress='&dynamic_text_B.AnalogDataWidth';
bio(59).ndims=2;
bio(59).size=[];


bio(60).blkName='DataLogging/Create Analog Inputs Subsystem/Rate Transition9';
bio(60).sigName='';
bio(60).portIdx=0;
bio(60).dim=[2,1];
bio(60).sigWidth=2;
bio(60).sigAddress='&dynamic_text_B.RateTransition9_b[0]';
bio(60).ndims=2;
bio(60).size=[];


bio(61).blkName='DataLogging/Create Analog Inputs Subsystem/Subtract';
bio(61).sigName='';
bio(61).portIdx=0;
bio(61).dim=[1,1];
bio(61).sigWidth=1;
bio(61).sigAddress='&dynamic_text_B.Subtract_h';
bio(61).ndims=2;
bio(61).size=[];


bio(62).blkName='DataLogging/Create Analog Inputs Subsystem/Width';
bio(62).sigName='';
bio(62).portIdx=0;
bio(62).dim=[1,1];
bio(62).sigWidth=1;
bio(62).sigAddress='&dynamic_text_B.Width_a';
bio(62).ndims=2;
bio(62).size=[];


bio(63).blkName='DataLogging/Create Custom Data Subsystem/Custom Data';
bio(63).sigName='';
bio(63).portIdx=0;
bio(63).dim=[4,1];
bio(63).sigWidth=4;
bio(63).sigAddress='&dynamic_text_B.CustomData[0]';
bio(63).ndims=2;
bio(63).size=[];


bio(64).blkName='DataLogging/Create Custom Data Subsystem/Custom Data Width';
bio(64).sigName='';
bio(64).portIdx=0;
bio(64).dim=[1,1];
bio(64).sigWidth=1;
bio(64).sigAddress='&dynamic_text_B.CustomDataWidth';
bio(64).ndims=2;
bio(64).size=[];


bio(65).blkName='DataLogging/Create Custom Data Subsystem/Rate Transition9';
bio(65).sigName='';
bio(65).portIdx=0;
bio(65).dim=[5,1];
bio(65).sigWidth=5;
bio(65).sigAddress='&dynamic_text_B.RateTransition9_i[0]';
bio(65).ndims=2;
bio(65).size=[];


bio(66).blkName='DataLogging/Create Custom Data Subsystem/Width';
bio(66).sigName='';
bio(66).portIdx=0;
bio(66).dim=[1,1];
bio(66).sigWidth=1;
bio(66).sigAddress='&dynamic_text_B.Width_g';
bio(66).ndims=2;
bio(66).size=[];


bio(67).blkName='DataLogging/Create Event Codes Subsystem/Event Codes';
bio(67).sigName='';
bio(67).portIdx=0;
bio(67).dim=[1,1];
bio(67).sigWidth=1;
bio(67).sigAddress='&dynamic_text_B.EventCodes';
bio(67).ndims=2;
bio(67).size=[];


bio(68).blkName='DataLogging/Create Event Codes Subsystem/Number of Event Codes';
bio(68).sigName='';
bio(68).portIdx=0;
bio(68).dim=[1,1];
bio(68).sigWidth=1;
bio(68).sigAddress='&dynamic_text_B.NumberofEventCodes';
bio(68).ndims=2;
bio(68).size=[];


bio(69).blkName='DataLogging/Create Event Codes Subsystem/Rate Transition9';
bio(69).sigName='';
bio(69).portIdx=0;
bio(69).dim=[2,1];
bio(69).sigWidth=2;
bio(69).sigAddress='&dynamic_text_B.RateTransition9[0]';
bio(69).ndims=2;
bio(69).size=[];


bio(70).blkName='DataLogging/Create Event Codes Subsystem/Subtract';
bio(70).sigName='';
bio(70).portIdx=0;
bio(70).dim=[1,1];
bio(70).sigWidth=1;
bio(70).sigAddress='&dynamic_text_B.Subtract';
bio(70).ndims=2;
bio(70).size=[];


bio(71).blkName='DataLogging/Create Event Codes Subsystem/Width';
bio(71).sigName='';
bio(71).portIdx=0;
bio(71).dim=[1,1];
bio(71).sigWidth=1;
bio(71).sigAddress='&dynamic_text_B.Width';
bio(71).ndims=2;
bio(71).size=[];


bio(72).blkName='DataLogging/Create KINARM Data Subsystem/Arm Kinematics';
bio(72).sigName='';
bio(72).portIdx=0;
bio(72).dim=[1,55];
bio(72).sigWidth=55;
bio(72).sigAddress='&dynamic_text_B.ArmKinematics[0]';
bio(72).ndims=2;
bio(72).size=[];


bio(73).blkName='DataLogging/Create KINARM Data Subsystem/Kinarm Data Width';
bio(73).sigName='';
bio(73).portIdx=0;
bio(73).dim=[1,1];
bio(73).sigWidth=1;
bio(73).sigAddress='&dynamic_text_B.KinarmDataWidth';
bio(73).ndims=2;
bio(73).size=[];


bio(74).blkName='DataLogging/Create KINARM Data Subsystem/Rate Transition4';
bio(74).sigName='';
bio(74).portIdx=0;
bio(74).dim=[1,56];
bio(74).sigWidth=56;
bio(74).sigAddress='&dynamic_text_B.RateTransition4[0]';
bio(74).ndims=2;
bio(74).size=[];


bio(75).blkName='DataLogging/Create KINARM Data Subsystem/Select Arm Data';
bio(75).sigName='';
bio(75).portIdx=0;
bio(75).dim=[2,17];
bio(75).sigWidth=34;
bio(75).sigAddress='&dynamic_text_B.SelectArmData[0]';
bio(75).ndims=2;
bio(75).size=[];


bio(76).blkName='DataLogging/Create KINARM Data Subsystem/Select Arm1';
bio(76).sigName='';
bio(76).portIdx=0;
bio(76).dim=[1,17];
bio(76).sigWidth=17;
bio(76).sigAddress='&dynamic_text_B.SelectArm1[0]';
bio(76).ndims=2;
bio(76).size=[];


bio(77).blkName='DataLogging/Create KINARM Data Subsystem/Select Arm2';
bio(77).sigName='';
bio(77).portIdx=0;
bio(77).dim=[1,17];
bio(77).sigWidth=17;
bio(77).sigAddress='&dynamic_text_B.SelectArm2[0]';
bio(77).ndims=2;
bio(77).size=[];


bio(78).blkName='DataLogging/Create KINARM Data Subsystem/Width';
bio(78).sigName='';
bio(78).portIdx=0;
bio(78).dim=[1,1];
bio(78).sigWidth=1;
bio(78).sigAddress='&dynamic_text_B.Width_d';
bio(78).ndims=2;
bio(78).size=[];


bio(79).blkName='DataLogging/Create Task State Subsystem/Button Status';
bio(79).sigName='';
bio(79).portIdx=0;
bio(79).dim=[1,1];
bio(79).sigWidth=1;
bio(79).sigAddress='&dynamic_text_B.ButtonStatus';
bio(79).ndims=2;
bio(79).size=[];


bio(80).blkName='DataLogging/Create Task State Subsystem/Current Block Index';
bio(80).sigName='';
bio(80).portIdx=0;
bio(80).dim=[1,1];
bio(80).sigWidth=1;
bio(80).sigAddress='&dynamic_text_B.CurrentBlockIndex';
bio(80).ndims=2;
bio(80).size=[];


bio(81).blkName='DataLogging/Create Task State Subsystem/Current Block Number in Set';
bio(81).sigName='';
bio(81).portIdx=0;
bio(81).dim=[1,1];
bio(81).sigWidth=1;
bio(81).sigAddress='&dynamic_text_B.CurrentBlockNumberinSet';
bio(81).ndims=2;
bio(81).size=[];


bio(82).blkName='DataLogging/Create Task State Subsystem/Current TP Index';
bio(82).sigName='';
bio(82).portIdx=0;
bio(82).dim=[1,1];
bio(82).sigWidth=1;
bio(82).sigAddress='&dynamic_text_B.CurrentTPIndex';
bio(82).ndims=2;
bio(82).size=[];


bio(83).blkName='DataLogging/Create Task State Subsystem/Current Trial Number in Block';
bio(83).sigName='';
bio(83).portIdx=0;
bio(83).dim=[1,1];
bio(83).sigWidth=1;
bio(83).sigAddress='&dynamic_text_B.CurrentTrialNumberinBlock';
bio(83).ndims=2;
bio(83).size=[];


bio(84).blkName='DataLogging/Create Task State Subsystem/Current Trial Number in Set';
bio(84).sigName='';
bio(84).portIdx=0;
bio(84).dim=[1,1];
bio(84).sigWidth=1;
bio(84).sigAddress='&dynamic_text_B.CurrentTrialNumberinSet';
bio(84).ndims=2;
bio(84).size=[];


bio(85).blkName='DataLogging/Create Task State Subsystem/Last Frame Acknowledged';
bio(85).sigName='';
bio(85).portIdx=0;
bio(85).dim=[1,1];
bio(85).sigWidth=1;
bio(85).sigAddress='&dynamic_text_B.LastFrameAcknowledged';
bio(85).ndims=2;
bio(85).size=[];


bio(86).blkName='DataLogging/Create Task State Subsystem/Last Frame Sent';
bio(86).sigName='';
bio(86).portIdx=0;
bio(86).dim=[1,1];
bio(86).sigWidth=1;
bio(86).sigAddress='&dynamic_text_B.LastFrameSent';
bio(86).ndims=2;
bio(86).size=[];


bio(87).blkName='DataLogging/Create Task State Subsystem/Logging Enable';
bio(87).sigName='';
bio(87).portIdx=0;
bio(87).dim=[1,1];
bio(87).sigWidth=1;
bio(87).sigAddress='&dynamic_text_B.LoggingEnable';
bio(87).ndims=2;
bio(87).size=[];


bio(88).blkName='DataLogging/Create Task State Subsystem/Run Status';
bio(88).sigName='';
bio(88).portIdx=0;
bio(88).dim=[1,1];
bio(88).sigWidth=1;
bio(88).sigAddress='&dynamic_text_B.RunStatus';
bio(88).ndims=2;
bio(88).size=[];


bio(89).blkName='DataLogging/Create Task State Subsystem/Servo update count';
bio(89).sigName='';
bio(89).portIdx=0;
bio(89).dim=[1,1];
bio(89).sigWidth=1;
bio(89).sigAddress='&dynamic_text_B.Servoupdatecount';
bio(89).ndims=2;
bio(89).size=[];


bio(90).blkName='DataLogging/Create Task State Subsystem/Task Control Button';
bio(90).sigName='';
bio(90).portIdx=0;
bio(90).dim=[1,1];
bio(90).sigWidth=1;
bio(90).sigAddress='&dynamic_text_B.TaskControlButton';
bio(90).ndims=2;
bio(90).size=[];


bio(91).blkName='DataLogging/Create Task State Subsystem/Timestamp';
bio(91).sigName='';
bio(91).portIdx=0;
bio(91).dim=[1,1];
bio(91).sigWidth=1;
bio(91).sigAddress='&dynamic_text_B.Timestamp';
bio(91).ndims=2;
bio(91).size=[];


bio(92).blkName='DataLogging/Create Task State Subsystem/Product';
bio(92).sigName='';
bio(92).portIdx=0;
bio(92).dim=[1,1];
bio(92).sigWidth=1;
bio(92).sigAddress='&dynamic_text_B.Product_g';
bio(92).ndims=2;
bio(92).size=[];


bio(93).blkName='DataLogging/Create Task State Subsystem/Rate Transition';
bio(93).sigName='';
bio(93).portIdx=0;
bio(93).dim=[12,1];
bio(93).sigWidth=12;
bio(93).sigAddress='&dynamic_text_B.RateTransition[0]';
bio(93).ndims=2;
bio(93).size=[];


bio(94).blkName='DataLogging/Create Task State Subsystem/Select Calibration Button Bitfield';
bio(94).sigName='';
bio(94).portIdx=0;
bio(94).dim=[1,1];
bio(94).sigWidth=1;
bio(94).sigAddress='&dynamic_text_B.SelectCalibrationButtonBitfield';
bio(94).ndims=2;
bio(94).size=[];


bio(95).blkName='DataLogging/Create Task State Subsystem/Select servo update count';
bio(95).sigName='';
bio(95).portIdx=0;
bio(95).dim=[1,1];
bio(95).sigWidth=1;
bio(95).sigAddress='&dynamic_text_B.Selectservoupdatecount';
bio(95).ndims=2;
bio(95).size=[];


bio(96).blkName='DataLogging/Keep alive/Pack';
bio(96).sigName='';
bio(96).portIdx=0;
bio(96).dim=[40,1];
bio(96).sigWidth=40;
bio(96).sigAddress='&dynamic_text_B.Pack[0]';
bio(96).ndims=2;
bio(96).size=[];


bio(97).blkName='DataLogging/Network Transfer Subsystem/Send Control Machine/p1';
bio(97).sigName='data_out';
bio(97).portIdx=0;
bio(97).dim=[306,1];
bio(97).sigWidth=306;
bio(97).sigAddress='&dynamic_text_B.data_out[0]';
bio(97).ndims=2;
bio(97).size=[];


bio(98).blkName='DataLogging/Network Transfer Subsystem/Send Control Machine/p2';
bio(98).sigName='queue_size';
bio(98).portIdx=1;
bio(98).dim=[1,1];
bio(98).sigWidth=1;
bio(98).sigAddress='&dynamic_text_B.queue_size';
bio(98).ndims=2;
bio(98).size=[];


bio(99).blkName='DataLogging/Network Transfer Subsystem/Send Control Machine/p3';
bio(99).sigName='total_timeouts';
bio(99).portIdx=2;
bio(99).dim=[1,1];
bio(99).sigWidth=1;
bio(99).sigAddress='&dynamic_text_B.total_timeouts';
bio(99).ndims=2;
bio(99).size=[];


bio(100).blkName='DataLogging/Network Transfer Subsystem/max_packet_id';
bio(100).sigName='';
bio(100).portIdx=0;
bio(100).dim=[1,1];
bio(100).sigWidth=1;
bio(100).sigAddress='&dynamic_text_B.max_packet_id';
bio(100).ndims=2;
bio(100).size=[];


bio(101).blkName='DataLogging/Network Transfer Subsystem/Data Type Conversion';
bio(101).sigName='';
bio(101).portIdx=0;
bio(101).dim=[1,1];
bio(101).sigWidth=1;
bio(101).sigAddress='&dynamic_text_B.DataTypeConversion_e';
bio(101).ndims=2;
bio(101).size=[];


bio(102).blkName='DataLogging/Network Transfer Subsystem/Data Type Conversion1';
bio(102).sigName='';
bio(102).portIdx=0;
bio(102).dim=[1,1];
bio(102).sigWidth=1;
bio(102).sigAddress='&dynamic_text_B.DataTypeConversion1_n';
bio(102).ndims=2;
bio(102).size=[];


bio(103).blkName='DataLogging/Network Transfer Subsystem/Queue Size';
bio(103).sigName='';
bio(103).portIdx=0;
bio(103).dim=[1,1];
bio(103).sigWidth=1;
bio(103).sigAddress='&dynamic_text_B.QueueSize';
bio(103).ndims=2;
bio(103).size=[];


bio(104).blkName='DataLogging/Network Transfer Subsystem/Total Packets Sent';
bio(104).sigName='';
bio(104).portIdx=0;
bio(104).dim=[1,1];
bio(104).sigWidth=1;
bio(104).sigAddress='&dynamic_text_B.TotalPacketsSent';
bio(104).ndims=2;
bio(104).size=[];


bio(105).blkName='DataLogging/Network Transfer Subsystem/Total Timeouts';
bio(105).sigName='';
bio(105).portIdx=0;
bio(105).dim=[1,1];
bio(105).sigWidth=1;
bio(105).sigAddress='&dynamic_text_B.TotalTimeouts';
bio(105).ndims=2;
bio(105).size=[];


bio(106).blkName='DataLogging/Network Transfer Subsystem/Receive/p1';
bio(106).sigName='';
bio(106).portIdx=0;
bio(106).dim=[4,1];
bio(106).sigWidth=4;
bio(106).sigAddress='&dynamic_text_B.Receive_o1_h[0]';
bio(106).ndims=2;
bio(106).size=[];


bio(107).blkName='DataLogging/Network Transfer Subsystem/Receive/p2';
bio(107).sigName='';
bio(107).portIdx=1;
bio(107).dim=[1,1];
bio(107).sigWidth=1;
bio(107).sigAddress='&dynamic_text_B.Receive_o2_c';
bio(107).ndims=2;
bio(107).size=[];


bio(108).blkName='DataLogging/Network Transfer Subsystem/Unpack';
bio(108).sigName='';
bio(108).portIdx=0;
bio(108).dim=[1,1];
bio(108).sigWidth=1;
bio(108).sigAddress='&dynamic_text_B.Unpack';
bio(108).ndims=2;
bio(108).size=[];


bio(109).blkName='DataLogging/Poll Force Plates/Convert1';
bio(109).sigName='';
bio(109).portIdx=0;
bio(109).dim=[34,1];
bio(109).sigWidth=34;
bio(109).sigAddress='&dynamic_text_B.Convert1_c[0]';
bio(109).ndims=2;
bio(109).size=[];


bio(110).blkName='DataLogging/Poll Force Plates/Convert19';
bio(110).sigName='';
bio(110).portIdx=0;
bio(110).dim=[14,1];
bio(110).sigWidth=14;
bio(110).sigAddress='&dynamic_text_B.Convert19_e5[0]';
bio(110).ndims=2;
bio(110).size=[];


bio(111).blkName='DataLogging/Poll KINARM/Create KINARM Data Array/p1';
bio(111).sigName='kinarm_data';
bio(111).portIdx=0;
bio(111).dim=[3,50];
bio(111).sigWidth=150;
bio(111).sigAddress='&dynamic_text_B.kinarm_data[0]';
bio(111).ndims=2;
bio(111).size=[];


bio(112).blkName='DataLogging/Poll KINARM/Create KINARM Data Array/p2';
bio(112).sigName='primary_encoder_data_out';
bio(112).portIdx=1;
bio(112).dim=[2,6];
bio(112).sigWidth=12;
bio(112).sigAddress='&dynamic_text_B.primary_encoder_data_out[0]';
bio(112).ndims=2;
bio(112).size=[];


bio(113).blkName='DataLogging/Poll KINARM/Monitor_status';
bio(113).sigName='force_scale';
bio(113).portIdx=0;
bio(113).dim=[1,1];
bio(113).sigWidth=1;
bio(113).sigAddress='&dynamic_text_B.force_scale';
bio(113).ndims=2;
bio(113).size=[];


bio(114).blkName='DataLogging/Poll KINARM/Convert1';
bio(114).sigName='';
bio(114).portIdx=0;
bio(114).dim=[2,6];
bio(114).sigWidth=12;
bio(114).sigAddress='&dynamic_text_B.Convert1_f[0]';
bio(114).ndims=2;
bio(114).size=[];


bio(115).blkName='DataLogging/Poll KINARM/Convert19';
bio(115).sigName='';
bio(115).portIdx=0;
bio(115).dim=[3,50];
bio(115).sigWidth=150;
bio(115).sigAddress='&dynamic_text_B.Convert19_e[0]';
bio(115).ndims=2;
bio(115).size=[];


bio(116).blkName='DataLogging/Poll KINARM/Convert2';
bio(116).sigName='';
bio(116).portIdx=0;
bio(116).dim=[3,1];
bio(116).sigWidth=3;
bio(116).sigAddress='&dynamic_text_B.Convert2_b[0]';
bio(116).ndims=2;
bio(116).size=[];


bio(117).blkName='DataLogging/Poll KINARM/Convert3';
bio(117).sigName='';
bio(117).portIdx=0;
bio(117).dim=[8,1];
bio(117).sigWidth=8;
bio(117).sigAddress='&dynamic_text_B.Convert3_c[0]';
bio(117).ndims=2;
bio(117).size=[];


bio(118).blkName='DataLogging/Poll KINARM/Convert4';
bio(118).sigName='';
bio(118).portIdx=0;
bio(118).dim=[8,1];
bio(118).sigWidth=8;
bio(118).sigAddress='&dynamic_text_B.Convert4[0]';
bio(118).ndims=2;
bio(118).size=[];


bio(119).blkName='DataLogging/Poll KINARM/Data Type Conversion';
bio(119).sigName='';
bio(119).portIdx=0;
bio(119).dim=[10,1];
bio(119).sigWidth=10;
bio(119).sigAddress='&dynamic_text_B.DataTypeConversion_i[0]';
bio(119).ndims=2;
bio(119).size=[];


bio(120).blkName='DataLogging/Poll KINARM/Data Type Conversion1';
bio(120).sigName='';
bio(120).portIdx=0;
bio(120).dim=[10,1];
bio(120).sigWidth=10;
bio(120).sigAddress='&dynamic_text_B.DataTypeConversion1_e[0]';
bio(120).ndims=2;
bio(120).size=[];


bio(121).blkName='DataLogging/Poll KINARM/Data Type Conversion2';
bio(121).sigName='';
bio(121).portIdx=0;
bio(121).dim=[9,1];
bio(121).sigWidth=9;
bio(121).sigAddress='&dynamic_text_B.DataTypeConversion2_a[0]';
bio(121).ndims=2;
bio(121).size=[];


bio(122).blkName='DataLogging/Poll KINARM/Data Type Conversion3';
bio(122).sigName='';
bio(122).portIdx=0;
bio(122).dim=[9,1];
bio(122).sigWidth=9;
bio(122).sigAddress='&dynamic_text_B.DataTypeConversion3_p[0]';
bio(122).ndims=2;
bio(122).size=[];


bio(123).blkName='DataLogging/Poll KINARM/Data Type Conversion4';
bio(123).sigName='';
bio(123).portIdx=0;
bio(123).dim=[20,1];
bio(123).sigWidth=20;
bio(123).sigAddress='&dynamic_text_B.DataTypeConversion4[0]';
bio(123).ndims=2;
bio(123).size=[];


bio(124).blkName='DataLogging/Poll KINARM/Data Type Conversion5';
bio(124).sigName='';
bio(124).portIdx=0;
bio(124).dim=[14,1];
bio(124).sigWidth=14;
bio(124).sigAddress='&dynamic_text_B.DataTypeConversion5[0]';
bio(124).ndims=2;
bio(124).size=[];


bio(125).blkName='DataLogging/Poll KINARM/Data Type Conversion6';
bio(125).sigName='';
bio(125).portIdx=0;
bio(125).dim=[4,1];
bio(125).sigWidth=4;
bio(125).sigAddress='&dynamic_text_B.DataTypeConversion6[0]';
bio(125).ndims=2;
bio(125).size=[];


bio(126).blkName='DataLogging/Poll KINARM/Data Type Conversion7';
bio(126).sigName='';
bio(126).portIdx=0;
bio(126).dim=[12,1];
bio(126).sigWidth=12;
bio(126).sigAddress='&dynamic_text_B.DataTypeConversion7[0]';
bio(126).ndims=2;
bio(126).size=[];


bio(127).blkName='DataLogging/Poll KINARM/Data Type Conversion8';
bio(127).sigName='';
bio(127).portIdx=0;
bio(127).dim=[4,1];
bio(127).sigWidth=4;
bio(127).sigAddress='&dynamic_text_B.DataTypeConversion8[0]';
bio(127).ndims=2;
bio(127).size=[];


bio(128).blkName='DataLogging/Poll KINARM/Memory';
bio(128).sigName='';
bio(128).portIdx=0;
bio(128).dim=[4,1];
bio(128).sigWidth=4;
bio(128).sigAddress='&dynamic_text_B.Memory[0]';
bio(128).ndims=2;
bio(128).size=[];


bio(129).blkName='DataLogging/Poll KINARM/Product';
bio(129).sigName='';
bio(129).portIdx=0;
bio(129).dim=[4,1];
bio(129).sigWidth=4;
bio(129).sigAddress='&dynamic_text_B.Product[0]';
bio(129).ndims=2;
bio(129).size=[];


bio(130).blkName='DataLogging/Poll KINARM/S-Function/p1';
bio(130).sigName='';
bio(130).portIdx=0;
bio(130).dim=[10,1];
bio(130).sigWidth=10;
bio(130).sigAddress='&dynamic_text_B.SFunction_o1[0]';
bio(130).ndims=2;
bio(130).size=[];


bio(131).blkName='DataLogging/Poll KINARM/S-Function/p2';
bio(131).sigName='';
bio(131).portIdx=1;
bio(131).dim=[10,1];
bio(131).sigWidth=10;
bio(131).sigAddress='&dynamic_text_B.SFunction_o2[0]';
bio(131).ndims=2;
bio(131).size=[];


bio(132).blkName='DataLogging/Poll KINARM/S-Function/p3';
bio(132).sigName='';
bio(132).portIdx=2;
bio(132).dim=[1,1];
bio(132).sigWidth=1;
bio(132).sigAddress='&dynamic_text_B.SFunction_o3';
bio(132).ndims=2;
bio(132).size=[];


bio(133).blkName='DataLogging/Poll KINARM/S-Function/p4';
bio(133).sigName='';
bio(133).portIdx=3;
bio(133).dim=[4,1];
bio(133).sigWidth=4;
bio(133).sigAddress='&dynamic_text_B.SFunction_o4[0]';
bio(133).ndims=2;
bio(133).size=[];


bio(134).blkName='DataLogging/Poll KINARM/S-Function/p5';
bio(134).sigName='';
bio(134).portIdx=4;
bio(134).dim=[6,1];
bio(134).sigWidth=6;
bio(134).sigAddress='&dynamic_text_B.SFunction_o5[0]';
bio(134).ndims=2;
bio(134).size=[];


bio(135).blkName='DataLogging/Poll KINARM/S-Function/p6';
bio(135).sigName='';
bio(135).portIdx=5;
bio(135).dim=[6,1];
bio(135).sigWidth=6;
bio(135).sigAddress='&dynamic_text_B.SFunction_o6[0]';
bio(135).ndims=2;
bio(135).size=[];


bio(136).blkName='DataLogging/Poll KINARM/S-Function/p7';
bio(136).sigName='';
bio(136).portIdx=6;
bio(136).dim=[1,1];
bio(136).sigWidth=1;
bio(136).sigAddress='&dynamic_text_B.SFunction_o7';
bio(136).ndims=2;
bio(136).size=[];


bio(137).blkName='DataLogging/Poll KINARM/S-Function/p8';
bio(137).sigName='';
bio(137).portIdx=7;
bio(137).dim=[1,1];
bio(137).sigWidth=1;
bio(137).sigAddress='&dynamic_text_B.SFunction_o8';
bio(137).ndims=2;
bio(137).size=[];


bio(138).blkName='DataLogging/Poll KINARM/S-Function/p9';
bio(138).sigName='';
bio(138).portIdx=8;
bio(138).dim=[3,1];
bio(138).sigWidth=3;
bio(138).sigAddress='&dynamic_text_B.SFunction_o9[0]';
bio(138).ndims=2;
bio(138).size=[];


bio(139).blkName='DataLogging/Poll KINARM/S-Function/p10';
bio(139).sigName='';
bio(139).portIdx=9;
bio(139).dim=[1,1];
bio(139).sigWidth=1;
bio(139).sigAddress='&dynamic_text_B.SFunction_o10';
bio(139).ndims=2;
bio(139).size=[];


bio(140).blkName='DataLogging/Poll KINARM/AddTorques';
bio(140).sigName='';
bio(140).portIdx=0;
bio(140).dim=[4,1];
bio(140).sigWidth=4;
bio(140).sigAddress='&dynamic_text_B.AddTorques[0]';
bio(140).ndims=2;
bio(140).size=[];


bio(141).blkName='DataLogging/Receive_Gaze/Create timestamp/p1';
bio(141).sigName='timestamp_out';
bio(141).portIdx=0;
bio(141).dim=[1,1];
bio(141).sigWidth=1;
bio(141).sigAddress='&dynamic_text_B.timestamp_out';
bio(141).ndims=2;
bio(141).size=[];


bio(142).blkName='DataLogging/Receive_Gaze/Create timestamp/p2';
bio(142).sigName='start_time_out';
bio(142).portIdx=1;
bio(142).dim=[1,1];
bio(142).sigWidth=1;
bio(142).sigAddress='&dynamic_text_B.start_time_out';
bio(142).ndims=2;
bio(142).size=[];


bio(143).blkName='DataLogging/Receive_Gaze/Embedded MATLAB Function1/p1';
bio(143).sigName='gazeXYCalculated';
bio(143).portIdx=0;
bio(143).dim=[2,1];
bio(143).sigWidth=2;
bio(143).sigAddress='&dynamic_text_B.gazeXYCalculated[0]';
bio(143).ndims=2;
bio(143).size=[];


bio(144).blkName='DataLogging/Receive_Gaze/Embedded MATLAB Function1/p2';
bio(144).sigName='pupil_area_GLOBAL';
bio(144).portIdx=1;
bio(144).dim=[1,1];
bio(144).sigWidth=1;
bio(144).sigAddress='&dynamic_text_B.pupil_area_GLOBAL';
bio(144).ndims=2;
bio(144).size=[];


bio(145).blkName='DataLogging/Receive_Gaze/clean_packet/p1';
bio(145).sigName='pack_out';
bio(145).portIdx=0;
bio(145).dim=[512,1];
bio(145).sigWidth=512;
bio(145).sigAddress='&dynamic_text_B.pack_out[0]';
bio(145).ndims=2;
bio(145).size=[];


bio(146).blkName='DataLogging/Receive_Gaze/clean_packet/p2';
bio(146).sigName='len_out';
bio(146).portIdx=1;
bio(146).dim=[1,1];
bio(146).sigWidth=1;
bio(146).sigAddress='&dynamic_text_B.len_out';
bio(146).ndims=2;
bio(146).size=[];


bio(147).blkName='DataLogging/Receive_Gaze/convert to seconds';
bio(147).sigName='event_data_out';
bio(147).portIdx=0;
bio(147).dim=[3,1];
bio(147).sigWidth=3;
bio(147).sigAddress='&dynamic_text_B.event_data_out[0]';
bio(147).ndims=2;
bio(147).size=[];


bio(148).blkName='DataLogging/Receive_Gaze/Convert1';
bio(148).sigName='';
bio(148).portIdx=0;
bio(148).dim=[1,1];
bio(148).sigWidth=1;
bio(148).sigAddress='&dynamic_text_B.Convert1';
bio(148).ndims=2;
bio(148).size=[];


bio(149).blkName='DataLogging/Receive_Gaze/Convert19';
bio(149).sigName='';
bio(149).portIdx=0;
bio(149).dim=[3,1];
bio(149).sigWidth=3;
bio(149).sigAddress='&dynamic_text_B.Convert19[0]';
bio(149).ndims=2;
bio(149).size=[];


bio(150).blkName='DataLogging/Receive_Gaze/Convert2';
bio(150).sigName='';
bio(150).portIdx=0;
bio(150).dim=[3,1];
bio(150).sigWidth=3;
bio(150).sigAddress='&dynamic_text_B.Convert2[0]';
bio(150).ndims=2;
bio(150).size=[];


bio(151).blkName='DataLogging/Receive_Gaze/Convert3';
bio(151).sigName='';
bio(151).portIdx=0;
bio(151).dim=[1,1];
bio(151).sigWidth=1;
bio(151).sigAddress='&dynamic_text_B.Convert3';
bio(151).ndims=2;
bio(151).size=[];


bio(152).blkName='DataLogging/Receive_Gaze/Data Type Conversion';
bio(152).sigName='';
bio(152).portIdx=0;
bio(152).dim=[1,1];
bio(152).sigWidth=1;
bio(152).sigAddress='&dynamic_text_B.DataTypeConversion';
bio(152).ndims=2;
bio(152).size=[];


bio(153).blkName='DataLogging/Receive_Gaze/Data Type Conversion1';
bio(153).sigName='';
bio(153).portIdx=0;
bio(153).dim=[3,1];
bio(153).sigWidth=3;
bio(153).sigAddress='&dynamic_text_B.DataTypeConversion1[0]';
bio(153).ndims=2;
bio(153).size=[];


bio(154).blkName='DataLogging/Receive_Gaze/Data Type Conversion3';
bio(154).sigName='';
bio(154).portIdx=0;
bio(154).dim=[1,4];
bio(154).sigWidth=4;
bio(154).sigAddress='&dynamic_text_B.DataTypeConversion3[0]';
bio(154).ndims=2;
bio(154).size=[];


bio(155).blkName='DataLogging/Receive_Gaze/Data Type Conversion4';
bio(155).sigName='';
bio(155).portIdx=0;
bio(155).dim=[1,1];
bio(155).sigWidth=1;
bio(155).sigAddress='&dynamic_text_B.DataTypeConversion4_j';
bio(155).ndims=2;
bio(155).size=[];


bio(156).blkName='DataLogging/Receive_Gaze/Data Type Conversion5';
bio(156).sigName='';
bio(156).portIdx=0;
bio(156).dim=[1,1];
bio(156).sigWidth=1;
bio(156).sigAddress='&dynamic_text_B.DataTypeConversion5_o';
bio(156).ndims=2;
bio(156).size=[];


bio(157).blkName='DataLogging/Receive_Gaze/convert';
bio(157).sigName='';
bio(157).portIdx=0;
bio(157).dim=[1,1];
bio(157).sigWidth=1;
bio(157).sigAddress='&dynamic_text_B.convert';
bio(157).ndims=2;
bio(157).size=[];


bio(158).blkName='DataLogging/Receive_Gaze/Reshape';
bio(158).sigName='';
bio(158).portIdx=0;
bio(158).dim=[2,4];
bio(158).sigWidth=8;
bio(158).sigAddress='&dynamic_text_B.Reshape_i[0]';
bio(158).ndims=2;
bio(158).size=[];


bio(159).blkName='DataLogging/Receive_Gaze/Selector - Left Eye';
bio(159).sigName='';
bio(159).portIdx=0;
bio(159).dim=[1,4];
bio(159).sigWidth=4;
bio(159).sigAddress='&dynamic_text_B.SelectorLeftEye[0]';
bio(159).ndims=2;
bio(159).size=[];


bio(160).blkName='DataLogging/Receive_Gaze/Receive/p1';
bio(160).sigName='';
bio(160).portIdx=0;
bio(160).dim=[512,1];
bio(160).sigWidth=512;
bio(160).sigAddress='&dynamic_text_B.Receive_o1[0]';
bio(160).ndims=2;
bio(160).size=[];


bio(161).blkName='DataLogging/Receive_Gaze/Receive/p2';
bio(161).sigName='';
bio(161).portIdx=1;
bio(161).dim=[1,1];
bio(161).sigWidth=1;
bio(161).sigAddress='&dynamic_text_B.Receive_o2';
bio(161).ndims=2;
bio(161).size=[];


bio(162).blkName='DataLogging/Receive_Gaze/S-Function/p1';
bio(162).sigName='';
bio(162).portIdx=0;
bio(162).dim=[1,1];
bio(162).sigWidth=1;
bio(162).sigAddress='&dynamic_text_B.SFunction_o1_n';
bio(162).ndims=2;
bio(162).size=[];


bio(163).blkName='DataLogging/Receive_Gaze/S-Function/p2';
bio(163).sigName='SAMPE_TYPE';
bio(163).portIdx=1;
bio(163).dim=[1,1];
bio(163).sigWidth=1;
bio(163).sigAddress='&dynamic_text_B.SAMPE_TYPE';
bio(163).ndims=2;
bio(163).size=[];


bio(164).blkName='DataLogging/Receive_Gaze/S-Function/p3';
bio(164).sigName='Content Flags';
bio(164).portIdx=2;
bio(164).dim=[1,1];
bio(164).sigWidth=1;
bio(164).sigAddress='&dynamic_text_B.ContentFlags';
bio(164).ndims=2;
bio(164).size=[];


bio(165).blkName='DataLogging/Receive_Gaze/S-Function/p4';
bio(165).sigName='pupil X';
bio(165).portIdx=3;
bio(165).dim=[2,1];
bio(165).sigWidth=2;
bio(165).sigAddress='&dynamic_text_B.pupilX[0]';
bio(165).ndims=2;
bio(165).size=[];


bio(166).blkName='DataLogging/Receive_Gaze/S-Function/p5';
bio(166).sigName='pupil Y';
bio(166).portIdx=4;
bio(166).dim=[2,1];
bio(166).sigWidth=2;
bio(166).sigAddress='&dynamic_text_B.pupilY[0]';
bio(166).ndims=2;
bio(166).size=[];


bio(167).blkName='DataLogging/Receive_Gaze/S-Function/p6';
bio(167).sigName='HREF X';
bio(167).portIdx=5;
bio(167).dim=[2,1];
bio(167).sigWidth=2;
bio(167).sigAddress='&dynamic_text_B.HREFX[0]';
bio(167).ndims=2;
bio(167).size=[];


bio(168).blkName='DataLogging/Receive_Gaze/S-Function/p7';
bio(168).sigName='HREF Y';
bio(168).portIdx=6;
bio(168).dim=[2,1];
bio(168).sigWidth=2;
bio(168).sigAddress='&dynamic_text_B.HREFY[0]';
bio(168).ndims=2;
bio(168).size=[];


bio(169).blkName='DataLogging/Receive_Gaze/S-Function/p8';
bio(169).sigName='pupil area';
bio(169).portIdx=7;
bio(169).dim=[2,1];
bio(169).sigWidth=2;
bio(169).sigAddress='&dynamic_text_B.pupilarea[0]';
bio(169).ndims=2;
bio(169).size=[];


bio(170).blkName='DataLogging/Receive_Gaze/S-Function/p9';
bio(170).sigName='screen gaze X';
bio(170).portIdx=8;
bio(170).dim=[2,1];
bio(170).sigWidth=2;
bio(170).sigAddress='&dynamic_text_B.screengazeX[0]';
bio(170).ndims=2;
bio(170).size=[];


bio(171).blkName='DataLogging/Receive_Gaze/S-Function/p10';
bio(171).sigName='screen gaze Y';
bio(171).portIdx=9;
bio(171).dim=[2,1];
bio(171).sigWidth=2;
bio(171).sigAddress='&dynamic_text_B.screengazeY[0]';
bio(171).ndims=2;
bio(171).size=[];


bio(172).blkName='DataLogging/Receive_Gaze/S-Function/p11';
bio(172).sigName='resolution X';
bio(172).portIdx=10;
bio(172).dim=[1,1];
bio(172).sigWidth=1;
bio(172).sigAddress='&dynamic_text_B.resolutionX';
bio(172).ndims=2;
bio(172).size=[];


bio(173).blkName='DataLogging/Receive_Gaze/S-Function/p12';
bio(173).sigName='resolution Y';
bio(173).portIdx=11;
bio(173).dim=[1,1];
bio(173).sigWidth=1;
bio(173).sigAddress='&dynamic_text_B.resolutionY';
bio(173).ndims=2;
bio(173).size=[];


bio(174).blkName='DataLogging/Receive_Gaze/S-Function/p13';
bio(174).sigName='status flags';
bio(174).portIdx=12;
bio(174).dim=[1,1];
bio(174).sigWidth=1;
bio(174).sigAddress='&dynamic_text_B.statusflags';
bio(174).ndims=2;
bio(174).size=[];


bio(175).blkName='DataLogging/Receive_Gaze/S-Function/p14';
bio(175).sigName='extra input';
bio(175).portIdx=13;
bio(175).dim=[1,1];
bio(175).sigWidth=1;
bio(175).sigAddress='&dynamic_text_B.extrainput';
bio(175).ndims=2;
bio(175).size=[];


bio(176).blkName='DataLogging/Receive_Gaze/S-Function/p15';
bio(176).sigName='buttons';
bio(176).portIdx=14;
bio(176).dim=[1,1];
bio(176).sigWidth=1;
bio(176).sigAddress='&dynamic_text_B.buttons';
bio(176).ndims=2;
bio(176).size=[];


bio(177).blkName='DataLogging/Receive_Gaze/S-Function/p16';
bio(177).sigName='htype';
bio(177).portIdx=15;
bio(177).dim=[1,1];
bio(177).sigWidth=1;
bio(177).sigAddress='&dynamic_text_B.htype';
bio(177).ndims=2;
bio(177).size=[];


bio(178).blkName='DataLogging/Receive_Gaze/S-Function/p17';
bio(178).sigName='hdata';
bio(178).portIdx=16;
bio(178).dim=[8,1];
bio(178).sigWidth=8;
bio(178).sigAddress='&dynamic_text_B.hdata[0]';
bio(178).ndims=2;
bio(178).size=[];


bio(179).blkName='DataLogging/Receive_Gaze/S-Function/p18';
bio(179).sigName='';
bio(179).portIdx=17;
bio(179).dim=[3,1];
bio(179).sigWidth=3;
bio(179).sigAddress='&dynamic_text_B.SFunction_o18[0]';
bio(179).ndims=2;
bio(179).size=[];


bio(180).blkName='GUI Control/Preview Targets Subsystem/Create Target Vector/p1';
bio(180).sigName='target_vector';
bio(180).portIdx=0;
bio(180).dim=[1,352];
bio(180).sigWidth=352;
bio(180).sigAddress='&dynamic_text_B.target_vector[0]';
bio(180).ndims=2;
bio(180).size=[];


bio(181).blkName='GUI Control/Preview Targets Subsystem/Create Target Vector/p2';
bio(181).sigName='target_vector_length';
bio(181).portIdx=1;
bio(181).dim=[1,1];
bio(181).sigWidth=1;
bio(181).sigAddress='&dynamic_text_B.target_vector_length';
bio(181).ndims=2;
bio(181).size=[];


bio(182).blkName='GUI Control/Preview Targets Subsystem/Concatenation';
bio(182).sigName='';
bio(182).portIdx=0;
bio(182).dim=[2,5];
bio(182).sigWidth=10;
bio(182).sigAddress='&dynamic_text_B.Concatenation1[0]';
bio(182).ndims=2;
bio(182).size=[];


bio(183).blkName='GUI Control/Preview Targets Subsystem/Concatenation1';
bio(183).sigName='';
bio(183).portIdx=0;
bio(183).dim=[2,5];
bio(183).sigWidth=10;
bio(183).sigAddress='&dynamic_text_B.Concatenation1[0]';
bio(183).ndims=2;
bio(183).size=[];


bio(184).blkName='GUI Control/Preview Targets Subsystem/indices_padding';
bio(184).sigName='';
bio(184).portIdx=0;
bio(184).dim=[2,5];
bio(184).sigWidth=10;
bio(184).sigAddress='&dynamic_text_B.Concatenation1[0]';
bio(184).ndims=2;
bio(184).size=[];


bio(185).blkName='GUI Control/Preview Targets Subsystem/Reshape';
bio(185).sigName='';
bio(185).portIdx=0;
bio(185).dim=[2,5];
bio(185).sigWidth=10;
bio(185).sigAddress='&dynamic_text_B.Concatenation1[0]';
bio(185).ndims=2;
bio(185).size=[];


bio(186).blkName='GUI Control/Preview Targets Subsystem/Reshape1';
bio(186).sigName='';
bio(186).portIdx=0;
bio(186).dim=[2,5];
bio(186).sigWidth=10;
bio(186).sigAddress='&dynamic_text_B.Concatenation1[0]';
bio(186).ndims=2;
bio(186).size=[];


bio(187).blkName='GUI Control/Run Command Subsystem/Embedded MATLAB Function/p1';
bio(187).sigName='y';
bio(187).portIdx=0;
bio(187).dim=[1,1];
bio(187).sigWidth=1;
bio(187).sigAddress='&dynamic_text_B.y';
bio(187).ndims=2;
bio(187).size=[];


bio(188).blkName='GUI Control/Run Command Subsystem/Embedded MATLAB Function/p2';
bio(188).sigName='z';
bio(188).portIdx=1;
bio(188).dim=[1,1];
bio(188).sigWidth=1;
bio(188).sigAddress='&dynamic_text_B.z';
bio(188).ndims=2;
bio(188).size=[];


bio(189).blkName='GUI Control/Run Command Subsystem/Data Type Conversion';
bio(189).sigName='';
bio(189).portIdx=0;
bio(189).dim=[1,1];
bio(189).sigWidth=1;
bio(189).sigAddress='&dynamic_text_B.DataTypeConversion_p';
bio(189).ndims=2;
bio(189).size=[];


bio(190).blkName='GUI Control/Run Command Subsystem/Data Type Conversion1';
bio(190).sigName='';
bio(190).portIdx=0;
bio(190).dim=[1,1];
bio(190).sigWidth=1;
bio(190).sigAddress='&dynamic_text_B.DataTypeConversion1_m';
bio(190).ndims=2;
bio(190).size=[];


bio(191).blkName='GUI Control/Run Command Subsystem/Data Type Conversion2';
bio(191).sigName='';
bio(191).portIdx=0;
bio(191).dim=[1,1];
bio(191).sigWidth=1;
bio(191).sigAddress='&dynamic_text_B.DataTypeConversion2';
bio(191).ndims=2;
bio(191).size=[];


bio(192).blkName='GUI Control/Run Command Subsystem/Rate Transition';
bio(192).sigName='';
bio(192).portIdx=0;
bio(192).dim=[1,1];
bio(192).sigWidth=1;
bio(192).sigAddress='&dynamic_text_B.RateTransition_p';
bio(192).ndims=2;
bio(192).size=[];


bio(193).blkName='GUI Control/Run Command Subsystem/Run Command Receive/p1';
bio(193).sigName='';
bio(193).portIdx=0;
bio(193).dim=[1,1];
bio(193).sigWidth=1;
bio(193).sigAddress='&dynamic_text_B.RunCommandReceive_o1';
bio(193).ndims=2;
bio(193).size=[];


bio(194).blkName='GUI Control/Run Command Subsystem/Run Command Receive/p2';
bio(194).sigName='';
bio(194).portIdx=1;
bio(194).dim=[1,1];
bio(194).sigWidth=1;
bio(194).sigAddress='&dynamic_text_B.RunCommandReceive_o2';
bio(194).ndims=2;
bio(194).size=[];


bio(195).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p1';
bio(195).sigName='task_status';
bio(195).portIdx=0;
bio(195).dim=[1,1];
bio(195).sigWidth=1;
bio(195).sigAddress='&dynamic_text_B.task_status';
bio(195).ndims=2;
bio(195).size=[];


bio(196).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p2';
bio(196).sigName='tp';
bio(196).portIdx=1;
bio(196).dim=[1,1];
bio(196).sigWidth=1;
bio(196).sigAddress='&dynamic_text_B.tp';
bio(196).ndims=2;
bio(196).size=[];


bio(197).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p3';
bio(197).sigName='block';
bio(197).portIdx=2;
bio(197).dim=[1,1];
bio(197).sigWidth=1;
bio(197).sigAddress='&dynamic_text_B.block';
bio(197).ndims=2;
bio(197).size=[];


bio(198).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p4';
bio(198).sigName='trial_in_block';
bio(198).portIdx=3;
bio(198).dim=[1,1];
bio(198).sigWidth=1;
bio(198).sigAddress='&dynamic_text_B.trial_in_block';
bio(198).ndims=2;
bio(198).size=[];


bio(199).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p5';
bio(199).sigName='block_in_set';
bio(199).portIdx=4;
bio(199).dim=[1,1];
bio(199).sigWidth=1;
bio(199).sigAddress='&dynamic_text_B.block_in_set';
bio(199).ndims=2;
bio(199).size=[];


bio(200).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p6';
bio(200).sigName='trial_in_set';
bio(200).portIdx=5;
bio(200).dim=[1,1];
bio(200).sigWidth=1;
bio(200).sigAddress='&dynamic_text_B.trial_in_set';
bio(200).ndims=2;
bio(200).size=[];


bio(201).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p7';
bio(201).sigName='e_exit_trial';
bio(201).portIdx=6;
bio(201).dim=[1,1];
bio(201).sigWidth=1;
bio(201).sigAddress='&dynamic_text_B.e_exit_trial';
bio(201).ndims=2;
bio(201).size=[];


bio(202).blkName='GUI Control/Task Execution Control Subsystem/Data Type Conversion';
bio(202).sigName='';
bio(202).portIdx=0;
bio(202).dim=[1,1];
bio(202).sigWidth=1;
bio(202).sigAddress='&dynamic_text_B.DataTypeConversion_h';
bio(202).ndims=2;
bio(202).size=[];


bio(203).blkName='GUI Control/Task Execution Control Subsystem/Data Type Conversion1';
bio(203).sigName='';
bio(203).portIdx=0;
bio(203).dim=[1,1];
bio(203).sigWidth=1;
bio(203).sigAddress='&dynamic_text_B.DataTypeConversion1_l';
bio(203).ndims=2;
bio(203).size=[];


bio(204).blkName='GUI Control/Task Execution Control Subsystem/Data Type Conversion2';
bio(204).sigName='';
bio(204).portIdx=0;
bio(204).dim=[1,1];
bio(204).sigWidth=1;
bio(204).sigAddress='&dynamic_text_B.DataTypeConversion2_n';
bio(204).ndims=2;
bio(204).size=[];


bio(205).blkName='GUI Control/Task Execution Control Subsystem/Task Clock';
bio(205).sigName='';
bio(205).portIdx=0;
bio(205).dim=[1,1];
bio(205).sigWidth=1;
bio(205).sigAddress='&dynamic_text_B.TaskClock';
bio(205).ndims=2;
bio(205).size=[];


bio(206).blkName='GUI Control/Task Execution Control Subsystem/Delay';
bio(206).sigName='';
bio(206).portIdx=0;
bio(206).dim=[1,1];
bio(206).sigWidth=1;
bio(206).sigAddress='&dynamic_text_B.Delay';
bio(206).ndims=2;
bio(206).size=[];


bio(207).blkName='GUI Control/Task Execution Control Subsystem/Delay1';
bio(207).sigName='';
bio(207).portIdx=0;
bio(207).dim=[1,1];
bio(207).sigWidth=1;
bio(207).sigAddress='&dynamic_text_B.Delay1';
bio(207).ndims=2;
bio(207).size=[];


bio(208).blkName='GUI Control/Task Execution Control Subsystem/Product';
bio(208).sigName='';
bio(208).portIdx=0;
bio(208).dim=[1,1];
bio(208).sigWidth=1;
bio(208).sigAddress='&dynamic_text_B.Product_f';
bio(208).ndims=2;
bio(208).size=[];


bio(209).blkName='GUI Control/Task Execution Control Subsystem/Product2';
bio(209).sigName='';
bio(209).portIdx=0;
bio(209).dim=[1,1];
bio(209).sigWidth=1;
bio(209).sigAddress='&dynamic_text_B.Product2';
bio(209).ndims=2;
bio(209).size=[];


bio(210).blkName='GUI Control/Task Execution Control Subsystem/Product3';
bio(210).sigName='';
bio(210).portIdx=0;
bio(210).dim=[1,1];
bio(210).sigWidth=1;
bio(210).sigAddress='&dynamic_text_B.Product3';
bio(210).ndims=2;
bio(210).size=[];


bio(211).blkName='GUI Control/Task Execution Control Subsystem/Selector';
bio(211).sigName='';
bio(211).portIdx=0;
bio(211).dim=[50,1];
bio(211).sigWidth=50;
bio(211).sigAddress='&dynamic_text_B.Selector_n[0]';
bio(211).ndims=2;
bio(211).size=[];


bio(212).blkName='GUI Control/Task Execution Control Subsystem/Selector1';
bio(212).sigName='';
bio(212).portIdx=0;
bio(212).dim=[1,500];
bio(212).sigWidth=500;
bio(212).sigAddress='&dynamic_text_B.Selector1[0]';
bio(212).ndims=2;
bio(212).size=[];


bio(213).blkName='GUI Control/Task Execution Control Subsystem/Selector2';
bio(213).sigName='';
bio(213).portIdx=0;
bio(213).dim=[1000,1];
bio(213).sigWidth=1000;
bio(213).sigAddress='&dynamic_text_B.Selector2[0]';
bio(213).ndims=2;
bio(213).size=[];


bio(214).blkName='GUI Control/Task Execution Control Subsystem/Subtract';
bio(214).sigName='';
bio(214).portIdx=0;
bio(214).dim=[1,1];
bio(214).sigWidth=1;
bio(214).sigAddress='&dynamic_text_B.Subtract_k';
bio(214).ndims=2;
bio(214).size=[];


bio(215).blkName='GUI Control/Task Execution Control Subsystem/Width';
bio(215).sigName='';
bio(215).portIdx=0;
bio(215).dim=[1,1];
bio(215).sigWidth=1;
bio(215).sigAddress='&dynamic_text_B.Width_b';
bio(215).ndims=2;
bio(215).size=[];


bio(216).blkName='GUI Control/Task Execution Control Subsystem/Width1';
bio(216).sigName='';
bio(216).portIdx=0;
bio(216).dim=[1,1];
bio(216).sigWidth=1;
bio(216).sigAddress='&dynamic_text_B.Width1';
bio(216).ndims=2;
bio(216).size=[];


bio(217).blkName='GUI Control/Task Execution Control Subsystem/Width2';
bio(217).sigName='';
bio(217).portIdx=0;
bio(217).dim=[1,1];
bio(217).sigWidth=1;
bio(217).sigAddress='&dynamic_text_B.Width2';
bio(217).ndims=2;
bio(217).size=[];


bio(218).blkName='Parameter Table Defn/target_table/HEIGHT;Height;float;Rectangle height in cm;;;none;;';
bio(218).sigName='';
bio(218).portIdx=0;
bio(218).dim=[1,1];
bio(218).sigWidth=1;
bio(218).sigAddress='&dynamic_text_B.HEIGHTHeightfloatRectangleheightincmnone';
bio(218).ndims=2;
bio(218).size=[];


bio(219).blkName='Parameter Table Defn/target_table/LABEL_COLOR;Label Color;colour;The text color;;;none;;';
bio(219).sigName='';
bio(219).portIdx=0;
bio(219).dim=[1,1];
bio(219).sigWidth=1;
bio(219).sigAddress='&dynamic_text_B.LABEL_COLORLabelColorcolourThetextcolornone';
bio(219).ndims=2;
bio(219).size=[];


bio(220).blkName='Parameter Table Defn/target_table/LABEL_HEIGHT;Label height;float;The text heigh in cm;;;none;;';
bio(220).sigName='';
bio(220).portIdx=0;
bio(220).dim=[1,1];
bio(220).sigWidth=1;
bio(220).sigAddress='&dynamic_text_B.LABEL_HEIGHTLabelheightfloatThetextheighincmnone';
bio(220).ndims=2;
bio(220).size=[];


bio(221).blkName='Parameter Table Defn/target_table/LABEL_TEXT;Label;label;The text to display on the target;;;none;;';
bio(221).sigName='';
bio(221).portIdx=0;
bio(221).dim=[1,1];
bio(221).sigWidth=1;
bio(221).sigAddress='&dynamic_text_B.LABEL_TEXTLabellabelThetexttodisplayonthetargetnone';
bio(221).ndims=2;
bio(221).size=[];


bio(222).blkName='Parameter Table Defn/target_table/ROTATION;Rotation;float;Rotation of the target in degrees;;;none;;';
bio(222).sigName='';
bio(222).portIdx=0;
bio(222).dim=[1,1];
bio(222).sigWidth=1;
bio(222).sigAddress='&dynamic_text_B.ROTATIONRotationfloatRotationofthetargetindegreesnone';
bio(222).ndims=2;
bio(222).size=[];


bio(223).blkName='Parameter Table Defn/target_table/TARG_COLOR;Color;colour;Target colour;;;none;;';
bio(223).sigName='';
bio(223).portIdx=0;
bio(223).dim=[1,1];
bio(223).sigWidth=1;
bio(223).sigAddress='&dynamic_text_B.TARG_COLORColorcolourTargetcolournone';
bio(223).ndims=2;
bio(223).size=[];


bio(224).blkName='Parameter Table Defn/target_table/WIDTH;Width;float;Rectangle width in cm;;;none;;';
bio(224).sigName='';
bio(224).portIdx=0;
bio(224).dim=[1,1];
bio(224).sigWidth=1;
bio(224).sigAddress='&dynamic_text_B.WIDTHWidthfloatRectanglewidthincmnone';
bio(224).ndims=2;
bio(224).size=[];


bio(225).blkName='Parameter Table Defn/target_table/col_x;X;float;X Position (cm) of the target relative to  local (0,0);;;none;;';
bio(225).sigName='';
bio(225).portIdx=0;
bio(225).dim=[1,1];
bio(225).sigWidth=1;
bio(225).sigAddress='&dynamic_text_B.col_xXfloatXPositioncmofthetargetrelativetolocal00none';
bio(225).ndims=2;
bio(225).size=[];


bio(226).blkName='Parameter Table Defn/target_table/col_y;Y;float;Y Position (cm) of the target relative to  local (0,0);;;none;;';
bio(226).sigName='';
bio(226).portIdx=0;
bio(226).dim=[1,1];
bio(226).sigWidth=1;
bio(226).sigAddress='&dynamic_text_B.col_yYfloatYPositioncmofthetargetrelativetolocal00none';
bio(226).ndims=2;
bio(226).size=[];


bio(227).blkName='Parameter Table Defn/task_definition/INSTRUCTIONS=';
bio(227).sigName='';
bio(227).portIdx=0;
bio(227).dim=[1,1];
bio(227).sigWidth=1;
bio(227).sigAddress='&dynamic_text_B.INSTRUCTIONS';
bio(227).ndims=2;
bio(227).size=[];


bio(228).blkName='Parameter Table Defn/task_definition/LOAD_FOR=EITHER';
bio(228).sigName='';
bio(228).portIdx=0;
bio(228).dim=[1,1];
bio(228).sigWidth=1;
bio(228).sigAddress='&dynamic_text_B.LOAD_FOREITHER';
bio(228).ndims=2;
bio(228).size=[];


bio(229).blkName='Process_Video_CMD/PVC_core/Embedded MATLAB Function/p1';
bio(229).sigName='vis_cmd_out';
bio(229).portIdx=0;
bio(229).dim=[725,1];
bio(229).sigWidth=725;
bio(229).sigAddress='&dynamic_text_B.vis_cmd_out[0]';
bio(229).ndims=2;
bio(229).size=[];


bio(230).blkName='Process_Video_CMD/PVC_core/Embedded MATLAB Function/p2';
bio(230).sigName='vis_cmd_cropped';
bio(230).portIdx=1;
bio(230).dim=[1,1];
bio(230).sigWidth=1;
bio(230).sigAddress='&dynamic_text_B.vis_cmd_cropped';
bio(230).ndims=2;
bio(230).size=[];


bio(231).blkName='Process_Video_CMD/PVC_core/Embedded MATLAB Function/p3';
bio(231).sigName='frame_sent_trigger';
bio(231).portIdx=2;
bio(231).dim=[1,1];
bio(231).sigWidth=1;
bio(231).sigAddress='&dynamic_text_B.frame_sent_trigger';
bio(231).ndims=2;
bio(231).size=[];


bio(232).blkName='Process_Video_CMD/PVC_core/Embedded MATLAB Function/p4';
bio(232).sigName='frame_number';
bio(232).portIdx=3;
bio(232).dim=[1,1];
bio(232).sigWidth=1;
bio(232).sigAddress='&dynamic_text_B.frame_number';
bio(232).ndims=2;
bio(232).size=[];


bio(233).blkName='Process_Video_CMD/PVC_core/Latency Tracking Machine/p1';
bio(233).sigName='average_ack_delay';
bio(233).portIdx=0;
bio(233).dim=[1,1];
bio(233).sigWidth=1;
bio(233).sigAddress='&dynamic_text_B.average_ack_delay';
bio(233).ndims=2;
bio(233).size=[];


bio(234).blkName='Process_Video_CMD/PVC_core/Latency Tracking Machine/p2';
bio(234).sigName='last_frame_sent';
bio(234).portIdx=1;
bio(234).dim=[1,1];
bio(234).sigWidth=1;
bio(234).sigAddress='&dynamic_text_B.last_frame_sent';
bio(234).ndims=2;
bio(234).size=[];


bio(235).blkName='Process_Video_CMD/PVC_core/Latency Tracking Machine/p3';
bio(235).sigName='last_frame_acknowledged';
bio(235).portIdx=2;
bio(235).dim=[1,1];
bio(235).sigWidth=1;
bio(235).sigAddress='&dynamic_text_B.last_frame_acknowledged';
bio(235).ndims=2;
bio(235).size=[];


bio(236).blkName='Process_Video_CMD/PVC_core/Latency Tracking Machine/p4';
bio(236).sigName='last_frame_ack_delay';
bio(236).portIdx=3;
bio(236).dim=[1,1];
bio(236).sigWidth=1;
bio(236).sigAddress='&dynamic_text_B.last_frame_ack_delay';
bio(236).ndims=2;
bio(236).size=[];


bio(237).blkName='Process_Video_CMD/PVC_core/Rate Transition';
bio(237).sigName='';
bio(237).portIdx=0;
bio(237).dim=[1,1];
bio(237).sigWidth=1;
bio(237).sigAddress='&dynamic_text_B.RateTransition_b';
bio(237).ndims=2;
bio(237).size=[];


bio(238).blkName='Process_Video_CMD/PVC_core/Rate Transition1';
bio(238).sigName='';
bio(238).portIdx=0;
bio(238).dim=[1,1];
bio(238).sigWidth=1;
bio(238).sigAddress='&dynamic_text_B.RateTransition1';
bio(238).ndims=2;
bio(238).size=[];


bio(239).blkName='Process_Video_CMD/PVC_core/Rate Transition2';
bio(239).sigName='';
bio(239).portIdx=0;
bio(239).dim=[59,70];
bio(239).sigWidth=4130;
bio(239).sigAddress='&dynamic_text_B.RateTransition2[0]';
bio(239).ndims=2;
bio(239).size=[];


bio(240).blkName='Process_Video_CMD/PVC_core/Rate Transition3';
bio(240).sigName='';
bio(240).portIdx=0;
bio(240).dim=[1,1];
bio(240).sigWidth=1;
bio(240).sigAddress='&dynamic_text_B.RateTransition3';
bio(240).ndims=2;
bio(240).size=[];


bio(241).blkName='Process_Video_CMD/PVC_core/Rate Transition4';
bio(241).sigName='';
bio(241).portIdx=0;
bio(241).dim=[1,1];
bio(241).sigWidth=1;
bio(241).sigAddress='&dynamic_text_B.RateTransition4_a';
bio(241).ndims=2;
bio(241).size=[];


bio(242).blkName='Process_Video_CMD/PVC_core/Rate Transition5';
bio(242).sigName='';
bio(242).portIdx=0;
bio(242).dim=[1,1];
bio(242).sigWidth=1;
bio(242).sigAddress='&dynamic_text_B.RateTransition5';
bio(242).ndims=2;
bio(242).size=[];


bio(243).blkName='DataLogging/Create Task State Subsystem/Counter Free-Running/Output';
bio(243).sigName='';
bio(243).portIdx=0;
bio(243).dim=[1,1];
bio(243).sigWidth=1;
bio(243).sigAddress='&dynamic_text_B.Output';
bio(243).ndims=2;
bio(243).size=[];


bio(244).blkName='DataLogging/Create Task State Subsystem/If Running/Compare';
bio(244).sigName='';
bio(244).portIdx=0;
bio(244).dim=[1,1];
bio(244).sigWidth=1;
bio(244).sigAddress='&dynamic_text_B.Compare';
bio(244).ndims=2;
bio(244).size=[];


bio(245).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Data Type Conversion';
bio(245).sigName='';
bio(245).portIdx=0;
bio(245).dim=[1,78];
bio(245).sigWidth=78;
bio(245).sigAddress='&dynamic_text_B.DataTypeConversion_p1[0]';
bio(245).ndims=2;
bio(245).size=[];


bio(246).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Ideal Frames Per Packet';
bio(246).sigName='';
bio(246).portIdx=0;
bio(246).dim=[1,1];
bio(246).sigWidth=1;
bio(246).sigAddress='&dynamic_text_B.IdealFramesPerPacket';
bio(246).ndims=2;
bio(246).size=[];


bio(247).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Math Function';
bio(247).sigName='';
bio(247).portIdx=0;
bio(247).dim=[1,1];
bio(247).sigWidth=1;
bio(247).sigAddress='&dynamic_text_B.MathFunction';
bio(247).ndims=2;
bio(247).size=[];


bio(248).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-1';
bio(248).sigName='';
bio(248).portIdx=0;
bio(248).dim=[1,78];
bio(248).sigWidth=78;
bio(248).sigAddress='&dynamic_text_B.t1[0]';
bio(248).ndims=2;
bio(248).size=[];


bio(249).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-2';
bio(249).sigName='';
bio(249).portIdx=0;
bio(249).dim=[1,78];
bio(249).sigWidth=78;
bio(249).sigAddress='&dynamic_text_B.t2[0]';
bio(249).ndims=2;
bio(249).size=[];


bio(250).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-3';
bio(250).sigName='';
bio(250).portIdx=0;
bio(250).dim=[1,78];
bio(250).sigWidth=78;
bio(250).sigAddress='&dynamic_text_B.t3[0]';
bio(250).ndims=2;
bio(250).size=[];


bio(251).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-4';
bio(251).sigName='';
bio(251).portIdx=0;
bio(251).dim=[1,78];
bio(251).sigWidth=78;
bio(251).sigAddress='&dynamic_text_B.t4[0]';
bio(251).ndims=2;
bio(251).size=[];


bio(252).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-5';
bio(252).sigName='';
bio(252).portIdx=0;
bio(252).dim=[1,78];
bio(252).sigWidth=78;
bio(252).sigAddress='&dynamic_text_B.t5[0]';
bio(252).ndims=2;
bio(252).size=[];


bio(253).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/MinMax';
bio(253).sigName='';
bio(253).portIdx=0;
bio(253).dim=[1,1];
bio(253).sigWidth=1;
bio(253).sigAddress='&dynamic_text_B.MinMax_k';
bio(253).ndims=2;
bio(253).size=[];


bio(254).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Product';
bio(254).sigName='';
bio(254).portIdx=0;
bio(254).dim=[1,1];
bio(254).sigWidth=1;
bio(254).sigAddress='&dynamic_text_B.Product_l';
bio(254).ndims=2;
bio(254).size=[];


bio(255).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Relational Operator';
bio(255).sigName='';
bio(255).portIdx=0;
bio(255).dim=[1,1];
bio(255).sigWidth=1;
bio(255).sigAddress='&dynamic_text_B.RelationalOperator';
bio(255).ndims=2;
bio(255).size=[];


bio(256).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Selector';
bio(256).sigName='';
bio(256).portIdx=0;
bio(256).dim=[1,300];
bio(256).sigWidth=300;
bio(256).sigAddress='&dynamic_text_B.Selector_e[0]';
bio(256).ndims=2;
bio(256).size=[];


bio(257).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Subtract';
bio(257).sigName='';
bio(257).portIdx=0;
bio(257).dim=[1,1];
bio(257).sigWidth=1;
bio(257).sigAddress='&dynamic_text_B.Subtract_o';
bio(257).ndims=2;
bio(257).size=[];


bio(258).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Width';
bio(258).sigName='';
bio(258).portIdx=0;
bio(258).dim=[1,1];
bio(258).sigWidth=1;
bio(258).sigAddress='&dynamic_text_B.Width_az';
bio(258).ndims=2;
bio(258).size=[];


bio(259).blkName='DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Pack';
bio(259).sigName='';
bio(259).portIdx=0;
bio(259).dim=[1224,1];
bio(259).sigWidth=1224;
bio(259).sigAddress='&dynamic_text_B.Pack_i[0]';
bio(259).ndims=2;
bio(259).size=[];


bio(260).blkName='DataLogging/Network Transfer Subsystem/is running/Compare';
bio(260).sigName='';
bio(260).portIdx=0;
bio(260).dim=[1,1];
bio(260).sigWidth=1;
bio(260).sigAddress='&dynamic_text_B.Compare_b';
bio(260).ndims=2;
bio(260).size=[];


bio(261).blkName='DataLogging/Poll Force Plates/plate1/parse packet 1/p1';
bio(261).sigName='forces';
bio(261).portIdx=0;
bio(261).dim=[3,1];
bio(261).sigWidth=3;
bio(261).sigAddress='&dynamic_text_B.forces_g[0]';
bio(261).ndims=2;
bio(261).size=[];


bio(262).blkName='DataLogging/Poll Force Plates/plate1/parse packet 1/p2';
bio(262).sigName='moments';
bio(262).portIdx=1;
bio(262).dim=[3,1];
bio(262).sigWidth=3;
bio(262).sigAddress='&dynamic_text_B.moments_p[0]';
bio(262).ndims=2;
bio(262).size=[];


bio(263).blkName='DataLogging/Poll Force Plates/plate1/parse packet 1/p3';
bio(263).sigName='timer';
bio(263).portIdx=2;
bio(263).dim=[1,1];
bio(263).sigWidth=1;
bio(263).sigAddress='&dynamic_text_B.timer_c';
bio(263).ndims=2;
bio(263).size=[];


bio(264).blkName='DataLogging/Poll Force Plates/plate1/Receive/p1';
bio(264).sigName='';
bio(264).portIdx=0;
bio(264).dim=[64,1];
bio(264).sigWidth=64;
bio(264).sigAddress='&dynamic_text_B.Receive_o1_k[0]';
bio(264).ndims=2;
bio(264).size=[];


bio(265).blkName='DataLogging/Poll Force Plates/plate1/Receive/p2';
bio(265).sigName='';
bio(265).portIdx=1;
bio(265).dim=[1,1];
bio(265).sigWidth=1;
bio(265).sigAddress='&dynamic_text_B.Receive_o2_m';
bio(265).ndims=2;
bio(265).size=[];


bio(266).blkName='DataLogging/Poll Force Plates/plate2/parse packet 1/p1';
bio(266).sigName='forces';
bio(266).portIdx=0;
bio(266).dim=[3,1];
bio(266).sigWidth=3;
bio(266).sigAddress='&dynamic_text_B.forces[0]';
bio(266).ndims=2;
bio(266).size=[];


bio(267).blkName='DataLogging/Poll Force Plates/plate2/parse packet 1/p2';
bio(267).sigName='moments';
bio(267).portIdx=1;
bio(267).dim=[3,1];
bio(267).sigWidth=3;
bio(267).sigAddress='&dynamic_text_B.moments[0]';
bio(267).ndims=2;
bio(267).size=[];


bio(268).blkName='DataLogging/Poll Force Plates/plate2/parse packet 1/p3';
bio(268).sigName='timer';
bio(268).portIdx=2;
bio(268).dim=[1,1];
bio(268).sigWidth=1;
bio(268).sigAddress='&dynamic_text_B.timer';
bio(268).ndims=2;
bio(268).size=[];


bio(269).blkName='DataLogging/Poll Force Plates/plate2/Receive1/p1';
bio(269).sigName='';
bio(269).portIdx=0;
bio(269).dim=[64,1];
bio(269).sigWidth=64;
bio(269).sigAddress='&dynamic_text_B.Receive1_o1[0]';
bio(269).ndims=2;
bio(269).size=[];


bio(270).blkName='DataLogging/Poll Force Plates/plate2/Receive1/p2';
bio(270).sigName='';
bio(270).portIdx=1;
bio(270).dim=[1,1];
bio(270).sigWidth=1;
bio(270).sigAddress='&dynamic_text_B.Receive1_o2';
bio(270).ndims=2;
bio(270).size=[];


bio(271).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/TypeCast';
bio(271).sigName='y';
bio(271).portIdx=0;
bio(271).dim=[1,1];
bio(271).sigWidth=1;
bio(271).sigAddress='&dynamic_text_B.y_i';
bio(271).ndims=2;
bio(271).size=[];


bio(272).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Data Type Conversion';
bio(272).sigName='';
bio(272).portIdx=0;
bio(272).dim=[1,1];
bio(272).sigWidth=1;
bio(272).sigAddress='&dynamic_text_B.DataTypeConversion_l';
bio(272).ndims=2;
bio(272).size=[];


bio(273).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/DPRAM Read Value';
bio(273).sigName='';
bio(273).portIdx=0;
bio(273).dim=[1,1];
bio(273).sigWidth=1;
bio(273).sigAddress='&dynamic_text_B.DPRAMReadValue';
bio(273).ndims=2;
bio(273).size=[];


bio(274).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Unit Delay';
bio(274).sigName='';
bio(274).portIdx=0;
bio(274).dim=[1,1];
bio(274).sigWidth=1;
bio(274).sigAddress='&dynamic_text_B.UnitDelay';
bio(274).ndims=2;
bio(274).size=[];


bio(275).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Unit Delay1';
bio(275).sigName='';
bio(275).portIdx=0;
bio(275).dim=[1,1];
bio(275).sigWidth=1;
bio(275).sigAddress='&dynamic_text_B.UnitDelay1';
bio(275).ndims=2;
bio(275).size=[];


bio(276).blkName='GUI Control/Task Execution Control Subsystem/Compare To Constant/Compare';
bio(276).sigName='';
bio(276).portIdx=0;
bio(276).dim=[1,1];
bio(276).sigWidth=1;
bio(276).sigAddress='&dynamic_text_B.Compare_f';
bio(276).ndims=2;
bio(276).size=[];


bio(277).blkName='DataLogging/Create Task State Subsystem/Counter Free-Running/Increment Real World/FixPt Sum1';
bio(277).sigName='';
bio(277).portIdx=0;
bio(277).dim=[1,1];
bio(277).sigWidth=1;
bio(277).sigAddress='&dynamic_text_B.FixPtSum1';
bio(277).ndims=2;
bio(277).size=[];


bio(278).blkName='DataLogging/Create Task State Subsystem/Counter Free-Running/Wrap To Zero/FixPt Switch';
bio(278).sigName='';
bio(278).portIdx=0;
bio(278).dim=[1,1];
bio(278).sigWidth=1;
bio(278).sigAddress='&dynamic_text_B.FixPtSwitch';
bio(278).ndims=2;
bio(278).size=[];


bio(279).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Counter/Sum';
bio(279).sigName='';
bio(279).portIdx=0;
bio(279).dim=[1,1];
bio(279).sigWidth=1;
bio(279).sigAddress='&dynamic_text_B.Sum';
bio(279).ndims=2;
bio(279).size=[];


bio(280).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Counter/Unit Delay';
bio(280).sigName='';
bio(280).portIdx=0;
bio(280).dim=[1,1];
bio(280).sigWidth=1;
bio(280).sigAddress='&dynamic_text_B.UnitDelay_h';
bio(280).ndims=2;
bio(280).size=[];


bio(281).blkName='DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Counter Free-Running/Output';
bio(281).sigName='';
bio(281).portIdx=0;
bio(281).dim=[1,1];
bio(281).sigWidth=1;
bio(281).sigAddress='&dynamic_text_B.Output_n';
bio(281).ndims=2;
bio(281).size=[];


bio(282).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Counter Free-Running/Output';
bio(282).sigName='';
bio(282).portIdx=0;
bio(282).dim=[1,1];
bio(282).sigWidth=1;
bio(282).sigAddress='&dynamic_text_B.Output_c';
bio(282).ndims=2;
bio(282).size=[];


bio(283).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Read DPRAM/Data Type Conversion';
bio(283).sigName='';
bio(283).portIdx=0;
bio(283).dim=[1,1];
bio(283).sigWidth=1;
bio(283).sigAddress='&dynamic_text_B.DataTypeConversion_n';
bio(283).ndims=2;
bio(283).size=[];


bio(284).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Read DPRAM/Data Type Conversion1';
bio(284).sigName='';
bio(284).portIdx=0;
bio(284).dim=[1,1];
bio(284).sigWidth=1;
bio(284).sigAddress='&dynamic_text_B.DataTypeConversion1_p';
bio(284).ndims=2;
bio(284).size=[];


bio(285).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Read DPRAM/Data Type Conversion2';
bio(285).sigName='';
bio(285).portIdx=0;
bio(285).dim=[1,1];
bio(285).sigWidth=1;
bio(285).sigAddress='&dynamic_text_B.DataTypeConversion2_c';
bio(285).ndims=2;
bio(285).size=[];


bio(286).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Read DPRAM/Read';
bio(286).sigName='';
bio(286).portIdx=0;
bio(286).dim=[1,1];
bio(286).sigWidth=1;
bio(286).sigAddress='&dynamic_text_B.Read';
bio(286).ndims=2;
bio(286).size=[];


bio(287).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Write DPRAM/Data Type Conversion';
bio(287).sigName='';
bio(287).portIdx=0;
bio(287).dim=[1,1];
bio(287).sigWidth=1;
bio(287).sigAddress='&dynamic_text_B.DataTypeConversion_pt';
bio(287).ndims=2;
bio(287).size=[];


bio(288).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Write DPRAM/Data Type Conversion1';
bio(288).sigName='';
bio(288).portIdx=0;
bio(288).dim=[1,1];
bio(288).sigWidth=1;
bio(288).sigAddress='&dynamic_text_B.DataTypeConversion1_a';
bio(288).ndims=2;
bio(288).size=[];


bio(289).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Create timestamp';
bio(289).sigName='timestamp_out';
bio(289).portIdx=0;
bio(289).dim=[1,1];
bio(289).sigWidth=1;
bio(289).sigAddress='&dynamic_text_B.sf_Createtimestamp.timestamp_out';
bio(289).ndims=2;
bio(289).size=[];


bio(290).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Data Type Conversion';
bio(290).sigName='';
bio(290).portIdx=0;
bio(290).dim=[6,1];
bio(290).sigWidth=6;
bio(290).sigAddress='&dynamic_text_B.DataTypeConversion_c[0]';
bio(290).ndims=2;
bio(290).size=[];


bio(291).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Byte Reversal';
bio(291).sigName='';
bio(291).portIdx=0;
bio(291).dim=[6,1];
bio(291).sigWidth=6;
bio(291).sigAddress='&dynamic_text_B.ByteReversal[0]';
bio(291).ndims=2;
bio(291).size=[];


bio(292).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Byte Reversal1';
bio(292).sigName='';
bio(292).portIdx=0;
bio(292).dim=[3,1];
bio(292).sigWidth=3;
bio(292).sigAddress='&dynamic_text_B.ByteReversal1[0]';
bio(292).ndims=2;
bio(292).size=[];


bio(293).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Receive from Robot 1 Force Sensor/p1';
bio(293).sigName='';
bio(293).portIdx=0;
bio(293).dim=[36,1];
bio(293).sigWidth=36;
bio(293).sigAddress='&dynamic_text_B.ReceivefromRobot1ForceSensor_o1[0]';
bio(293).ndims=2;
bio(293).size=[];


bio(294).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Receive from Robot 1 Force Sensor/p2';
bio(294).sigName='';
bio(294).portIdx=1;
bio(294).dim=[1,1];
bio(294).sigWidth=1;
bio(294).sigAddress='&dynamic_text_B.ReceivefromRobot1ForceSensor_o2';
bio(294).ndims=2;
bio(294).size=[];


bio(295).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Unpack/p1';
bio(295).sigName='';
bio(295).portIdx=0;
bio(295).dim=[3,1];
bio(295).sigWidth=3;
bio(295).sigAddress='&dynamic_text_B.Unpack_o1[0]';
bio(295).ndims=2;
bio(295).size=[];


bio(296).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Unpack/p2';
bio(296).sigName='';
bio(296).portIdx=1;
bio(296).dim=[6,1];
bio(296).sigWidth=6;
bio(296).sigAddress='&dynamic_text_B.Unpack_o2[0]';
bio(296).ndims=2;
bio(296).size=[];


bio(297).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Switch';
bio(297).sigName='';
bio(297).portIdx=0;
bio(297).dim=[7,1];
bio(297).sigWidth=7;
bio(297).sigAddress='&dynamic_text_B.Switch[0]';
bio(297).ndims=2;
bio(297).size=[];


bio(298).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Create timestamp';
bio(298).sigName='timestamp_out';
bio(298).portIdx=0;
bio(298).dim=[1,1];
bio(298).sigWidth=1;
bio(298).sigAddress='&dynamic_text_B.sf_Createtimestamp_l.timestamp_out';
bio(298).ndims=2;
bio(298).size=[];


bio(299).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Type Conversion1';
bio(299).sigName='';
bio(299).portIdx=0;
bio(299).dim=[6,1];
bio(299).sigWidth=6;
bio(299).sigAddress='&dynamic_text_B.DataTypeConversion1_o[0]';
bio(299).ndims=2;
bio(299).size=[];


bio(300).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Byte Reversal';
bio(300).sigName='';
bio(300).portIdx=0;
bio(300).dim=[6,1];
bio(300).sigWidth=6;
bio(300).sigAddress='&dynamic_text_B.ByteReversal_k[0]';
bio(300).ndims=2;
bio(300).size=[];


bio(301).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Byte Reversal1';
bio(301).sigName='';
bio(301).portIdx=0;
bio(301).dim=[3,1];
bio(301).sigWidth=3;
bio(301).sigAddress='&dynamic_text_B.ByteReversal1_h[0]';
bio(301).ndims=2;
bio(301).size=[];


bio(302).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Receive from Robot 2 Force Sensor/p1';
bio(302).sigName='';
bio(302).portIdx=0;
bio(302).dim=[36,1];
bio(302).sigWidth=36;
bio(302).sigAddress='&dynamic_text_B.ReceivefromRobot2ForceSensor_o1[0]';
bio(302).ndims=2;
bio(302).size=[];


bio(303).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Receive from Robot 2 Force Sensor/p2';
bio(303).sigName='';
bio(303).portIdx=1;
bio(303).dim=[1,1];
bio(303).sigWidth=1;
bio(303).sigAddress='&dynamic_text_B.ReceivefromRobot2ForceSensor_o2';
bio(303).ndims=2;
bio(303).size=[];


bio(304).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Unpack1/p1';
bio(304).sigName='';
bio(304).portIdx=0;
bio(304).dim=[3,1];
bio(304).sigWidth=3;
bio(304).sigAddress='&dynamic_text_B.Unpack1_o1[0]';
bio(304).ndims=2;
bio(304).size=[];


bio(305).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Unpack1/p2';
bio(305).sigName='';
bio(305).portIdx=1;
bio(305).dim=[6,1];
bio(305).sigWidth=6;
bio(305).sigAddress='&dynamic_text_B.Unpack1_o2[0]';
bio(305).ndims=2;
bio(305).size=[];


bio(306).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Switch1';
bio(306).sigName='';
bio(306).portIdx=0;
bio(306).dim=[7,1];
bio(306).sigWidth=7;
bio(306).sigAddress='&dynamic_text_B.Switch1[0]';
bio(306).ndims=2;
bio(306).size=[];


bio(307).blkName='DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Counter Free-Running/Increment Real World/FixPt Sum1';
bio(307).sigName='';
bio(307).portIdx=0;
bio(307).dim=[1,1];
bio(307).sigWidth=1;
bio(307).sigAddress='&dynamic_text_B.FixPtSum1_e';
bio(307).ndims=2;
bio(307).size=[];


bio(308).blkName='DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Counter Free-Running/Wrap To Zero/FixPt Switch';
bio(308).sigName='';
bio(308).portIdx=0;
bio(308).dim=[1,1];
bio(308).sigWidth=1;
bio(308).sigAddress='&dynamic_text_B.FixPtSwitch_d';
bio(308).ndims=2;
bio(308).size=[];


bio(309).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Counter Free-Running/Increment Real World/FixPt Sum1';
bio(309).sigName='';
bio(309).portIdx=0;
bio(309).dim=[1,1];
bio(309).sigWidth=1;
bio(309).sigAddress='&dynamic_text_B.FixPtSum1_d';
bio(309).ndims=2;
bio(309).size=[];


bio(310).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Counter Free-Running/Wrap To Zero/FixPt Switch';
bio(310).sigName='';
bio(310).portIdx=0;
bio(310).dim=[1,1];
bio(310).sigWidth=1;
bio(310).sigAddress='&dynamic_text_B.FixPtSwitch_p';
bio(310).ndims=2;
bio(310).size=[];


bio(311).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Detect Change/FixPt Relational Operator';
bio(311).sigName='';
bio(311).portIdx=0;
bio(311).dim=[1,1];
bio(311).sigWidth=1;
bio(311).sigAddress='&dynamic_text_B.FixPtRelationalOperator';
bio(311).ndims=2;
bio(311).size=[];


bio(312).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Detect Change/Delay Input1';
bio(312).sigName='U(k-1)';
bio(312).portIdx=0;
bio(312).dim=[1,1];
bio(312).sigWidth=1;
bio(312).sigAddress='&dynamic_text_B.Uk1';
bio(312).ndims=2;
bio(312).size=[];


bio(313).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Byte Reversal';
bio(313).sigName='';
bio(313).portIdx=0;
bio(313).dim=[1,1];
bio(313).sigWidth=1;
bio(313).sigAddress='&dynamic_text_B.ByteReversal_m4';
bio(313).ndims=2;
bio(313).size=[];


bio(314).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Byte Reversal1';
bio(314).sigName='';
bio(314).portIdx=0;
bio(314).dim=[1,1];
bio(314).sigWidth=1;
bio(314).sigAddress='&dynamic_text_B.ByteReversal1_m';
bio(314).ndims=2;
bio(314).size=[];


bio(315).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Byte Reversal2';
bio(315).sigName='';
bio(315).portIdx=0;
bio(315).dim=[1,1];
bio(315).sigWidth=1;
bio(315).sigAddress='&dynamic_text_B.ByteReversal2';
bio(315).ndims=2;
bio(315).size=[];


bio(316).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Pack';
bio(316).sigName='';
bio(316).portIdx=0;
bio(316).dim=[8,1];
bio(316).sigWidth=8;
bio(316).sigAddress='&dynamic_text_B.Pack_c5[0]';
bio(316).ndims=2;
bio(316).size=[];


bio(317).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Switch';
bio(317).sigName='';
bio(317).portIdx=0;
bio(317).dim=[1,1];
bio(317).sigWidth=1;
bio(317).sigAddress='&dynamic_text_B.Switch_e';
bio(317).ndims=2;
bio(317).size=[];


bio(318).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Byte Reversal';
bio(318).sigName='';
bio(318).portIdx=0;
bio(318).dim=[1,1];
bio(318).sigWidth=1;
bio(318).sigAddress='&dynamic_text_B.ByteReversal_kp';
bio(318).ndims=2;
bio(318).size=[];


bio(319).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Byte Reversal1';
bio(319).sigName='';
bio(319).portIdx=0;
bio(319).dim=[1,1];
bio(319).sigWidth=1;
bio(319).sigAddress='&dynamic_text_B.ByteReversal1_b';
bio(319).ndims=2;
bio(319).size=[];


bio(320).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Byte Reversal2';
bio(320).sigName='';
bio(320).portIdx=0;
bio(320).dim=[1,1];
bio(320).sigWidth=1;
bio(320).sigAddress='&dynamic_text_B.ByteReversal2_l';
bio(320).ndims=2;
bio(320).size=[];


bio(321).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Pack';
bio(321).sigName='';
bio(321).portIdx=0;
bio(321).dim=[8,1];
bio(321).sigWidth=8;
bio(321).sigAddress='&dynamic_text_B.Pack_l[0]';
bio(321).ndims=2;
bio(321).size=[];


bio(322).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Switch';
bio(322).sigName='';
bio(322).portIdx=0;
bio(322).dim=[1,1];
bio(322).sigWidth=1;
bio(322).sigAddress='&dynamic_text_B.Switch_l';
bio(322).ndims=2;
bio(322).size=[];


bio(323).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Detect Change/FixPt Relational Operator';
bio(323).sigName='';
bio(323).portIdx=0;
bio(323).dim=[1,1];
bio(323).sigWidth=1;
bio(323).sigAddress='&dynamic_text_B.FixPtRelationalOperator_e';
bio(323).ndims=2;
bio(323).size=[];


bio(324).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Detect Change/Delay Input1';
bio(324).sigName='U(k-1)';
bio(324).portIdx=0;
bio(324).dim=[1,1];
bio(324).sigWidth=1;
bio(324).sigAddress='&dynamic_text_B.Uk1_a';
bio(324).ndims=2;
bio(324).size=[];


function len = getlenBIO
len = 324;

