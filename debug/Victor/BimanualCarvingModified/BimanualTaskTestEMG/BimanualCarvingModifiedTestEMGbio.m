function bio=BimanualCarvingModifiedTestEMGbio
bio = [];
bio(1).blkName='MATLAB Function';
bio(1).sigName='resid';
bio(1).portIdx=0;
bio(1).dim=[16,1];
bio(1).sigWidth=16;
bio(1).sigAddress='&BimanualCarvingModifiedTestEMG_B.resid[0]';
bio(1).ndims=2;
bio(1).size=[];

bio(getlenBIO) = bio(1);

bio(2).blkName='MATLAB Function1/p1';
bio(2).sigName='HandAtStart';
bio(2).portIdx=0;
bio(2).dim=[1,1];
bio(2).sigWidth=1;
bio(2).sigAddress='&BimanualCarvingModifiedTestEMG_B.HandAtStart';
bio(2).ndims=2;
bio(2).size=[];


bio(3).blkName='MATLAB Function1/p2';
bio(3).sigName='HandAtFinish';
bio(3).portIdx=1;
bio(3).dim=[1,1];
bio(3).sigWidth=1;
bio(3).sigAddress='&BimanualCarvingModifiedTestEMG_B.HandAtFinish';
bio(3).ndims=2;
bio(3).size=[];


bio(4).blkName='MATLAB Function1/p3';
bio(4).sigName='xStart';
bio(4).portIdx=2;
bio(4).dim=[1,1];
bio(4).sigWidth=1;
bio(4).sigAddress='&BimanualCarvingModifiedTestEMG_B.xStart';
bio(4).ndims=2;
bio(4).size=[];


bio(5).blkName='MATLAB Function1/p4';
bio(5).sigName='yStart';
bio(5).portIdx=3;
bio(5).dim=[1,1];
bio(5).sigWidth=1;
bio(5).sigAddress='&BimanualCarvingModifiedTestEMG_B.yStart';
bio(5).ndims=2;
bio(5).size=[];


bio(6).blkName='MATLAB Function1/p5';
bio(6).sigName='HandVelXR';
bio(6).portIdx=4;
bio(6).dim=[1,1];
bio(6).sigWidth=1;
bio(6).sigAddress='&BimanualCarvingModifiedTestEMG_B.HandVelXR';
bio(6).ndims=2;
bio(6).size=[];


bio(7).blkName='MATLAB Function1/p6';
bio(7).sigName='HandVelYR';
bio(7).portIdx=5;
bio(7).dim=[1,1];
bio(7).sigWidth=1;
bio(7).sigAddress='&BimanualCarvingModifiedTestEMG_B.HandVelYR';
bio(7).ndims=2;
bio(7).size=[];


bio(8).blkName='MATLAB Function1/p7';
bio(8).sigName='HandVelXL';
bio(8).portIdx=6;
bio(8).dim=[1,1];
bio(8).sigWidth=1;
bio(8).sigAddress='&BimanualCarvingModifiedTestEMG_B.HandVelXL';
bio(8).ndims=2;
bio(8).size=[];


bio(9).blkName='MATLAB Function1/p8';
bio(9).sigName='HandVelYL';
bio(9).portIdx=7;
bio(9).dim=[1,1];
bio(9).sigWidth=1;
bio(9).sigAddress='&BimanualCarvingModifiedTestEMG_B.HandVelYL';
bio(9).ndims=2;
bio(9).size=[];


bio(10).blkName='MATLAB Function1/p9';
bio(10).sigName='HandDistance';
bio(10).portIdx=8;
bio(10).dim=[1,1];
bio(10).sigWidth=1;
bio(10).sigAddress='&BimanualCarvingModifiedTestEMG_B.HandDistance';
bio(10).ndims=2;
bio(10).size=[];


bio(11).blkName='MATLAB Function1/p10';
bio(11).sigName='yFinish';
bio(11).portIdx=9;
bio(11).dim=[1,1];
bio(11).sigWidth=1;
bio(11).sigAddress='&BimanualCarvingModifiedTestEMG_B.yFinish';
bio(11).ndims=2;
bio(11).size=[];


bio(12).blkName='Trial_Control/p1';
bio(12).sigName='logging_enable';
bio(12).portIdx=0;
bio(12).dim=[1,1];
bio(12).sigWidth=1;
bio(12).sigAddress='&BimanualCarvingModifiedTestEMG_B.logging_enable';
bio(12).ndims=2;
bio(12).size=[];


bio(13).blkName='Trial_Control/p2';
bio(13).sigName='trial_state';
bio(13).portIdx=1;
bio(13).dim=[1,1];
bio(13).sigWidth=1;
bio(13).sigAddress='&BimanualCarvingModifiedTestEMG_B.trial_state';
bio(13).ndims=2;
bio(13).size=[];


bio(14).blkName='Trial_Control/p3';
bio(14).sigName='ForceOn';
bio(14).portIdx=2;
bio(14).dim=[1,1];
bio(14).sigWidth=1;
bio(14).sigAddress='&BimanualCarvingModifiedTestEMG_B.ForceOn';
bio(14).ndims=2;
bio(14).size=[];


bio(15).blkName='Trial_Control/p4';
bio(15).sigName='EMG_trigger';
bio(15).portIdx=3;
bio(15).dim=[1,1];
bio(15).sigWidth=1;
bio(15).sigAddress='&BimanualCarvingModifiedTestEMG_B.EMG_trigger';
bio(15).ndims=2;
bio(15).size=[];


bio(16).blkName='Trial_Control/p5';
bio(16).sigName='minEMG_on';
bio(16).portIdx=4;
bio(16).dim=[1,1];
bio(16).sigWidth=1;
bio(16).sigAddress='&BimanualCarvingModifiedTestEMG_B.minEMG_on';
bio(16).ndims=2;
bio(16).size=[];


bio(17).blkName='Trial_Control/p6';
bio(17).sigName='maxEMG_on';
bio(17).portIdx=5;
bio(17).dim=[1,1];
bio(17).sigWidth=1;
bio(17).sigAddress='&BimanualCarvingModifiedTestEMG_B.maxEMG_on';
bio(17).ndims=2;
bio(17).size=[];


bio(18).blkName='Trial_Control/p7';
bio(18).sigName='normalizeEMG_on';
bio(18).portIdx=6;
bio(18).dim=[1,1];
bio(18).sigWidth=1;
bio(18).sigAddress='&BimanualCarvingModifiedTestEMG_B.normalizeEMG_on';
bio(18).ndims=2;
bio(18).size=[];


bio(19).blkName='Trial_Control/p8';
bio(19).sigName='event_code';
bio(19).portIdx=7;
bio(19).dim=[1,1];
bio(19).sigWidth=1;
bio(19).sigAddress='&BimanualCarvingModifiedTestEMG_B.event_code';
bio(19).ndims=2;
bio(19).size=[];


bio(20).blkName='Trial_Control/p9';
bio(20).sigName='e_Trial_End';
bio(20).portIdx=8;
bio(20).dim=[1,1];
bio(20).sigWidth=1;
bio(20).sigAddress='&BimanualCarvingModifiedTestEMG_B.e_Trial_End';
bio(20).ndims=2;
bio(20).size=[];


bio(21).blkName='emgScoreVCode/p1';
bio(21).sigName='VCODE_out';
bio(21).portIdx=0;
bio(21).dim=[1,70];
bio(21).sigWidth=70;
bio(21).sigAddress='&BimanualCarvingModifiedTestEMG_B.VCODE_out_a[0]';
bio(21).ndims=2;
bio(21).size=[];


bio(22).blkName='emgScoreVCode/p2';
bio(22).sigName='R2_real';
bio(22).portIdx=1;
bio(22).dim=[1,1];
bio(22).sigWidth=1;
bio(22).sigAddress='&BimanualCarvingModifiedTestEMG_B.R2_real';
bio(22).ndims=2;
bio(22).size=[];


bio(23).blkName='emgScoreVCode1';
bio(23).sigName='VCODE_out';
bio(23).portIdx=0;
bio(23).dim=[1,70];
bio(23).sigWidth=70;
bio(23).sigAddress='&BimanualCarvingModifiedTestEMG_B.VCODE_out[0]';
bio(23).ndims=2;
bio(23).size=[];


bio(24).blkName='emgScoreVCode2';
bio(24).sigName='randomScore';
bio(24).portIdx=0;
bio(24).dim=[1,1];
bio(24).sigWidth=1;
bio(24).sigAddress='&BimanualCarvingModifiedTestEMG_B.randomScore';
bio(24).ndims=2;
bio(24).size=[];


bio(25).blkName='function/p1';
bio(25).sigName='MaterialPos';
bio(25).portIdx=0;
bio(25).dim=[2,40];
bio(25).sigWidth=80;
bio(25).sigAddress='&BimanualCarvingModifiedTestEMG_B.MaterialPos[0]';
bio(25).ndims=2;
bio(25).size=[];


bio(26).blkName='function/p2';
bio(26).sigName='MaterialTargetPos';
bio(26).portIdx=1;
bio(26).dim=[2,2];
bio(26).sigWidth=4;
bio(26).sigAddress='&BimanualCarvingModifiedTestEMG_B.MaterialTargetPos[0]';
bio(26).ndims=2;
bio(26).size=[];


bio(27).blkName='function/p3';
bio(27).sigName='MaterialUpdateInd1';
bio(27).portIdx=2;
bio(27).dim=[1,1];
bio(27).sigWidth=1;
bio(27).sigAddress='&BimanualCarvingModifiedTestEMG_B.MaterialUpdateInd1';
bio(27).ndims=2;
bio(27).size=[];


bio(28).blkName='function/p4';
bio(28).sigName='MaterialUpdateInd2';
bio(28).portIdx=3;
bio(28).dim=[1,1];
bio(28).sigWidth=1;
bio(28).sigAddress='&BimanualCarvingModifiedTestEMG_B.MaterialUpdateInd2';
bio(28).ndims=2;
bio(28).size=[];


bio(29).blkName='function/p5';
bio(29).sigName='xForceRobotL';
bio(29).portIdx=4;
bio(29).dim=[1,1];
bio(29).sigWidth=1;
bio(29).sigAddress='&BimanualCarvingModifiedTestEMG_B.xForceRobotL';
bio(29).ndims=2;
bio(29).size=[];


bio(30).blkName='function/p6';
bio(30).sigName='yForceRobotL';
bio(30).portIdx=5;
bio(30).dim=[1,1];
bio(30).sigWidth=1;
bio(30).sigAddress='&BimanualCarvingModifiedTestEMG_B.yForceRobotL';
bio(30).ndims=2;
bio(30).size=[];


bio(31).blkName='function/p7';
bio(31).sigName='xForceRobotR';
bio(31).portIdx=6;
bio(31).dim=[1,1];
bio(31).sigWidth=1;
bio(31).sigAddress='&BimanualCarvingModifiedTestEMG_B.xForceRobotR';
bio(31).ndims=2;
bio(31).size=[];


bio(32).blkName='function/p8';
bio(32).sigName='yForceRobotR';
bio(32).portIdx=7;
bio(32).dim=[1,1];
bio(32).sigWidth=1;
bio(32).sigAddress='&BimanualCarvingModifiedTestEMG_B.yForceRobotR';
bio(32).ndims=2;
bio(32).size=[];


bio(33).blkName='function/p9';
bio(33).sigName='yWall';
bio(33).portIdx=8;
bio(33).dim=[1,1];
bio(33).sigWidth=1;
bio(33).sigAddress='&BimanualCarvingModifiedTestEMG_B.yWall';
bio(33).ndims=2;
bio(33).size=[];


bio(34).blkName='function/p10';
bio(34).sigName='materialPosY';
bio(34).portIdx=9;
bio(34).dim=[1,30];
bio(34).sigWidth=30;
bio(34).sigAddress='&BimanualCarvingModifiedTestEMG_B.materialPosY[0]';
bio(34).ndims=2;
bio(34).size=[];


bio(35).blkName='function/p11';
bio(35).sigName='smoothnessScore';
bio(35).portIdx=10;
bio(35).dim=[1,1];
bio(35).sigWidth=1;
bio(35).sigAddress='&BimanualCarvingModifiedTestEMG_B.smoothnessScore';
bio(35).ndims=2;
bio(35).size=[];


bio(36).blkName='function/p12';
bio(36).sigName='baseScore';
bio(36).portIdx=11;
bio(36).dim=[1,1];
bio(36).sigWidth=1;
bio(36).sigAddress='&BimanualCarvingModifiedTestEMG_B.baseScore';
bio(36).ndims=2;
bio(36).size=[];


bio(37).blkName='sample_buffer/p1';
bio(37).sigName='res_history';
bio(37).portIdx=0;
bio(37).dim=[1,100];
bio(37).sigWidth=100;
bio(37).sigAddress='&BimanualCarvingModifiedTestEMG_B.res_history[0]';
bio(37).ndims=2;
bio(37).size=[];


bio(38).blkName='sample_buffer/p2';
bio(38).sigName='d_history';
bio(38).portIdx=1;
bio(38).dim=[16,100];
bio(38).sigWidth=1600;
bio(38).sigAddress='&BimanualCarvingModifiedTestEMG_B.d_history[0]';
bio(38).ndims=2;
bio(38).size=[];


bio(39).blkName='Matrix Concatenate';
bio(39).sigName='';
bio(39).portIdx=0;
bio(39).dim=[50,70];
bio(39).sigWidth=3500;
bio(39).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenate[0]';
bio(39).ndims=2;
bio(39).size=[];


bio(40).blkName='Constant6';
bio(40).sigName='';
bio(40).portIdx=0;
bio(40).dim=[1,1];
bio(40).sigWidth=1;
bio(40).sigAddress='&BimanualCarvingModifiedTestEMG_B.Constant6';
bio(40).ndims=2;
bio(40).size=[];


bio(41).blkName='Gain';
bio(41).sigName='';
bio(41).portIdx=0;
bio(41).dim=[1,1];
bio(41).sigWidth=1;
bio(41).sigAddress='&BimanualCarvingModifiedTestEMG_B.Gain';
bio(41).ndims=2;
bio(41).size=[];


bio(42).blkName='Selector1';
bio(42).sigName='';
bio(42).portIdx=0;
bio(42).dim=[1,1];
bio(42).sigWidth=1;
bio(42).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector1';
bio(42).ndims=2;
bio(42).size=[];


bio(43).blkName='Selector10';
bio(43).sigName='';
bio(43).portIdx=0;
bio(43).dim=[1,1];
bio(43).sigWidth=1;
bio(43).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector10';
bio(43).ndims=2;
bio(43).size=[];


bio(44).blkName='Selector11';
bio(44).sigName='';
bio(44).portIdx=0;
bio(44).dim=[1,1];
bio(44).sigWidth=1;
bio(44).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector11';
bio(44).ndims=2;
bio(44).size=[];


bio(45).blkName='Selector12';
bio(45).sigName='';
bio(45).portIdx=0;
bio(45).dim=[1,1];
bio(45).sigWidth=1;
bio(45).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector12';
bio(45).ndims=2;
bio(45).size=[];


bio(46).blkName='Selector13';
bio(46).sigName='';
bio(46).portIdx=0;
bio(46).dim=[1,1];
bio(46).sigWidth=1;
bio(46).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector13';
bio(46).ndims=2;
bio(46).size=[];


bio(47).blkName='Selector17';
bio(47).sigName='';
bio(47).portIdx=0;
bio(47).dim=[1,1];
bio(47).sigWidth=1;
bio(47).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector17';
bio(47).ndims=2;
bio(47).size=[];


bio(48).blkName='Selector2';
bio(48).sigName='';
bio(48).portIdx=0;
bio(48).dim=[1,20];
bio(48).sigWidth=20;
bio(48).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector2[0]';
bio(48).ndims=2;
bio(48).size=[];


bio(49).blkName='Selector3';
bio(49).sigName='';
bio(49).portIdx=0;
bio(49).dim=[1,1];
bio(49).sigWidth=1;
bio(49).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector3';
bio(49).ndims=2;
bio(49).size=[];


bio(50).blkName='Selector4';
bio(50).sigName='';
bio(50).portIdx=0;
bio(50).dim=[1,1];
bio(50).sigWidth=1;
bio(50).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector4';
bio(50).ndims=2;
bio(50).size=[];


bio(51).blkName='Selector5';
bio(51).sigName='';
bio(51).portIdx=0;
bio(51).dim=[1,1];
bio(51).sigWidth=1;
bio(51).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector5';
bio(51).ndims=2;
bio(51).size=[];


bio(52).blkName='Selector6';
bio(52).sigName='';
bio(52).portIdx=0;
bio(52).dim=[1,1];
bio(52).sigWidth=1;
bio(52).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector6';
bio(52).ndims=2;
bio(52).size=[];


bio(53).blkName='Selector7';
bio(53).sigName='';
bio(53).portIdx=0;
bio(53).dim=[1,1];
bio(53).sigWidth=1;
bio(53).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector7';
bio(53).ndims=2;
bio(53).size=[];


bio(54).blkName='Selector8';
bio(54).sigName='';
bio(54).portIdx=0;
bio(54).dim=[1,1];
bio(54).sigWidth=1;
bio(54).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector8';
bio(54).ndims=2;
bio(54).size=[];


bio(55).blkName='Selector9';
bio(55).sigName='';
bio(55).portIdx=0;
bio(55).dim=[1,1];
bio(55).sigWidth=1;
bio(55).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector9';
bio(55).ndims=2;
bio(55).size=[];


bio(56).blkName='Analog Inputs1/p1';
bio(56).sigName='';
bio(56).portIdx=0;
bio(56).dim=[1,1];
bio(56).sigWidth=1;
bio(56).sigAddress='&BimanualCarvingModifiedTestEMG_B.AnalogInputs1_o1';
bio(56).ndims=2;
bio(56).size=[];


bio(57).blkName='Analog Inputs1/p2';
bio(57).sigName='';
bio(57).portIdx=1;
bio(57).dim=[1,1];
bio(57).sigWidth=1;
bio(57).sigAddress='&BimanualCarvingModifiedTestEMG_B.AnalogInputs1_o2';
bio(57).ndims=2;
bio(57).size=[];


bio(58).blkName='Analog Inputs1/p3';
bio(58).sigName='';
bio(58).portIdx=2;
bio(58).dim=[1,1];
bio(58).sigWidth=1;
bio(58).sigAddress='&BimanualCarvingModifiedTestEMG_B.AnalogInputs1_o3';
bio(58).ndims=2;
bio(58).size=[];


bio(59).blkName='Analog Inputs1/p4';
bio(59).sigName='';
bio(59).portIdx=3;
bio(59).dim=[1,1];
bio(59).sigWidth=1;
bio(59).sigAddress='&BimanualCarvingModifiedTestEMG_B.AnalogInputs1_o4';
bio(59).ndims=2;
bio(59).size=[];


bio(60).blkName='Analog Inputs1/p5';
bio(60).sigName='';
bio(60).portIdx=4;
bio(60).dim=[1,1];
bio(60).sigWidth=1;
bio(60).sigAddress='&BimanualCarvingModifiedTestEMG_B.AnalogInputs1_o5';
bio(60).ndims=2;
bio(60).size=[];


bio(61).blkName='Analog Inputs1/p6';
bio(61).sigName='';
bio(61).portIdx=5;
bio(61).dim=[1,1];
bio(61).sigWidth=1;
bio(61).sigAddress='&BimanualCarvingModifiedTestEMG_B.AnalogInputs1_o6';
bio(61).ndims=2;
bio(61).size=[];


bio(62).blkName='Analog Inputs1/p7';
bio(62).sigName='';
bio(62).portIdx=6;
bio(62).dim=[1,1];
bio(62).sigWidth=1;
bio(62).sigAddress='&BimanualCarvingModifiedTestEMG_B.AnalogInputs1_o7';
bio(62).ndims=2;
bio(62).size=[];


bio(63).blkName='Analog Inputs1/p8';
bio(63).sigName='';
bio(63).portIdx=7;
bio(63).dim=[1,1];
bio(63).sigWidth=1;
bio(63).sigAddress='&BimanualCarvingModifiedTestEMG_B.AnalogInputs1_o8';
bio(63).ndims=2;
bio(63).size=[];


bio(64).blkName='Analog Inputs1/p9';
bio(64).sigName='';
bio(64).portIdx=8;
bio(64).dim=[1,1];
bio(64).sigWidth=1;
bio(64).sigAddress='&BimanualCarvingModifiedTestEMG_B.AnalogInputs1_o9';
bio(64).ndims=2;
bio(64).size=[];


bio(65).blkName='Analog Inputs1/p10';
bio(65).sigName='';
bio(65).portIdx=9;
bio(65).dim=[1,1];
bio(65).sigWidth=1;
bio(65).sigAddress='&BimanualCarvingModifiedTestEMG_B.AnalogInputs1_o10';
bio(65).ndims=2;
bio(65).size=[];


bio(66).blkName='Analog Inputs1/p11';
bio(66).sigName='';
bio(66).portIdx=10;
bio(66).dim=[1,1];
bio(66).sigWidth=1;
bio(66).sigAddress='&BimanualCarvingModifiedTestEMG_B.AnalogInputs1_o11';
bio(66).ndims=2;
bio(66).size=[];


bio(67).blkName='Analog Inputs1/p12';
bio(67).sigName='';
bio(67).portIdx=11;
bio(67).dim=[1,1];
bio(67).sigWidth=1;
bio(67).sigAddress='&BimanualCarvingModifiedTestEMG_B.AnalogInputs1_o12';
bio(67).ndims=2;
bio(67).size=[];


bio(68).blkName='Analog Inputs1/p13';
bio(68).sigName='';
bio(68).portIdx=12;
bio(68).dim=[1,1];
bio(68).sigWidth=1;
bio(68).sigAddress='&BimanualCarvingModifiedTestEMG_B.AnalogInputs1_o13';
bio(68).ndims=2;
bio(68).size=[];


bio(69).blkName='Analog Inputs1/p14';
bio(69).sigName='';
bio(69).portIdx=13;
bio(69).dim=[1,1];
bio(69).sigWidth=1;
bio(69).sigAddress='&BimanualCarvingModifiedTestEMG_B.AnalogInputs1_o14';
bio(69).ndims=2;
bio(69).size=[];


bio(70).blkName='Analog Inputs1/p15';
bio(70).sigName='';
bio(70).portIdx=14;
bio(70).dim=[1,1];
bio(70).sigWidth=1;
bio(70).sigAddress='&BimanualCarvingModifiedTestEMG_B.AnalogInputs1_o15';
bio(70).ndims=2;
bio(70).size=[];


bio(71).blkName='Analog Inputs1/p16';
bio(71).sigName='';
bio(71).portIdx=15;
bio(71).dim=[1,1];
bio(71).sigWidth=1;
bio(71).sigAddress='&BimanualCarvingModifiedTestEMG_B.AnalogInputs1_o16';
bio(71).ndims=2;
bio(71).size=[];


bio(72).blkName='Compare To Constant/Compare';
bio(72).sigName='';
bio(72).portIdx=0;
bio(72).dim=[1,1];
bio(72).sigWidth=1;
bio(72).sigAddress='&BimanualCarvingModifiedTestEMG_B.Compare_fm';
bio(72).ndims=2;
bio(72).size=[];


bio(73).blkName='Compare To Constant1/Compare';
bio(73).sigName='';
bio(73).portIdx=0;
bio(73).dim=[1,1];
bio(73).sigWidth=1;
bio(73).sigAddress='&BimanualCarvingModifiedTestEMG_B.Compare_o';
bio(73).ndims=2;
bio(73).size=[];


bio(74).blkName='Draw_Hand_Endpoint/MATLAB Function';
bio(74).sigName='VCODE';
bio(74).portIdx=0;
bio(74).dim=[2,70];
bio(74).sigWidth=140;
bio(74).sigAddress='&BimanualCarvingModifiedTestEMG_B.VCODE_n[0]';
bio(74).ndims=2;
bio(74).size=[];


bio(75).blkName='Draw_Hand_Endpoint/Matrix Concatenation';
bio(75).sigName='';
bio(75).portIdx=0;
bio(75).dim=[5,11];
bio(75).sigWidth=55;
bio(75).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_k[0]';
bio(75).ndims=2;
bio(75).size=[];


bio(76).blkName='Draw_Hand_Endpoint/Matrix Concatenation1';
bio(76).sigName='';
bio(76).portIdx=0;
bio(76).dim=[5,11];
bio(76).sigWidth=55;
bio(76).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_k[0]';
bio(76).ndims=2;
bio(76).size=[];


bio(77).blkName='Draw_Hand_Endpoint/padder';
bio(77).sigName='';
bio(77).portIdx=0;
bio(77).dim=[5,11];
bio(77).sigWidth=55;
bio(77).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_k[0]';
bio(77).ndims=2;
bio(77).size=[];


bio(78).blkName='Draw_Hand_Endpoint/Selector';
bio(78).sigName='';
bio(78).portIdx=0;
bio(78).dim=[1,25];
bio(78).sigWidth=25;
bio(78).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector_l[0]';
bio(78).ndims=2;
bio(78).size=[];


bio(79).blkName='Draw_Material/MATLAB Function';
bio(79).sigName='VCODE';
bio(79).portIdx=0;
bio(79).dim=[39,70];
bio(79).sigWidth=2730;
bio(79).sigAddress='&BimanualCarvingModifiedTestEMG_B.VCODE_j[0]';
bio(79).ndims=2;
bio(79).size=[];


bio(80).blkName='Draw_Material/Matrix Concatenation';
bio(80).sigName='';
bio(80).portIdx=0;
bio(80).dim=[5,11];
bio(80).sigWidth=55;
bio(80).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_h[0]';
bio(80).ndims=2;
bio(80).size=[];


bio(81).blkName='Draw_Material/Matrix Concatenation1';
bio(81).sigName='';
bio(81).portIdx=0;
bio(81).dim=[5,11];
bio(81).sigWidth=55;
bio(81).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_h[0]';
bio(81).ndims=2;
bio(81).size=[];


bio(82).blkName='Draw_Material/padder';
bio(82).sigName='';
bio(82).portIdx=0;
bio(82).dim=[5,11];
bio(82).sigWidth=55;
bio(82).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_h[0]';
bio(82).ndims=2;
bio(82).size=[];


bio(83).blkName='Draw_Material/Selector';
bio(83).sigName='';
bio(83).portIdx=0;
bio(83).dim=[1,25];
bio(83).sigWidth=25;
bio(83).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector_n[0]';
bio(83).ndims=2;
bio(83).size=[];


bio(84).blkName='Draw_MaterialTarget/MATLAB Function';
bio(84).sigName='VCODE';
bio(84).portIdx=0;
bio(84).dim=[1,70];
bio(84).sigWidth=70;
bio(84).sigAddress='&BimanualCarvingModifiedTestEMG_B.VCODE_gg[0]';
bio(84).ndims=2;
bio(84).size=[];


bio(85).blkName='Draw_MaterialTarget/Matrix Concatenation';
bio(85).sigName='';
bio(85).portIdx=0;
bio(85).dim=[5,11];
bio(85).sigWidth=55;
bio(85).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_e[0]';
bio(85).ndims=2;
bio(85).size=[];


bio(86).blkName='Draw_MaterialTarget/Matrix Concatenation1';
bio(86).sigName='';
bio(86).portIdx=0;
bio(86).dim=[5,11];
bio(86).sigWidth=55;
bio(86).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_e[0]';
bio(86).ndims=2;
bio(86).size=[];


bio(87).blkName='Draw_MaterialTarget/padder';
bio(87).sigName='';
bio(87).portIdx=0;
bio(87).dim=[5,11];
bio(87).sigWidth=55;
bio(87).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_e[0]';
bio(87).ndims=2;
bio(87).size=[];


bio(88).blkName='Draw_MaterialTarget/Selector';
bio(88).sigName='';
bio(88).portIdx=0;
bio(88).dim=[1,25];
bio(88).sigWidth=25;
bio(88).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector_f[0]';
bio(88).ndims=2;
bio(88).size=[];


bio(89).blkName='Draw_Start/MATLAB Function';
bio(89).sigName='VCODE';
bio(89).portIdx=0;
bio(89).dim=[2,70];
bio(89).sigWidth=140;
bio(89).sigAddress='&BimanualCarvingModifiedTestEMG_B.VCODE_o[0]';
bio(89).ndims=2;
bio(89).size=[];


bio(90).blkName='Draw_Start/Matrix Concatenation';
bio(90).sigName='';
bio(90).portIdx=0;
bio(90).dim=[5,11];
bio(90).sigWidth=55;
bio(90).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_d[0]';
bio(90).ndims=2;
bio(90).size=[];


bio(91).blkName='Draw_Start/Matrix Concatenation1';
bio(91).sigName='';
bio(91).portIdx=0;
bio(91).dim=[5,11];
bio(91).sigWidth=55;
bio(91).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_d[0]';
bio(91).ndims=2;
bio(91).size=[];


bio(92).blkName='Draw_Start/padder';
bio(92).sigName='';
bio(92).portIdx=0;
bio(92).dim=[5,11];
bio(92).sigWidth=55;
bio(92).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_d[0]';
bio(92).ndims=2;
bio(92).size=[];


bio(93).blkName='Draw_Start/Selector';
bio(93).sigName='';
bio(93).portIdx=0;
bio(93).dim=[1,25];
bio(93).sigWidth=25;
bio(93).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector_g[0]';
bio(93).ndims=2;
bio(93).size=[];


bio(94).blkName='Draw_finish_line/MATLAB Function';
bio(94).sigName='VCODE';
bio(94).portIdx=0;
bio(94).dim=[1,70];
bio(94).sigWidth=70;
bio(94).sigAddress='&BimanualCarvingModifiedTestEMG_B.VCODE_h[0]';
bio(94).ndims=2;
bio(94).size=[];


bio(95).blkName='Draw_finish_line/Matrix Concatenation';
bio(95).sigName='';
bio(95).portIdx=0;
bio(95).dim=[5,11];
bio(95).sigWidth=55;
bio(95).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_m[0]';
bio(95).ndims=2;
bio(95).size=[];


bio(96).blkName='Draw_finish_line/Matrix Concatenation1';
bio(96).sigName='';
bio(96).portIdx=0;
bio(96).dim=[5,11];
bio(96).sigWidth=55;
bio(96).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_m[0]';
bio(96).ndims=2;
bio(96).size=[];


bio(97).blkName='Draw_finish_line/padder';
bio(97).sigName='';
bio(97).portIdx=0;
bio(97).dim=[5,11];
bio(97).sigWidth=55;
bio(97).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_m[0]';
bio(97).ndims=2;
bio(97).size=[];


bio(98).blkName='Draw_finish_line/Selector';
bio(98).sigName='';
bio(98).portIdx=0;
bio(98).dim=[1,25];
bio(98).sigWidth=25;
bio(98).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector_i[0]';
bio(98).ndims=2;
bio(98).size=[];


bio(99).blkName='Draw_message/MATLAB Function';
bio(99).sigName='VCODE';
bio(99).portIdx=0;
bio(99).dim=[1,70];
bio(99).sigWidth=70;
bio(99).sigAddress='&BimanualCarvingModifiedTestEMG_B.VCODE_c[0]';
bio(99).ndims=2;
bio(99).size=[];


bio(100).blkName='Draw_message/Matrix Concatenation';
bio(100).sigName='';
bio(100).portIdx=0;
bio(100).dim=[5,11];
bio(100).sigWidth=55;
bio(100).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_l[0]';
bio(100).ndims=2;
bio(100).size=[];


bio(101).blkName='Draw_message/Matrix Concatenation1';
bio(101).sigName='';
bio(101).portIdx=0;
bio(101).dim=[5,11];
bio(101).sigWidth=55;
bio(101).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_l[0]';
bio(101).ndims=2;
bio(101).size=[];


bio(102).blkName='Draw_message/padder';
bio(102).sigName='';
bio(102).portIdx=0;
bio(102).dim=[5,11];
bio(102).sigWidth=55;
bio(102).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_l[0]';
bio(102).ndims=2;
bio(102).size=[];


bio(103).blkName='Draw_message/Selector';
bio(103).sigName='';
bio(103).portIdx=0;
bio(103).dim=[1,25];
bio(103).sigWidth=25;
bio(103).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector_cm[0]';
bio(103).ndims=2;
bio(103).size=[];


bio(104).blkName='Draw_target/MATLAB Function';
bio(104).sigName='VCODE';
bio(104).portIdx=0;
bio(104).dim=[4,70];
bio(104).sigWidth=280;
bio(104).sigAddress='&BimanualCarvingModifiedTestEMG_B.VCODE_f[0]';
bio(104).ndims=2;
bio(104).size=[];


bio(105).blkName='Draw_target/Matrix Concatenation';
bio(105).sigName='';
bio(105).portIdx=0;
bio(105).dim=[5,11];
bio(105).sigWidth=55;
bio(105).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_c[0]';
bio(105).ndims=2;
bio(105).size=[];


bio(106).blkName='Draw_target/Matrix Concatenation1';
bio(106).sigName='';
bio(106).portIdx=0;
bio(106).dim=[5,11];
bio(106).sigWidth=55;
bio(106).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_c[0]';
bio(106).ndims=2;
bio(106).size=[];


bio(107).blkName='Draw_target/padder';
bio(107).sigName='';
bio(107).portIdx=0;
bio(107).dim=[5,11];
bio(107).sigWidth=55;
bio(107).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_c[0]';
bio(107).ndims=2;
bio(107).size=[];


bio(108).blkName='Draw_target/Selector';
bio(108).sigName='';
bio(108).portIdx=0;
bio(108).dim=[1,25];
bio(108).sigWidth=25;
bio(108).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector_m[0]';
bio(108).ndims=2;
bio(108).size=[];


bio(109).blkName='EMG Processing/MATLAB Function1';
bio(109).sigName='memg';
bio(109).portIdx=0;
bio(109).dim=[16,1];
bio(109).sigWidth=16;
bio(109).sigAddress='&BimanualCarvingModifiedTestEMG_B.memg[0]';
bio(109).ndims=2;
bio(109).size=[];


bio(110).blkName='EMG Processing/MATLAB Function2';
bio(110).sigName='maxemg';
bio(110).portIdx=0;
bio(110).dim=[16,1];
bio(110).sigWidth=16;
bio(110).sigAddress='&BimanualCarvingModifiedTestEMG_B.maxemg[0]';
bio(110).ndims=2;
bio(110).size=[];


bio(111).blkName='EMG Processing/MATLAB Function3';
bio(111).sigName='output_emg';
bio(111).portIdx=0;
bio(111).dim=[16,1];
bio(111).sigWidth=16;
bio(111).sigAddress='&BimanualCarvingModifiedTestEMG_B.output_emg[0]';
bio(111).ndims=2;
bio(111).size=[];


bio(112).blkName='EMG Processing/Abs';
bio(112).sigName='';
bio(112).portIdx=0;
bio(112).dim=[16,1];
bio(112).sigWidth=16;
bio(112).sigAddress='&BimanualCarvingModifiedTestEMG_B.Abs[0]';
bio(112).ndims=2;
bio(112).size=[];


bio(113).blkName='EMG Processing/Filter';
bio(113).sigName='';
bio(113).portIdx=0;
bio(113).dim=[16,1];
bio(113).sigWidth=16;
bio(113).sigAddress='&BimanualCarvingModifiedTestEMG_B.Filter[0]';
bio(113).ndims=2;
bio(113).size=[];


bio(114).blkName='GUI Control/Library Patch Version';
bio(114).sigName='';
bio(114).portIdx=0;
bio(114).dim=[1,1];
bio(114).sigWidth=1;
bio(114).sigAddress='&BimanualCarvingModifiedTestEMG_B.LibraryPatchVersion';
bio(114).ndims=2;
bio(114).size=[];


bio(115).blkName='GUI Control/Library Version';
bio(115).sigName='';
bio(115).portIdx=0;
bio(115).dim=[1,1];
bio(115).sigWidth=1;
bio(115).sigAddress='&BimanualCarvingModifiedTestEMG_B.LibraryVersion';
bio(115).ndims=2;
bio(115).size=[];


bio(116).blkName='GUI Control/Next Block';
bio(116).sigName='';
bio(116).portIdx=0;
bio(116).dim=[1,1];
bio(116).sigWidth=1;
bio(116).sigAddress='&BimanualCarvingModifiedTestEMG_B.NextBlock';
bio(116).ndims=2;
bio(116).size=[];


bio(117).blkName='GUI Control/Pause Type';
bio(117).sigName='';
bio(117).portIdx=0;
bio(117).dim=[1,1];
bio(117).sigWidth=1;
bio(117).sigAddress='&BimanualCarvingModifiedTestEMG_B.PauseType';
bio(117).ndims=2;
bio(117).size=[];


bio(118).blkName='GUI Control/Task Version';
bio(118).sigName='';
bio(118).portIdx=0;
bio(118).dim=[1,1];
bio(118).sigWidth=1;
bio(118).sigAddress='&BimanualCarvingModifiedTestEMG_B.TaskVersion';
bio(118).ndims=2;
bio(118).size=[];


bio(119).blkName='GUI Control/Use Task Protocol Block Sequence Flag';
bio(119).sigName='';
bio(119).portIdx=0;
bio(119).dim=[1,1];
bio(119).sigWidth=1;
bio(119).sigAddress='&BimanualCarvingModifiedTestEMG_B.UseTaskProtocolBlockSequenceFlag';
bio(119).ndims=2;
bio(119).size=[];


bio(120).blkName='GUI Control/dlm build time';
bio(120).sigName='';
bio(120).portIdx=0;
bio(120).dim=[1,1];
bio(120).sigWidth=1;
bio(120).sigAddress='&BimanualCarvingModifiedTestEMG_B.dlmbuildtime';
bio(120).ndims=2;
bio(120).size=[];


bio(121).blkName='GUI Control/xPC Version';
bio(121).sigName='';
bio(121).portIdx=0;
bio(121).dim=[1,1];
bio(121).sigWidth=1;
bio(121).sigAddress='&BimanualCarvingModifiedTestEMG_B.xPCVersion';
bio(121).ndims=2;
bio(121).size=[];


bio(122).blkName='GUI Control/Convert';
bio(122).sigName='';
bio(122).portIdx=0;
bio(122).dim=[32,25];
bio(122).sigWidth=800;
bio(122).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert[0]';
bio(122).ndims=2;
bio(122).size=[];


bio(123).blkName='GUI Control/Convert1';
bio(123).sigName='';
bio(123).portIdx=0;
bio(123).dim=[100,50];
bio(123).sigWidth=5000;
bio(123).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert1_h[0]';
bio(123).ndims=2;
bio(123).size=[];


bio(124).blkName='GUI Control/Convert10';
bio(124).sigName='';
bio(124).portIdx=0;
bio(124).dim=[1,2];
bio(124).sigWidth=2;
bio(124).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert10[0]';
bio(124).ndims=2;
bio(124).size=[];


bio(125).blkName='GUI Control/Convert11';
bio(125).sigName='';
bio(125).portIdx=0;
bio(125).dim=[5,2];
bio(125).sigWidth=10;
bio(125).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert11[0]';
bio(125).ndims=2;
bio(125).size=[];


bio(126).blkName='GUI Control/Convert12';
bio(126).sigName='';
bio(126).portIdx=0;
bio(126).dim=[1,1];
bio(126).sigWidth=1;
bio(126).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert12';
bio(126).ndims=2;
bio(126).size=[];


bio(127).blkName='GUI Control/Convert13';
bio(127).sigName='';
bio(127).portIdx=0;
bio(127).dim=[1,3];
bio(127).sigWidth=3;
bio(127).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert13[0]';
bio(127).ndims=2;
bio(127).size=[];


bio(128).blkName='GUI Control/Convert14';
bio(128).sigName='';
bio(128).portIdx=0;
bio(128).dim=[1,2];
bio(128).sigWidth=2;
bio(128).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert14[0]';
bio(128).ndims=2;
bio(128).size=[];


bio(129).blkName='GUI Control/Convert15';
bio(129).sigName='';
bio(129).portIdx=0;
bio(129).dim=[1,1];
bio(129).sigWidth=1;
bio(129).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert15';
bio(129).ndims=2;
bio(129).size=[];


bio(130).blkName='GUI Control/Convert16';
bio(130).sigName='';
bio(130).portIdx=0;
bio(130).dim=[1,1];
bio(130).sigWidth=1;
bio(130).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert16';
bio(130).ndims=2;
bio(130).size=[];


bio(131).blkName='GUI Control/Convert17';
bio(131).sigName='';
bio(131).portIdx=0;
bio(131).dim=[1,1];
bio(131).sigWidth=1;
bio(131).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert17';
bio(131).ndims=2;
bio(131).size=[];


bio(132).blkName='GUI Control/Convert18';
bio(132).sigName='';
bio(132).portIdx=0;
bio(132).dim=[1,1];
bio(132).sigWidth=1;
bio(132).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert18';
bio(132).ndims=2;
bio(132).size=[];


bio(133).blkName='GUI Control/Convert19';
bio(133).sigName='';
bio(133).portIdx=0;
bio(133).dim=[1,1];
bio(133).sigWidth=1;
bio(133).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert19_j';
bio(133).ndims=2;
bio(133).size=[];


bio(134).blkName='GUI Control/Convert2';
bio(134).sigName='';
bio(134).portIdx=0;
bio(134).dim=[20,20];
bio(134).sigWidth=400;
bio(134).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert2_c[0]';
bio(134).ndims=2;
bio(134).size=[];


bio(135).blkName='GUI Control/Convert20';
bio(135).sigName='';
bio(135).portIdx=0;
bio(135).dim=[1,1];
bio(135).sigWidth=1;
bio(135).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert20';
bio(135).ndims=2;
bio(135).size=[];


bio(136).blkName='GUI Control/Convert21';
bio(136).sigName='';
bio(136).portIdx=0;
bio(136).dim=[1,1];
bio(136).sigWidth=1;
bio(136).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert21';
bio(136).ndims=2;
bio(136).size=[];


bio(137).blkName='GUI Control/Convert22';
bio(137).sigName='';
bio(137).portIdx=0;
bio(137).dim=[1,1];
bio(137).sigWidth=1;
bio(137).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert22';
bio(137).ndims=2;
bio(137).size=[];


bio(138).blkName='GUI Control/Convert23';
bio(138).sigName='';
bio(138).portIdx=0;
bio(138).dim=[1,1];
bio(138).sigWidth=1;
bio(138).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert23';
bio(138).ndims=2;
bio(138).size=[];


bio(139).blkName='GUI Control/Convert24';
bio(139).sigName='';
bio(139).portIdx=0;
bio(139).dim=[1,1];
bio(139).sigWidth=1;
bio(139).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert24';
bio(139).ndims=2;
bio(139).size=[];


bio(140).blkName='GUI Control/Convert3';
bio(140).sigName='';
bio(140).portIdx=0;
bio(140).dim=[100,50];
bio(140).sigWidth=5000;
bio(140).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert3_m[0]';
bio(140).ndims=2;
bio(140).size=[];


bio(141).blkName='GUI Control/Convert4';
bio(141).sigName='';
bio(141).portIdx=0;
bio(141).dim=[50,500];
bio(141).sigWidth=25000;
bio(141).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert4[0]';
bio(141).ndims=2;
bio(141).size=[];


bio(142).blkName='GUI Control/Convert5';
bio(142).sigName='';
bio(142).portIdx=0;
bio(142).dim=[1000,2];
bio(142).sigWidth=2000;
bio(142).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert5[0]';
bio(142).ndims=2;
bio(142).size=[];


bio(143).blkName='GUI Control/Convert6';
bio(143).sigName='';
bio(143).portIdx=0;
bio(143).dim=[50,1];
bio(143).sigWidth=50;
bio(143).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert6[0]';
bio(143).ndims=2;
bio(143).size=[];


bio(144).blkName='GUI Control/Convert7';
bio(144).sigName='';
bio(144).portIdx=0;
bio(144).dim=[1,1];
bio(144).sigWidth=1;
bio(144).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert7';
bio(144).ndims=2;
bio(144).size=[];


bio(145).blkName='GUI Control/Convert8';
bio(145).sigName='';
bio(145).portIdx=0;
bio(145).dim=[1,1];
bio(145).sigWidth=1;
bio(145).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert8';
bio(145).ndims=2;
bio(145).size=[];


bio(146).blkName='GUI Control/Convert9';
bio(146).sigName='';
bio(146).portIdx=0;
bio(146).dim=[1,2];
bio(146).sigWidth=2;
bio(146).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert9[0]';
bio(146).ndims=2;
bio(146).size=[];


bio(147).blkName='GUI Control/MinMax';
bio(147).sigName='';
bio(147).portIdx=0;
bio(147).dim=[1,1];
bio(147).sigWidth=1;
bio(147).sigAddress='&BimanualCarvingModifiedTestEMG_B.MinMax';
bio(147).ndims=2;
bio(147).size=[];


bio(148).blkName='GUI Control/TP Selector';
bio(148).sigName='';
bio(148).portIdx=0;
bio(148).dim=[1,50];
bio(148).sigWidth=50;
bio(148).sigAddress='&BimanualCarvingModifiedTestEMG_B.TPSelector[0]';
bio(148).ndims=2;
bio(148).size=[];


bio(149).blkName='KINARM_Apply_Loads/Ramp_Up_Down';
bio(149).sigName='scaling';
bio(149).portIdx=0;
bio(149).dim=[1,1];
bio(149).sigWidth=1;
bio(149).sigAddress='&BimanualCarvingModifiedTestEMG_B.sf_Ramp_Up_Down.scaling';
bio(149).ndims=2;
bio(149).size=[];


bio(150).blkName='KINARM_Apply_Loads/Ramp_Up_Down1';
bio(150).sigName='scaling';
bio(150).portIdx=0;
bio(150).dim=[1,1];
bio(150).sigWidth=1;
bio(150).sigAddress='&BimanualCarvingModifiedTestEMG_B.sf_Ramp_Up_Down1.scaling';
bio(150).ndims=2;
bio(150).size=[];


bio(151).blkName='KINARM_Apply_Loads/Remove_NaNs_and_Inf';
bio(151).sigName='out';
bio(151).portIdx=0;
bio(151).dim=[4,1];
bio(151).sigWidth=4;
bio(151).sigAddress='&BimanualCarvingModifiedTestEMG_B.sf_Remove_NaNs_and_Inf.out[0]';
bio(151).ndims=2;
bio(151).size=[];


bio(152).blkName='KINARM_Apply_Loads/Remove_NaNs_and_Inf1';
bio(152).sigName='out';
bio(152).portIdx=0;
bio(152).dim=[1,4];
bio(152).sigWidth=4;
bio(152).sigAddress='&BimanualCarvingModifiedTestEMG_B.sf_Remove_NaNs_and_Inf1.out[0]';
bio(152).ndims=2;
bio(152).size=[];


bio(153).blkName='KINARM_Apply_Loads/Torque_Cap';
bio(153).sigName='y';
bio(153).portIdx=0;
bio(153).dim=[1,4];
bio(153).sigWidth=4;
bio(153).sigAddress='&BimanualCarvingModifiedTestEMG_B.y_g[0]';
bio(153).ndims=2;
bio(153).size=[];


bio(154).blkName='KINARM_Apply_Loads/down_duration(ms)';
bio(154).sigName='';
bio(154).portIdx=0;
bio(154).dim=[1,1];
bio(154).sigWidth=1;
bio(154).sigAddress='&BimanualCarvingModifiedTestEMG_B.down_durationms';
bio(154).ndims=2;
bio(154).size=[];


bio(155).blkName='KINARM_Apply_Loads/up_duration(ms)';
bio(155).sigName='';
bio(155).portIdx=0;
bio(155).dim=[1,1];
bio(155).sigWidth=1;
bio(155).sigAddress='&BimanualCarvingModifiedTestEMG_B.up_durationms';
bio(155).ndims=2;
bio(155).size=[];


bio(156).blkName='KINARM_Apply_Loads/Data Type Conversion';
bio(156).sigName='';
bio(156).portIdx=0;
bio(156).dim=[1,1];
bio(156).sigWidth=1;
bio(156).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion_m';
bio(156).ndims=2;
bio(156).size=[];


bio(157).blkName='KINARM_Apply_Loads/Data Type Conversion1';
bio(157).sigName='';
bio(157).portIdx=0;
bio(157).dim=[1,1];
bio(157).sigWidth=1;
bio(157).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion1_p';
bio(157).ndims=2;
bio(157).size=[];


bio(158).blkName='KINARM_Apply_Loads/Product';
bio(158).sigName='';
bio(158).portIdx=0;
bio(158).dim=[1,2];
bio(158).sigWidth=2;
bio(158).sigAddress='&BimanualCarvingModifiedTestEMG_B.Product_l[0]';
bio(158).ndims=2;
bio(158).size=[];


bio(159).blkName='KINARM_Apply_Loads/Product1';
bio(159).sigName='';
bio(159).portIdx=0;
bio(159).dim=[1,2];
bio(159).sigWidth=2;
bio(159).sigAddress='&BimanualCarvingModifiedTestEMG_B.Product1[0]';
bio(159).ndims=2;
bio(159).size=[];


bio(160).blkName='KINARM_Apply_Loads/Motors_Disabled';
bio(160).sigName='';
bio(160).portIdx=0;
bio(160).dim=[1,1];
bio(160).sigWidth=1;
bio(160).sigAddress='&BimanualCarvingModifiedTestEMG_B.Motors_Disabled';
bio(160).ndims=2;
bio(160).size=[];


bio(161).blkName='KINARM_Apply_Loads/Motors_Disabled1';
bio(161).sigName='';
bio(161).portIdx=0;
bio(161).dim=[1,1];
bio(161).sigWidth=1;
bio(161).sigAddress='&BimanualCarvingModifiedTestEMG_B.Motors_Disabled1';
bio(161).ndims=2;
bio(161).size=[];


bio(162).blkName='KINARM_Apply_Loads/Sum of Elements';
bio(162).sigName='';
bio(162).portIdx=0;
bio(162).dim=[1,1];
bio(162).sigWidth=1;
bio(162).sigAddress='&BimanualCarvingModifiedTestEMG_B.SumofElements';
bio(162).ndims=2;
bio(162).size=[];


bio(163).blkName='KINARM_Apply_Loads/Sum of Elements1';
bio(163).sigName='';
bio(163).portIdx=0;
bio(163).dim=[1,1];
bio(163).sigWidth=1;
bio(163).sigAddress='&BimanualCarvingModifiedTestEMG_B.SumofElements1';
bio(163).ndims=2;
bio(163).size=[];


bio(164).blkName='KINARM_EP_Apply_Loads/Force_Cap';
bio(164).sigName='y';
bio(164).portIdx=0;
bio(164).dim=[1,4];
bio(164).sigWidth=4;
bio(164).sigAddress='&BimanualCarvingModifiedTestEMG_B.y[0]';
bio(164).ndims=2;
bio(164).size=[];


bio(165).blkName='KINARM_EP_Apply_Loads/Forces_to_Torques';
bio(165).sigName='joint_loads';
bio(165).portIdx=0;
bio(165).dim=[1,4];
bio(165).sigWidth=4;
bio(165).sigAddress='&BimanualCarvingModifiedTestEMG_B.joint_loads[0]';
bio(165).ndims=2;
bio(165).size=[];


bio(166).blkName='KINARM_EP_Apply_Loads/Ramp_Up_Down';
bio(166).sigName='scaling';
bio(166).portIdx=0;
bio(166).dim=[1,1];
bio(166).sigWidth=1;
bio(166).sigAddress='&BimanualCarvingModifiedTestEMG_B.scaling_m';
bio(166).ndims=2;
bio(166).size=[];


bio(167).blkName='KINARM_EP_Apply_Loads/Ramp_Up_Down1';
bio(167).sigName='scaling';
bio(167).portIdx=0;
bio(167).dim=[1,1];
bio(167).sigWidth=1;
bio(167).sigAddress='&BimanualCarvingModifiedTestEMG_B.scaling_k';
bio(167).ndims=2;
bio(167).size=[];


bio(168).blkName='KINARM_EP_Apply_Loads/Remove_NaNs_and_Inf';
bio(168).sigName='out';
bio(168).portIdx=0;
bio(168).dim=[4,1];
bio(168).sigWidth=4;
bio(168).sigAddress='&BimanualCarvingModifiedTestEMG_B.sf_Remove_NaNs_and_Inf_h.out[0]';
bio(168).ndims=2;
bio(168).size=[];


bio(169).blkName='KINARM_EP_Apply_Loads/Remove_NaNs_and_Inf1';
bio(169).sigName='out';
bio(169).portIdx=0;
bio(169).dim=[1,4];
bio(169).sigWidth=4;
bio(169).sigAddress='&BimanualCarvingModifiedTestEMG_B.sf_Remove_NaNs_and_Inf1_k.out[0]';
bio(169).ndims=2;
bio(169).size=[];


bio(170).blkName='KINARM_EP_Apply_Loads/down_duration(ms)';
bio(170).sigName='';
bio(170).portIdx=0;
bio(170).dim=[1,1];
bio(170).sigWidth=1;
bio(170).sigAddress='&BimanualCarvingModifiedTestEMG_B.down_durationms_k';
bio(170).ndims=2;
bio(170).size=[];


bio(171).blkName='KINARM_EP_Apply_Loads/up_duration(ms)';
bio(171).sigName='';
bio(171).portIdx=0;
bio(171).dim=[1,1];
bio(171).sigWidth=1;
bio(171).sigAddress='&BimanualCarvingModifiedTestEMG_B.up_durationms_e';
bio(171).ndims=2;
bio(171).size=[];


bio(172).blkName='KINARM_EP_Apply_Loads/Data Type Conversion';
bio(172).sigName='';
bio(172).portIdx=0;
bio(172).dim=[1,1];
bio(172).sigWidth=1;
bio(172).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion_j';
bio(172).ndims=2;
bio(172).size=[];


bio(173).blkName='KINARM_EP_Apply_Loads/Data Type Conversion1';
bio(173).sigName='';
bio(173).portIdx=0;
bio(173).dim=[1,1];
bio(173).sigWidth=1;
bio(173).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion1_n';
bio(173).ndims=2;
bio(173).size=[];


bio(174).blkName='KINARM_EP_Apply_Loads/Product';
bio(174).sigName='';
bio(174).portIdx=0;
bio(174).dim=[1,2];
bio(174).sigWidth=2;
bio(174).sigAddress='&BimanualCarvingModifiedTestEMG_B.Product_g[0]';
bio(174).ndims=2;
bio(174).size=[];


bio(175).blkName='KINARM_EP_Apply_Loads/Product1';
bio(175).sigName='';
bio(175).portIdx=0;
bio(175).dim=[1,2];
bio(175).sigWidth=2;
bio(175).sigAddress='&BimanualCarvingModifiedTestEMG_B.Product1_e[0]';
bio(175).ndims=2;
bio(175).size=[];


bio(176).blkName='KINARM_EP_Apply_Loads/Motors_Disabled';
bio(176).sigName='';
bio(176).portIdx=0;
bio(176).dim=[1,1];
bio(176).sigWidth=1;
bio(176).sigAddress='&BimanualCarvingModifiedTestEMG_B.Motors_Disabled_g';
bio(176).ndims=2;
bio(176).size=[];


bio(177).blkName='KINARM_EP_Apply_Loads/Motors_Disabled1';
bio(177).sigName='';
bio(177).portIdx=0;
bio(177).dim=[1,1];
bio(177).sigWidth=1;
bio(177).sigAddress='&BimanualCarvingModifiedTestEMG_B.Motors_Disabled1_c';
bio(177).ndims=2;
bio(177).size=[];


bio(178).blkName='KINARM_EP_Apply_Loads/Sum of Elements';
bio(178).sigName='';
bio(178).portIdx=0;
bio(178).dim=[1,1];
bio(178).sigWidth=1;
bio(178).sigAddress='&BimanualCarvingModifiedTestEMG_B.SumofElements_m';
bio(178).ndims=2;
bio(178).size=[];


bio(179).blkName='KINARM_EP_Apply_Loads/Sum of Elements1';
bio(179).sigName='';
bio(179).portIdx=0;
bio(179).dim=[1,1];
bio(179).sigWidth=1;
bio(179).sigAddress='&BimanualCarvingModifiedTestEMG_B.SumofElements1_n';
bio(179).ndims=2;
bio(179).size=[];


bio(180).blkName='Parameter_columns/MATLAB Function';
bio(180).sigName='VCODE';
bio(180).portIdx=0;
bio(180).dim=[1,70];
bio(180).sigWidth=70;
bio(180).sigAddress='&BimanualCarvingModifiedTestEMG_B.VCODE_g[0]';
bio(180).ndims=2;
bio(180).size=[];


bio(181).blkName='Parameter_columns/Matrix Concatenation';
bio(181).sigName='';
bio(181).portIdx=0;
bio(181).dim=[5,11];
bio(181).sigWidth=55;
bio(181).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1[0]';
bio(181).ndims=2;
bio(181).size=[];


bio(182).blkName='Parameter_columns/Matrix Concatenation1';
bio(182).sigName='';
bio(182).portIdx=0;
bio(182).dim=[5,11];
bio(182).sigWidth=55;
bio(182).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1[0]';
bio(182).ndims=2;
bio(182).size=[];


bio(183).blkName='Parameter_columns/padder';
bio(183).sigName='';
bio(183).portIdx=0;
bio(183).dim=[5,11];
bio(183).sigWidth=55;
bio(183).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1[0]';
bio(183).ndims=2;
bio(183).size=[];


bio(184).blkName='Parameter_columns/Selector';
bio(184).sigName='';
bio(184).portIdx=0;
bio(184).dim=[1,25];
bio(184).sigWidth=25;
bio(184).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector[0]';
bio(184).ndims=2;
bio(184).size=[];


bio(185).blkName='Process_Video_CMD/EML/p1';
bio(185).sigName='VCODEs_out';
bio(185).portIdx=0;
bio(185).dim=[59,70];
bio(185).sigWidth=4130;
bio(185).sigAddress='&BimanualCarvingModifiedTestEMG_B.VCODEs_out[0]';
bio(185).ndims=2;
bio(185).size=[];


bio(186).blkName='Process_Video_CMD/EML/p2';
bio(186).sigName='num_used_VCODEs';
bio(186).portIdx=1;
bio(186).dim=[1,1];
bio(186).sigWidth=1;
bio(186).sigAddress='&BimanualCarvingModifiedTestEMG_B.num_used_VCODEs';
bio(186).ndims=2;
bio(186).size=[];


bio(187).blkName='Process_Video_CMD/Convert';
bio(187).sigName='';
bio(187).portIdx=0;
bio(187).dim=[1,1];
bio(187).sigWidth=1;
bio(187).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert_b';
bio(187).ndims=2;
bio(187).size=[];


bio(188).blkName='Process_Video_CMD/Convert1';
bio(188).sigName='';
bio(188).portIdx=0;
bio(188).dim=[1,1];
bio(188).sigWidth=1;
bio(188).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert1_hb';
bio(188).ndims=2;
bio(188).size=[];


bio(189).blkName='Process_Video_CMD/VCODE_Buffer';
bio(189).sigName='';
bio(189).portIdx=0;
bio(189).dim=[725,1];
bio(189).sigWidth=725;
bio(189).sigAddress='&BimanualCarvingModifiedTestEMG_B.VCODE_Buffer[0]';
bio(189).ndims=2;
bio(189).size=[];


bio(190).blkName='Process_Video_CMD/Byte Reversal';
bio(190).sigName='';
bio(190).portIdx=0;
bio(190).dim=[725,1];
bio(190).sigWidth=725;
bio(190).sigAddress='&BimanualCarvingModifiedTestEMG_B.ByteReversal_h[0]';
bio(190).ndims=2;
bio(190).size=[];


bio(191).blkName='Process_Video_CMD/Pack';
bio(191).sigName='';
bio(191).portIdx=0;
bio(191).dim=[2900,1];
bio(191).sigWidth=2900;
bio(191).sigAddress='&BimanualCarvingModifiedTestEMG_B.Pack_e[0]';
bio(191).ndims=2;
bio(191).size=[];


bio(192).blkName='Process_Video_CMD/Receive/p1';
bio(192).sigName='';
bio(192).portIdx=0;
bio(192).dim=[4,1];
bio(192).sigWidth=4;
bio(192).sigAddress='&BimanualCarvingModifiedTestEMG_B.Receive_o1_k[0]';
bio(192).ndims=2;
bio(192).size=[];


bio(193).blkName='Process_Video_CMD/Receive/p2';
bio(193).sigName='';
bio(193).portIdx=1;
bio(193).dim=[1,1];
bio(193).sigWidth=1;
bio(193).sigAddress='&BimanualCarvingModifiedTestEMG_B.Receive_o2_e';
bio(193).ndims=2;
bio(193).size=[];


bio(194).blkName='Process_Video_CMD/Unpack';
bio(194).sigName='';
bio(194).portIdx=0;
bio(194).dim=[1,1];
bio(194).sigWidth=1;
bio(194).sigAddress='&BimanualCarvingModifiedTestEMG_B.Unpack_j';
bio(194).ndims=2;
bio(194).size=[];


bio(195).blkName='Show_Target_With_Label/Embedded MATLAB Function';
bio(195).sigName='VCODE';
bio(195).portIdx=0;
bio(195).dim=[1,70];
bio(195).sigWidth=70;
bio(195).sigAddress='&BimanualCarvingModifiedTestEMG_B.VCODE[0]';
bio(195).ndims=2;
bio(195).size=[];


bio(196).blkName='Show_Target_With_Label/Matrix Concatenation';
bio(196).sigName='';
bio(196).portIdx=0;
bio(196).dim=[5,11];
bio(196).sigWidth=55;
bio(196).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_cn[0]';
bio(196).ndims=2;
bio(196).size=[];


bio(197).blkName='Show_Target_With_Label/Matrix Concatenation1';
bio(197).sigName='';
bio(197).portIdx=0;
bio(197).dim=[5,11];
bio(197).sigWidth=55;
bio(197).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_cn[0]';
bio(197).ndims=2;
bio(197).size=[];


bio(198).blkName='Show_Target_With_Label/padder';
bio(198).sigName='';
bio(198).portIdx=0;
bio(198).dim=[5,11];
bio(198).sigWidth=55;
bio(198).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenation1_cn[0]';
bio(198).ndims=2;
bio(198).size=[];


bio(199).blkName='Show_Target_With_Label/Selector';
bio(199).sigName='';
bio(199).portIdx=0;
bio(199).dim=[1,25];
bio(199).sigWidth=25;
bio(199).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector_k[0]';
bio(199).ndims=2;
bio(199).size=[];


bio(200).blkName='DataLogging/Create Analog Inputs Subsystem/Analog Data';
bio(200).sigName='';
bio(200).portIdx=0;
bio(200).dim=[42,1];
bio(200).sigWidth=42;
bio(200).sigAddress='&BimanualCarvingModifiedTestEMG_B.AnalogData[0]';
bio(200).ndims=2;
bio(200).size=[];


bio(201).blkName='DataLogging/Create Analog Inputs Subsystem/Analog Data Width';
bio(201).sigName='';
bio(201).portIdx=0;
bio(201).dim=[1,1];
bio(201).sigWidth=1;
bio(201).sigAddress='&BimanualCarvingModifiedTestEMG_B.AnalogDataWidth';
bio(201).ndims=2;
bio(201).size=[];


bio(202).blkName='DataLogging/Create Analog Inputs Subsystem/Rate Transition9';
bio(202).sigName='';
bio(202).portIdx=0;
bio(202).dim=[43,1];
bio(202).sigWidth=43;
bio(202).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition9_b[0]';
bio(202).ndims=2;
bio(202).size=[];


bio(203).blkName='DataLogging/Create Analog Inputs Subsystem/Subtract';
bio(203).sigName='';
bio(203).portIdx=0;
bio(203).dim=[1,1];
bio(203).sigWidth=1;
bio(203).sigAddress='&BimanualCarvingModifiedTestEMG_B.Subtract_h';
bio(203).ndims=2;
bio(203).size=[];


bio(204).blkName='DataLogging/Create Analog Inputs Subsystem/Width';
bio(204).sigName='';
bio(204).portIdx=0;
bio(204).dim=[1,1];
bio(204).sigWidth=1;
bio(204).sigAddress='&BimanualCarvingModifiedTestEMG_B.Width_a';
bio(204).ndims=2;
bio(204).size=[];


bio(205).blkName='DataLogging/Create Custom Data Subsystem/Custom Data';
bio(205).sigName='';
bio(205).portIdx=0;
bio(205).dim=[4,1];
bio(205).sigWidth=4;
bio(205).sigAddress='&BimanualCarvingModifiedTestEMG_B.CustomData[0]';
bio(205).ndims=2;
bio(205).size=[];


bio(206).blkName='DataLogging/Create Custom Data Subsystem/Custom Data Width';
bio(206).sigName='';
bio(206).portIdx=0;
bio(206).dim=[1,1];
bio(206).sigWidth=1;
bio(206).sigAddress='&BimanualCarvingModifiedTestEMG_B.CustomDataWidth';
bio(206).ndims=2;
bio(206).size=[];


bio(207).blkName='DataLogging/Create Custom Data Subsystem/Rate Transition9';
bio(207).sigName='';
bio(207).portIdx=0;
bio(207).dim=[5,1];
bio(207).sigWidth=5;
bio(207).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition9_i[0]';
bio(207).ndims=2;
bio(207).size=[];


bio(208).blkName='DataLogging/Create Custom Data Subsystem/Width';
bio(208).sigName='';
bio(208).portIdx=0;
bio(208).dim=[1,1];
bio(208).sigWidth=1;
bio(208).sigAddress='&BimanualCarvingModifiedTestEMG_B.Width_g';
bio(208).ndims=2;
bio(208).size=[];


bio(209).blkName='DataLogging/Create Event Codes Subsystem/Event Codes';
bio(209).sigName='';
bio(209).portIdx=0;
bio(209).dim=[1,1];
bio(209).sigWidth=1;
bio(209).sigAddress='&BimanualCarvingModifiedTestEMG_B.EventCodes';
bio(209).ndims=2;
bio(209).size=[];


bio(210).blkName='DataLogging/Create Event Codes Subsystem/Number of Event Codes';
bio(210).sigName='';
bio(210).portIdx=0;
bio(210).dim=[1,1];
bio(210).sigWidth=1;
bio(210).sigAddress='&BimanualCarvingModifiedTestEMG_B.NumberofEventCodes';
bio(210).ndims=2;
bio(210).size=[];


bio(211).blkName='DataLogging/Create Event Codes Subsystem/Rate Transition9';
bio(211).sigName='';
bio(211).portIdx=0;
bio(211).dim=[2,1];
bio(211).sigWidth=2;
bio(211).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition9[0]';
bio(211).ndims=2;
bio(211).size=[];


bio(212).blkName='DataLogging/Create Event Codes Subsystem/Subtract';
bio(212).sigName='';
bio(212).portIdx=0;
bio(212).dim=[1,1];
bio(212).sigWidth=1;
bio(212).sigAddress='&BimanualCarvingModifiedTestEMG_B.Subtract';
bio(212).ndims=2;
bio(212).size=[];


bio(213).blkName='DataLogging/Create Event Codes Subsystem/Width';
bio(213).sigName='';
bio(213).portIdx=0;
bio(213).dim=[1,1];
bio(213).sigWidth=1;
bio(213).sigAddress='&BimanualCarvingModifiedTestEMG_B.Width';
bio(213).ndims=2;
bio(213).size=[];


bio(214).blkName='DataLogging/Create KINARM Data Subsystem/Arm Kinematics';
bio(214).sigName='';
bio(214).portIdx=0;
bio(214).dim=[1,55];
bio(214).sigWidth=55;
bio(214).sigAddress='&BimanualCarvingModifiedTestEMG_B.ArmKinematics[0]';
bio(214).ndims=2;
bio(214).size=[];


bio(215).blkName='DataLogging/Create KINARM Data Subsystem/Kinarm Data Width';
bio(215).sigName='';
bio(215).portIdx=0;
bio(215).dim=[1,1];
bio(215).sigWidth=1;
bio(215).sigAddress='&BimanualCarvingModifiedTestEMG_B.KinarmDataWidth';
bio(215).ndims=2;
bio(215).size=[];


bio(216).blkName='DataLogging/Create KINARM Data Subsystem/Rate Transition4';
bio(216).sigName='';
bio(216).portIdx=0;
bio(216).dim=[1,56];
bio(216).sigWidth=56;
bio(216).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition4_e[0]';
bio(216).ndims=2;
bio(216).size=[];


bio(217).blkName='DataLogging/Create KINARM Data Subsystem/Select Arm Data';
bio(217).sigName='';
bio(217).portIdx=0;
bio(217).dim=[2,17];
bio(217).sigWidth=34;
bio(217).sigAddress='&BimanualCarvingModifiedTestEMG_B.SelectArmData[0]';
bio(217).ndims=2;
bio(217).size=[];


bio(218).blkName='DataLogging/Create KINARM Data Subsystem/Select Arm1';
bio(218).sigName='';
bio(218).portIdx=0;
bio(218).dim=[1,17];
bio(218).sigWidth=17;
bio(218).sigAddress='&BimanualCarvingModifiedTestEMG_B.SelectArm1[0]';
bio(218).ndims=2;
bio(218).size=[];


bio(219).blkName='DataLogging/Create KINARM Data Subsystem/Select Arm2';
bio(219).sigName='';
bio(219).portIdx=0;
bio(219).dim=[1,17];
bio(219).sigWidth=17;
bio(219).sigAddress='&BimanualCarvingModifiedTestEMG_B.SelectArm2[0]';
bio(219).ndims=2;
bio(219).size=[];


bio(220).blkName='DataLogging/Create KINARM Data Subsystem/Width';
bio(220).sigName='';
bio(220).portIdx=0;
bio(220).dim=[1,1];
bio(220).sigWidth=1;
bio(220).sigAddress='&BimanualCarvingModifiedTestEMG_B.Width_d';
bio(220).ndims=2;
bio(220).size=[];


bio(221).blkName='DataLogging/Create Task State Subsystem/Button Status';
bio(221).sigName='';
bio(221).portIdx=0;
bio(221).dim=[1,1];
bio(221).sigWidth=1;
bio(221).sigAddress='&BimanualCarvingModifiedTestEMG_B.ButtonStatus';
bio(221).ndims=2;
bio(221).size=[];


bio(222).blkName='DataLogging/Create Task State Subsystem/Current Block Index';
bio(222).sigName='';
bio(222).portIdx=0;
bio(222).dim=[1,1];
bio(222).sigWidth=1;
bio(222).sigAddress='&BimanualCarvingModifiedTestEMG_B.CurrentBlockIndex';
bio(222).ndims=2;
bio(222).size=[];


bio(223).blkName='DataLogging/Create Task State Subsystem/Current Block Number in Set';
bio(223).sigName='';
bio(223).portIdx=0;
bio(223).dim=[1,1];
bio(223).sigWidth=1;
bio(223).sigAddress='&BimanualCarvingModifiedTestEMG_B.CurrentBlockNumberinSet';
bio(223).ndims=2;
bio(223).size=[];


bio(224).blkName='DataLogging/Create Task State Subsystem/Current TP Index';
bio(224).sigName='';
bio(224).portIdx=0;
bio(224).dim=[1,1];
bio(224).sigWidth=1;
bio(224).sigAddress='&BimanualCarvingModifiedTestEMG_B.CurrentTPIndex';
bio(224).ndims=2;
bio(224).size=[];


bio(225).blkName='DataLogging/Create Task State Subsystem/Current Trial Number in Block';
bio(225).sigName='';
bio(225).portIdx=0;
bio(225).dim=[1,1];
bio(225).sigWidth=1;
bio(225).sigAddress='&BimanualCarvingModifiedTestEMG_B.CurrentTrialNumberinBlock';
bio(225).ndims=2;
bio(225).size=[];


bio(226).blkName='DataLogging/Create Task State Subsystem/Current Trial Number in Set';
bio(226).sigName='';
bio(226).portIdx=0;
bio(226).dim=[1,1];
bio(226).sigWidth=1;
bio(226).sigAddress='&BimanualCarvingModifiedTestEMG_B.CurrentTrialNumberinSet';
bio(226).ndims=2;
bio(226).size=[];


bio(227).blkName='DataLogging/Create Task State Subsystem/Last Frame Acknowledged';
bio(227).sigName='';
bio(227).portIdx=0;
bio(227).dim=[1,1];
bio(227).sigWidth=1;
bio(227).sigAddress='&BimanualCarvingModifiedTestEMG_B.LastFrameAcknowledged';
bio(227).ndims=2;
bio(227).size=[];


bio(228).blkName='DataLogging/Create Task State Subsystem/Last Frame Sent';
bio(228).sigName='';
bio(228).portIdx=0;
bio(228).dim=[1,1];
bio(228).sigWidth=1;
bio(228).sigAddress='&BimanualCarvingModifiedTestEMG_B.LastFrameSent';
bio(228).ndims=2;
bio(228).size=[];


bio(229).blkName='DataLogging/Create Task State Subsystem/Logging Enable';
bio(229).sigName='';
bio(229).portIdx=0;
bio(229).dim=[1,1];
bio(229).sigWidth=1;
bio(229).sigAddress='&BimanualCarvingModifiedTestEMG_B.LoggingEnable';
bio(229).ndims=2;
bio(229).size=[];


bio(230).blkName='DataLogging/Create Task State Subsystem/Run Status';
bio(230).sigName='';
bio(230).portIdx=0;
bio(230).dim=[1,1];
bio(230).sigWidth=1;
bio(230).sigAddress='&BimanualCarvingModifiedTestEMG_B.RunStatus';
bio(230).ndims=2;
bio(230).size=[];


bio(231).blkName='DataLogging/Create Task State Subsystem/Servo update count';
bio(231).sigName='';
bio(231).portIdx=0;
bio(231).dim=[1,1];
bio(231).sigWidth=1;
bio(231).sigAddress='&BimanualCarvingModifiedTestEMG_B.Servoupdatecount';
bio(231).ndims=2;
bio(231).size=[];


bio(232).blkName='DataLogging/Create Task State Subsystem/Task Control Button';
bio(232).sigName='';
bio(232).portIdx=0;
bio(232).dim=[1,1];
bio(232).sigWidth=1;
bio(232).sigAddress='&BimanualCarvingModifiedTestEMG_B.TaskControlButton';
bio(232).ndims=2;
bio(232).size=[];


bio(233).blkName='DataLogging/Create Task State Subsystem/Timestamp';
bio(233).sigName='';
bio(233).portIdx=0;
bio(233).dim=[1,1];
bio(233).sigWidth=1;
bio(233).sigAddress='&BimanualCarvingModifiedTestEMG_B.Timestamp';
bio(233).ndims=2;
bio(233).size=[];


bio(234).blkName='DataLogging/Create Task State Subsystem/Product';
bio(234).sigName='';
bio(234).portIdx=0;
bio(234).dim=[1,1];
bio(234).sigWidth=1;
bio(234).sigAddress='&BimanualCarvingModifiedTestEMG_B.Product_gz';
bio(234).ndims=2;
bio(234).size=[];


bio(235).blkName='DataLogging/Create Task State Subsystem/Rate Transition';
bio(235).sigName='';
bio(235).portIdx=0;
bio(235).dim=[12,1];
bio(235).sigWidth=12;
bio(235).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition[0]';
bio(235).ndims=2;
bio(235).size=[];


bio(236).blkName='DataLogging/Create Task State Subsystem/Select Calibration Button Bitfield';
bio(236).sigName='';
bio(236).portIdx=0;
bio(236).dim=[1,1];
bio(236).sigWidth=1;
bio(236).sigAddress='&BimanualCarvingModifiedTestEMG_B.SelectCalibrationButtonBitfield';
bio(236).ndims=2;
bio(236).size=[];


bio(237).blkName='DataLogging/Create Task State Subsystem/Select servo update count';
bio(237).sigName='';
bio(237).portIdx=0;
bio(237).dim=[1,1];
bio(237).sigWidth=1;
bio(237).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selectservoupdatecount';
bio(237).ndims=2;
bio(237).size=[];


bio(238).blkName='DataLogging/Keep alive/Pack';
bio(238).sigName='';
bio(238).portIdx=0;
bio(238).dim=[40,1];
bio(238).sigWidth=40;
bio(238).sigAddress='&BimanualCarvingModifiedTestEMG_B.Pack[0]';
bio(238).ndims=2;
bio(238).size=[];


bio(239).blkName='DataLogging/Network Transfer Subsystem/Send Control Machine/p1';
bio(239).sigName='data_out';
bio(239).portIdx=0;
bio(239).dim=[306,1];
bio(239).sigWidth=306;
bio(239).sigAddress='&BimanualCarvingModifiedTestEMG_B.data_out[0]';
bio(239).ndims=2;
bio(239).size=[];


bio(240).blkName='DataLogging/Network Transfer Subsystem/Send Control Machine/p2';
bio(240).sigName='queue_size';
bio(240).portIdx=1;
bio(240).dim=[1,1];
bio(240).sigWidth=1;
bio(240).sigAddress='&BimanualCarvingModifiedTestEMG_B.queue_size';
bio(240).ndims=2;
bio(240).size=[];


bio(241).blkName='DataLogging/Network Transfer Subsystem/Send Control Machine/p3';
bio(241).sigName='total_timeouts';
bio(241).portIdx=2;
bio(241).dim=[1,1];
bio(241).sigWidth=1;
bio(241).sigAddress='&BimanualCarvingModifiedTestEMG_B.total_timeouts';
bio(241).ndims=2;
bio(241).size=[];


bio(242).blkName='DataLogging/Network Transfer Subsystem/max_packet_id';
bio(242).sigName='';
bio(242).portIdx=0;
bio(242).dim=[1,1];
bio(242).sigWidth=1;
bio(242).sigAddress='&BimanualCarvingModifiedTestEMG_B.max_packet_id';
bio(242).ndims=2;
bio(242).size=[];


bio(243).blkName='DataLogging/Network Transfer Subsystem/Data Type Conversion';
bio(243).sigName='';
bio(243).portIdx=0;
bio(243).dim=[1,1];
bio(243).sigWidth=1;
bio(243).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion_e';
bio(243).ndims=2;
bio(243).size=[];


bio(244).blkName='DataLogging/Network Transfer Subsystem/Data Type Conversion1';
bio(244).sigName='';
bio(244).portIdx=0;
bio(244).dim=[1,1];
bio(244).sigWidth=1;
bio(244).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion1_ne';
bio(244).ndims=2;
bio(244).size=[];


bio(245).blkName='DataLogging/Network Transfer Subsystem/Queue Size';
bio(245).sigName='';
bio(245).portIdx=0;
bio(245).dim=[1,1];
bio(245).sigWidth=1;
bio(245).sigAddress='&BimanualCarvingModifiedTestEMG_B.QueueSize';
bio(245).ndims=2;
bio(245).size=[];


bio(246).blkName='DataLogging/Network Transfer Subsystem/Total Packets Sent';
bio(246).sigName='';
bio(246).portIdx=0;
bio(246).dim=[1,1];
bio(246).sigWidth=1;
bio(246).sigAddress='&BimanualCarvingModifiedTestEMG_B.TotalPacketsSent';
bio(246).ndims=2;
bio(246).size=[];


bio(247).blkName='DataLogging/Network Transfer Subsystem/Total Timeouts';
bio(247).sigName='';
bio(247).portIdx=0;
bio(247).dim=[1,1];
bio(247).sigWidth=1;
bio(247).sigAddress='&BimanualCarvingModifiedTestEMG_B.TotalTimeouts';
bio(247).ndims=2;
bio(247).size=[];


bio(248).blkName='DataLogging/Network Transfer Subsystem/Receive/p1';
bio(248).sigName='';
bio(248).portIdx=0;
bio(248).dim=[4,1];
bio(248).sigWidth=4;
bio(248).sigAddress='&BimanualCarvingModifiedTestEMG_B.Receive_o1_h[0]';
bio(248).ndims=2;
bio(248).size=[];


bio(249).blkName='DataLogging/Network Transfer Subsystem/Receive/p2';
bio(249).sigName='';
bio(249).portIdx=1;
bio(249).dim=[1,1];
bio(249).sigWidth=1;
bio(249).sigAddress='&BimanualCarvingModifiedTestEMG_B.Receive_o2_c';
bio(249).ndims=2;
bio(249).size=[];


bio(250).blkName='DataLogging/Network Transfer Subsystem/Unpack';
bio(250).sigName='';
bio(250).portIdx=0;
bio(250).dim=[1,1];
bio(250).sigWidth=1;
bio(250).sigAddress='&BimanualCarvingModifiedTestEMG_B.Unpack';
bio(250).ndims=2;
bio(250).size=[];


bio(251).blkName='DataLogging/Poll Force Plates/Convert1';
bio(251).sigName='';
bio(251).portIdx=0;
bio(251).dim=[34,1];
bio(251).sigWidth=34;
bio(251).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert1_c[0]';
bio(251).ndims=2;
bio(251).size=[];


bio(252).blkName='DataLogging/Poll Force Plates/Convert19';
bio(252).sigName='';
bio(252).portIdx=0;
bio(252).dim=[14,1];
bio(252).sigWidth=14;
bio(252).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert19_e5[0]';
bio(252).ndims=2;
bio(252).size=[];


bio(253).blkName='DataLogging/Poll KINARM/Create KINARM Data Array/p1';
bio(253).sigName='kinarm_data';
bio(253).portIdx=0;
bio(253).dim=[3,50];
bio(253).sigWidth=150;
bio(253).sigAddress='&BimanualCarvingModifiedTestEMG_B.kinarm_data[0]';
bio(253).ndims=2;
bio(253).size=[];


bio(254).blkName='DataLogging/Poll KINARM/Create KINARM Data Array/p2';
bio(254).sigName='primary_encoder_data_out';
bio(254).portIdx=1;
bio(254).dim=[2,6];
bio(254).sigWidth=12;
bio(254).sigAddress='&BimanualCarvingModifiedTestEMG_B.primary_encoder_data_out[0]';
bio(254).ndims=2;
bio(254).size=[];


bio(255).blkName='DataLogging/Poll KINARM/Monitor_status';
bio(255).sigName='force_scale';
bio(255).portIdx=0;
bio(255).dim=[1,1];
bio(255).sigWidth=1;
bio(255).sigAddress='&BimanualCarvingModifiedTestEMG_B.force_scale';
bio(255).ndims=2;
bio(255).size=[];


bio(256).blkName='DataLogging/Poll KINARM/Convert1';
bio(256).sigName='';
bio(256).portIdx=0;
bio(256).dim=[2,6];
bio(256).sigWidth=12;
bio(256).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert1_f[0]';
bio(256).ndims=2;
bio(256).size=[];


bio(257).blkName='DataLogging/Poll KINARM/Convert19';
bio(257).sigName='';
bio(257).portIdx=0;
bio(257).dim=[3,50];
bio(257).sigWidth=150;
bio(257).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert19_e[0]';
bio(257).ndims=2;
bio(257).size=[];


bio(258).blkName='DataLogging/Poll KINARM/Convert2';
bio(258).sigName='';
bio(258).portIdx=0;
bio(258).dim=[3,1];
bio(258).sigWidth=3;
bio(258).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert2_b[0]';
bio(258).ndims=2;
bio(258).size=[];


bio(259).blkName='DataLogging/Poll KINARM/Convert3';
bio(259).sigName='';
bio(259).portIdx=0;
bio(259).dim=[8,2];
bio(259).sigWidth=16;
bio(259).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenate_m[0]';
bio(259).ndims=2;
bio(259).size=[];


bio(260).blkName='DataLogging/Poll KINARM/Convert4';
bio(260).sigName='';
bio(260).portIdx=0;
bio(260).dim=[8,2];
bio(260).sigWidth=16;
bio(260).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenate_m[0]';
bio(260).ndims=2;
bio(260).size=[];


bio(261).blkName='DataLogging/Poll KINARM/Data Type Conversion';
bio(261).sigName='';
bio(261).portIdx=0;
bio(261).dim=[10,1];
bio(261).sigWidth=10;
bio(261).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion_i[0]';
bio(261).ndims=2;
bio(261).size=[];


bio(262).blkName='DataLogging/Poll KINARM/Data Type Conversion1';
bio(262).sigName='';
bio(262).portIdx=0;
bio(262).dim=[10,1];
bio(262).sigWidth=10;
bio(262).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion1_e[0]';
bio(262).ndims=2;
bio(262).size=[];


bio(263).blkName='DataLogging/Poll KINARM/Data Type Conversion2';
bio(263).sigName='';
bio(263).portIdx=0;
bio(263).dim=[9,1];
bio(263).sigWidth=9;
bio(263).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion2_a[0]';
bio(263).ndims=2;
bio(263).size=[];


bio(264).blkName='DataLogging/Poll KINARM/Data Type Conversion3';
bio(264).sigName='';
bio(264).portIdx=0;
bio(264).dim=[9,1];
bio(264).sigWidth=9;
bio(264).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion3_p[0]';
bio(264).ndims=2;
bio(264).size=[];


bio(265).blkName='DataLogging/Poll KINARM/Data Type Conversion4';
bio(265).sigName='';
bio(265).portIdx=0;
bio(265).dim=[20,1];
bio(265).sigWidth=20;
bio(265).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion4[0]';
bio(265).ndims=2;
bio(265).size=[];


bio(266).blkName='DataLogging/Poll KINARM/Data Type Conversion5';
bio(266).sigName='';
bio(266).portIdx=0;
bio(266).dim=[14,1];
bio(266).sigWidth=14;
bio(266).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion5[0]';
bio(266).ndims=2;
bio(266).size=[];


bio(267).blkName='DataLogging/Poll KINARM/Data Type Conversion6';
bio(267).sigName='';
bio(267).portIdx=0;
bio(267).dim=[4,1];
bio(267).sigWidth=4;
bio(267).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion6[0]';
bio(267).ndims=2;
bio(267).size=[];


bio(268).blkName='DataLogging/Poll KINARM/Data Type Conversion7';
bio(268).sigName='';
bio(268).portIdx=0;
bio(268).dim=[12,1];
bio(268).sigWidth=12;
bio(268).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion7[0]';
bio(268).ndims=2;
bio(268).size=[];


bio(269).blkName='DataLogging/Poll KINARM/Data Type Conversion8';
bio(269).sigName='';
bio(269).portIdx=0;
bio(269).dim=[4,1];
bio(269).sigWidth=4;
bio(269).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion8[0]';
bio(269).ndims=2;
bio(269).size=[];


bio(270).blkName='DataLogging/Poll KINARM/Memory';
bio(270).sigName='';
bio(270).portIdx=0;
bio(270).dim=[4,1];
bio(270).sigWidth=4;
bio(270).sigAddress='&BimanualCarvingModifiedTestEMG_B.Memory[0]';
bio(270).ndims=2;
bio(270).size=[];


bio(271).blkName='DataLogging/Poll KINARM/Product';
bio(271).sigName='';
bio(271).portIdx=0;
bio(271).dim=[4,1];
bio(271).sigWidth=4;
bio(271).sigAddress='&BimanualCarvingModifiedTestEMG_B.Product_k[0]';
bio(271).ndims=2;
bio(271).size=[];


bio(272).blkName='DataLogging/Poll KINARM/S-Function/p1';
bio(272).sigName='';
bio(272).portIdx=0;
bio(272).dim=[10,1];
bio(272).sigWidth=10;
bio(272).sigAddress='&BimanualCarvingModifiedTestEMG_B.SFunction_o1[0]';
bio(272).ndims=2;
bio(272).size=[];


bio(273).blkName='DataLogging/Poll KINARM/S-Function/p2';
bio(273).sigName='';
bio(273).portIdx=1;
bio(273).dim=[10,1];
bio(273).sigWidth=10;
bio(273).sigAddress='&BimanualCarvingModifiedTestEMG_B.SFunction_o2[0]';
bio(273).ndims=2;
bio(273).size=[];


bio(274).blkName='DataLogging/Poll KINARM/S-Function/p3';
bio(274).sigName='';
bio(274).portIdx=2;
bio(274).dim=[1,1];
bio(274).sigWidth=1;
bio(274).sigAddress='&BimanualCarvingModifiedTestEMG_B.SFunction_o3';
bio(274).ndims=2;
bio(274).size=[];


bio(275).blkName='DataLogging/Poll KINARM/S-Function/p4';
bio(275).sigName='';
bio(275).portIdx=3;
bio(275).dim=[4,1];
bio(275).sigWidth=4;
bio(275).sigAddress='&BimanualCarvingModifiedTestEMG_B.SFunction_o4[0]';
bio(275).ndims=2;
bio(275).size=[];


bio(276).blkName='DataLogging/Poll KINARM/S-Function/p5';
bio(276).sigName='';
bio(276).portIdx=4;
bio(276).dim=[6,1];
bio(276).sigWidth=6;
bio(276).sigAddress='&BimanualCarvingModifiedTestEMG_B.SFunction_o5[0]';
bio(276).ndims=2;
bio(276).size=[];


bio(277).blkName='DataLogging/Poll KINARM/S-Function/p6';
bio(277).sigName='';
bio(277).portIdx=5;
bio(277).dim=[6,1];
bio(277).sigWidth=6;
bio(277).sigAddress='&BimanualCarvingModifiedTestEMG_B.SFunction_o6[0]';
bio(277).ndims=2;
bio(277).size=[];


bio(278).blkName='DataLogging/Poll KINARM/S-Function/p7';
bio(278).sigName='';
bio(278).portIdx=6;
bio(278).dim=[1,1];
bio(278).sigWidth=1;
bio(278).sigAddress='&BimanualCarvingModifiedTestEMG_B.SFunction_o7';
bio(278).ndims=2;
bio(278).size=[];


bio(279).blkName='DataLogging/Poll KINARM/S-Function/p8';
bio(279).sigName='';
bio(279).portIdx=7;
bio(279).dim=[1,1];
bio(279).sigWidth=1;
bio(279).sigAddress='&BimanualCarvingModifiedTestEMG_B.SFunction_o8';
bio(279).ndims=2;
bio(279).size=[];


bio(280).blkName='DataLogging/Poll KINARM/S-Function/p9';
bio(280).sigName='';
bio(280).portIdx=8;
bio(280).dim=[3,1];
bio(280).sigWidth=3;
bio(280).sigAddress='&BimanualCarvingModifiedTestEMG_B.SFunction_o9[0]';
bio(280).ndims=2;
bio(280).size=[];


bio(281).blkName='DataLogging/Poll KINARM/S-Function/p10';
bio(281).sigName='';
bio(281).portIdx=9;
bio(281).dim=[1,1];
bio(281).sigWidth=1;
bio(281).sigAddress='&BimanualCarvingModifiedTestEMG_B.SFunction_o10';
bio(281).ndims=2;
bio(281).size=[];


bio(282).blkName='DataLogging/Poll KINARM/AddTorques';
bio(282).sigName='';
bio(282).portIdx=0;
bio(282).dim=[4,1];
bio(282).sigWidth=4;
bio(282).sigAddress='&BimanualCarvingModifiedTestEMG_B.AddTorques[0]';
bio(282).ndims=2;
bio(282).size=[];


bio(283).blkName='DataLogging/Receive_Gaze/Create timestamp/p1';
bio(283).sigName='timestamp_out';
bio(283).portIdx=0;
bio(283).dim=[1,1];
bio(283).sigWidth=1;
bio(283).sigAddress='&BimanualCarvingModifiedTestEMG_B.timestamp_out';
bio(283).ndims=2;
bio(283).size=[];


bio(284).blkName='DataLogging/Receive_Gaze/Create timestamp/p2';
bio(284).sigName='start_time_out';
bio(284).portIdx=1;
bio(284).dim=[1,1];
bio(284).sigWidth=1;
bio(284).sigAddress='&BimanualCarvingModifiedTestEMG_B.start_time_out';
bio(284).ndims=2;
bio(284).size=[];


bio(285).blkName='DataLogging/Receive_Gaze/Embedded MATLAB Function1/p1';
bio(285).sigName='gazeXYCalculated';
bio(285).portIdx=0;
bio(285).dim=[2,1];
bio(285).sigWidth=2;
bio(285).sigAddress='&BimanualCarvingModifiedTestEMG_B.gazeXYCalculated[0]';
bio(285).ndims=2;
bio(285).size=[];


bio(286).blkName='DataLogging/Receive_Gaze/Embedded MATLAB Function1/p2';
bio(286).sigName='pupil_area_GLOBAL';
bio(286).portIdx=1;
bio(286).dim=[1,1];
bio(286).sigWidth=1;
bio(286).sigAddress='&BimanualCarvingModifiedTestEMG_B.pupil_area_GLOBAL';
bio(286).ndims=2;
bio(286).size=[];


bio(287).blkName='DataLogging/Receive_Gaze/clean_packet/p1';
bio(287).sigName='pack_out';
bio(287).portIdx=0;
bio(287).dim=[512,1];
bio(287).sigWidth=512;
bio(287).sigAddress='&BimanualCarvingModifiedTestEMG_B.pack_out[0]';
bio(287).ndims=2;
bio(287).size=[];


bio(288).blkName='DataLogging/Receive_Gaze/clean_packet/p2';
bio(288).sigName='len_out';
bio(288).portIdx=1;
bio(288).dim=[1,1];
bio(288).sigWidth=1;
bio(288).sigAddress='&BimanualCarvingModifiedTestEMG_B.len_out';
bio(288).ndims=2;
bio(288).size=[];


bio(289).blkName='DataLogging/Receive_Gaze/convert to seconds';
bio(289).sigName='event_data_out';
bio(289).portIdx=0;
bio(289).dim=[3,1];
bio(289).sigWidth=3;
bio(289).sigAddress='&BimanualCarvingModifiedTestEMG_B.event_data_out[0]';
bio(289).ndims=2;
bio(289).size=[];


bio(290).blkName='DataLogging/Receive_Gaze/Convert1';
bio(290).sigName='';
bio(290).portIdx=0;
bio(290).dim=[1,1];
bio(290).sigWidth=1;
bio(290).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert1';
bio(290).ndims=2;
bio(290).size=[];


bio(291).blkName='DataLogging/Receive_Gaze/Convert19';
bio(291).sigName='';
bio(291).portIdx=0;
bio(291).dim=[3,1];
bio(291).sigWidth=3;
bio(291).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert19[0]';
bio(291).ndims=2;
bio(291).size=[];


bio(292).blkName='DataLogging/Receive_Gaze/Convert2';
bio(292).sigName='';
bio(292).portIdx=0;
bio(292).dim=[3,1];
bio(292).sigWidth=3;
bio(292).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert2[0]';
bio(292).ndims=2;
bio(292).size=[];


bio(293).blkName='DataLogging/Receive_Gaze/Convert3';
bio(293).sigName='';
bio(293).portIdx=0;
bio(293).dim=[1,1];
bio(293).sigWidth=1;
bio(293).sigAddress='&BimanualCarvingModifiedTestEMG_B.Convert3';
bio(293).ndims=2;
bio(293).size=[];


bio(294).blkName='DataLogging/Receive_Gaze/Data Type Conversion';
bio(294).sigName='';
bio(294).portIdx=0;
bio(294).dim=[1,1];
bio(294).sigWidth=1;
bio(294).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion';
bio(294).ndims=2;
bio(294).size=[];


bio(295).blkName='DataLogging/Receive_Gaze/Data Type Conversion1';
bio(295).sigName='';
bio(295).portIdx=0;
bio(295).dim=[3,1];
bio(295).sigWidth=3;
bio(295).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion1[0]';
bio(295).ndims=2;
bio(295).size=[];


bio(296).blkName='DataLogging/Receive_Gaze/Data Type Conversion3';
bio(296).sigName='';
bio(296).portIdx=0;
bio(296).dim=[1,4];
bio(296).sigWidth=4;
bio(296).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion3[0]';
bio(296).ndims=2;
bio(296).size=[];


bio(297).blkName='DataLogging/Receive_Gaze/Data Type Conversion4';
bio(297).sigName='';
bio(297).portIdx=0;
bio(297).dim=[1,1];
bio(297).sigWidth=1;
bio(297).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion4_j';
bio(297).ndims=2;
bio(297).size=[];


bio(298).blkName='DataLogging/Receive_Gaze/Data Type Conversion5';
bio(298).sigName='';
bio(298).portIdx=0;
bio(298).dim=[1,1];
bio(298).sigWidth=1;
bio(298).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion5_o';
bio(298).ndims=2;
bio(298).size=[];


bio(299).blkName='DataLogging/Receive_Gaze/convert';
bio(299).sigName='';
bio(299).portIdx=0;
bio(299).dim=[1,1];
bio(299).sigWidth=1;
bio(299).sigAddress='&BimanualCarvingModifiedTestEMG_B.convert';
bio(299).ndims=2;
bio(299).size=[];


bio(300).blkName='DataLogging/Receive_Gaze/Reshape';
bio(300).sigName='';
bio(300).portIdx=0;
bio(300).dim=[2,4];
bio(300).sigWidth=8;
bio(300).sigAddress='&BimanualCarvingModifiedTestEMG_B.Reshape[0]';
bio(300).ndims=2;
bio(300).size=[];


bio(301).blkName='DataLogging/Receive_Gaze/Selector - Left Eye';
bio(301).sigName='';
bio(301).portIdx=0;
bio(301).dim=[1,4];
bio(301).sigWidth=4;
bio(301).sigAddress='&BimanualCarvingModifiedTestEMG_B.SelectorLeftEye[0]';
bio(301).ndims=2;
bio(301).size=[];


bio(302).blkName='DataLogging/Receive_Gaze/Receive/p1';
bio(302).sigName='';
bio(302).portIdx=0;
bio(302).dim=[512,1];
bio(302).sigWidth=512;
bio(302).sigAddress='&BimanualCarvingModifiedTestEMG_B.Receive_o1[0]';
bio(302).ndims=2;
bio(302).size=[];


bio(303).blkName='DataLogging/Receive_Gaze/Receive/p2';
bio(303).sigName='';
bio(303).portIdx=1;
bio(303).dim=[1,1];
bio(303).sigWidth=1;
bio(303).sigAddress='&BimanualCarvingModifiedTestEMG_B.Receive_o2';
bio(303).ndims=2;
bio(303).size=[];


bio(304).blkName='DataLogging/Receive_Gaze/S-Function/p1';
bio(304).sigName='';
bio(304).portIdx=0;
bio(304).dim=[1,1];
bio(304).sigWidth=1;
bio(304).sigAddress='&BimanualCarvingModifiedTestEMG_B.SFunction_o1_n';
bio(304).ndims=2;
bio(304).size=[];


bio(305).blkName='DataLogging/Receive_Gaze/S-Function/p2';
bio(305).sigName='SAMPE_TYPE';
bio(305).portIdx=1;
bio(305).dim=[1,1];
bio(305).sigWidth=1;
bio(305).sigAddress='&BimanualCarvingModifiedTestEMG_B.SAMPE_TYPE';
bio(305).ndims=2;
bio(305).size=[];


bio(306).blkName='DataLogging/Receive_Gaze/S-Function/p3';
bio(306).sigName='Content Flags';
bio(306).portIdx=2;
bio(306).dim=[1,1];
bio(306).sigWidth=1;
bio(306).sigAddress='&BimanualCarvingModifiedTestEMG_B.ContentFlags';
bio(306).ndims=2;
bio(306).size=[];


bio(307).blkName='DataLogging/Receive_Gaze/S-Function/p4';
bio(307).sigName='pupil X';
bio(307).portIdx=3;
bio(307).dim=[2,1];
bio(307).sigWidth=2;
bio(307).sigAddress='&BimanualCarvingModifiedTestEMG_B.pupilX[0]';
bio(307).ndims=2;
bio(307).size=[];


bio(308).blkName='DataLogging/Receive_Gaze/S-Function/p5';
bio(308).sigName='pupil Y';
bio(308).portIdx=4;
bio(308).dim=[2,1];
bio(308).sigWidth=2;
bio(308).sigAddress='&BimanualCarvingModifiedTestEMG_B.pupilY[0]';
bio(308).ndims=2;
bio(308).size=[];


bio(309).blkName='DataLogging/Receive_Gaze/S-Function/p6';
bio(309).sigName='HREF X';
bio(309).portIdx=5;
bio(309).dim=[2,1];
bio(309).sigWidth=2;
bio(309).sigAddress='&BimanualCarvingModifiedTestEMG_B.HREFX[0]';
bio(309).ndims=2;
bio(309).size=[];


bio(310).blkName='DataLogging/Receive_Gaze/S-Function/p7';
bio(310).sigName='HREF Y';
bio(310).portIdx=6;
bio(310).dim=[2,1];
bio(310).sigWidth=2;
bio(310).sigAddress='&BimanualCarvingModifiedTestEMG_B.HREFY[0]';
bio(310).ndims=2;
bio(310).size=[];


bio(311).blkName='DataLogging/Receive_Gaze/S-Function/p8';
bio(311).sigName='pupil area';
bio(311).portIdx=7;
bio(311).dim=[2,1];
bio(311).sigWidth=2;
bio(311).sigAddress='&BimanualCarvingModifiedTestEMG_B.pupilarea[0]';
bio(311).ndims=2;
bio(311).size=[];


bio(312).blkName='DataLogging/Receive_Gaze/S-Function/p9';
bio(312).sigName='screen gaze X';
bio(312).portIdx=8;
bio(312).dim=[2,1];
bio(312).sigWidth=2;
bio(312).sigAddress='&BimanualCarvingModifiedTestEMG_B.screengazeX[0]';
bio(312).ndims=2;
bio(312).size=[];


bio(313).blkName='DataLogging/Receive_Gaze/S-Function/p10';
bio(313).sigName='screen gaze Y';
bio(313).portIdx=9;
bio(313).dim=[2,1];
bio(313).sigWidth=2;
bio(313).sigAddress='&BimanualCarvingModifiedTestEMG_B.screengazeY[0]';
bio(313).ndims=2;
bio(313).size=[];


bio(314).blkName='DataLogging/Receive_Gaze/S-Function/p11';
bio(314).sigName='resolution X';
bio(314).portIdx=10;
bio(314).dim=[1,1];
bio(314).sigWidth=1;
bio(314).sigAddress='&BimanualCarvingModifiedTestEMG_B.resolutionX';
bio(314).ndims=2;
bio(314).size=[];


bio(315).blkName='DataLogging/Receive_Gaze/S-Function/p12';
bio(315).sigName='resolution Y';
bio(315).portIdx=11;
bio(315).dim=[1,1];
bio(315).sigWidth=1;
bio(315).sigAddress='&BimanualCarvingModifiedTestEMG_B.resolutionY';
bio(315).ndims=2;
bio(315).size=[];


bio(316).blkName='DataLogging/Receive_Gaze/S-Function/p13';
bio(316).sigName='status flags';
bio(316).portIdx=12;
bio(316).dim=[1,1];
bio(316).sigWidth=1;
bio(316).sigAddress='&BimanualCarvingModifiedTestEMG_B.statusflags';
bio(316).ndims=2;
bio(316).size=[];


bio(317).blkName='DataLogging/Receive_Gaze/S-Function/p14';
bio(317).sigName='extra input';
bio(317).portIdx=13;
bio(317).dim=[1,1];
bio(317).sigWidth=1;
bio(317).sigAddress='&BimanualCarvingModifiedTestEMG_B.extrainput';
bio(317).ndims=2;
bio(317).size=[];


bio(318).blkName='DataLogging/Receive_Gaze/S-Function/p15';
bio(318).sigName='buttons';
bio(318).portIdx=14;
bio(318).dim=[1,1];
bio(318).sigWidth=1;
bio(318).sigAddress='&BimanualCarvingModifiedTestEMG_B.buttons';
bio(318).ndims=2;
bio(318).size=[];


bio(319).blkName='DataLogging/Receive_Gaze/S-Function/p16';
bio(319).sigName='htype';
bio(319).portIdx=15;
bio(319).dim=[1,1];
bio(319).sigWidth=1;
bio(319).sigAddress='&BimanualCarvingModifiedTestEMG_B.htype';
bio(319).ndims=2;
bio(319).size=[];


bio(320).blkName='DataLogging/Receive_Gaze/S-Function/p17';
bio(320).sigName='hdata';
bio(320).portIdx=16;
bio(320).dim=[8,1];
bio(320).sigWidth=8;
bio(320).sigAddress='&BimanualCarvingModifiedTestEMG_B.hdata[0]';
bio(320).ndims=2;
bio(320).size=[];


bio(321).blkName='DataLogging/Receive_Gaze/S-Function/p18';
bio(321).sigName='';
bio(321).portIdx=17;
bio(321).dim=[3,1];
bio(321).sigWidth=3;
bio(321).sigAddress='&BimanualCarvingModifiedTestEMG_B.SFunction_o18[0]';
bio(321).ndims=2;
bio(321).size=[];


bio(322).blkName='GUI Control/Preview Targets Subsystem/Create Target Vector/p1';
bio(322).sigName='target_vector';
bio(322).portIdx=0;
bio(322).dim=[1,352];
bio(322).sigWidth=352;
bio(322).sigAddress='&BimanualCarvingModifiedTestEMG_B.target_vector[0]';
bio(322).ndims=2;
bio(322).size=[];


bio(323).blkName='GUI Control/Preview Targets Subsystem/Create Target Vector/p2';
bio(323).sigName='target_vector_length';
bio(323).portIdx=1;
bio(323).dim=[1,1];
bio(323).sigWidth=1;
bio(323).sigAddress='&BimanualCarvingModifiedTestEMG_B.target_vector_length';
bio(323).ndims=2;
bio(323).size=[];


bio(324).blkName='GUI Control/Preview Targets Subsystem/Concatenation';
bio(324).sigName='';
bio(324).portIdx=0;
bio(324).dim=[2,5];
bio(324).sigWidth=10;
bio(324).sigAddress='&BimanualCarvingModifiedTestEMG_B.Concatenation1[0]';
bio(324).ndims=2;
bio(324).size=[];


bio(325).blkName='GUI Control/Preview Targets Subsystem/Concatenation1';
bio(325).sigName='';
bio(325).portIdx=0;
bio(325).dim=[2,5];
bio(325).sigWidth=10;
bio(325).sigAddress='&BimanualCarvingModifiedTestEMG_B.Concatenation1[0]';
bio(325).ndims=2;
bio(325).size=[];


bio(326).blkName='GUI Control/Preview Targets Subsystem/indices_padding';
bio(326).sigName='';
bio(326).portIdx=0;
bio(326).dim=[2,5];
bio(326).sigWidth=10;
bio(326).sigAddress='&BimanualCarvingModifiedTestEMG_B.Concatenation1[0]';
bio(326).ndims=2;
bio(326).size=[];


bio(327).blkName='GUI Control/Preview Targets Subsystem/Reshape';
bio(327).sigName='';
bio(327).portIdx=0;
bio(327).dim=[2,5];
bio(327).sigWidth=10;
bio(327).sigAddress='&BimanualCarvingModifiedTestEMG_B.Concatenation1[0]';
bio(327).ndims=2;
bio(327).size=[];


bio(328).blkName='GUI Control/Preview Targets Subsystem/Reshape1';
bio(328).sigName='';
bio(328).portIdx=0;
bio(328).dim=[2,5];
bio(328).sigWidth=10;
bio(328).sigAddress='&BimanualCarvingModifiedTestEMG_B.Concatenation1[0]';
bio(328).ndims=2;
bio(328).size=[];


bio(329).blkName='GUI Control/Run Command Subsystem/Embedded MATLAB Function/p1';
bio(329).sigName='y';
bio(329).portIdx=0;
bio(329).dim=[1,1];
bio(329).sigWidth=1;
bio(329).sigAddress='&BimanualCarvingModifiedTestEMG_B.y_c';
bio(329).ndims=2;
bio(329).size=[];


bio(330).blkName='GUI Control/Run Command Subsystem/Embedded MATLAB Function/p2';
bio(330).sigName='z';
bio(330).portIdx=1;
bio(330).dim=[1,1];
bio(330).sigWidth=1;
bio(330).sigAddress='&BimanualCarvingModifiedTestEMG_B.z';
bio(330).ndims=2;
bio(330).size=[];


bio(331).blkName='GUI Control/Run Command Subsystem/Data Type Conversion';
bio(331).sigName='';
bio(331).portIdx=0;
bio(331).dim=[1,1];
bio(331).sigWidth=1;
bio(331).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion_k';
bio(331).ndims=2;
bio(331).size=[];


bio(332).blkName='GUI Control/Run Command Subsystem/Data Type Conversion1';
bio(332).sigName='';
bio(332).portIdx=0;
bio(332).dim=[1,1];
bio(332).sigWidth=1;
bio(332).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion1_j';
bio(332).ndims=2;
bio(332).size=[];


bio(333).blkName='GUI Control/Run Command Subsystem/Data Type Conversion2';
bio(333).sigName='';
bio(333).portIdx=0;
bio(333).dim=[1,1];
bio(333).sigWidth=1;
bio(333).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion2_f';
bio(333).ndims=2;
bio(333).size=[];


bio(334).blkName='GUI Control/Run Command Subsystem/Rate Transition';
bio(334).sigName='';
bio(334).portIdx=0;
bio(334).dim=[1,1];
bio(334).sigWidth=1;
bio(334).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition_o';
bio(334).ndims=2;
bio(334).size=[];


bio(335).blkName='GUI Control/Run Command Subsystem/Run Command Receive/p1';
bio(335).sigName='';
bio(335).portIdx=0;
bio(335).dim=[1,1];
bio(335).sigWidth=1;
bio(335).sigAddress='&BimanualCarvingModifiedTestEMG_B.RunCommandReceive_o1';
bio(335).ndims=2;
bio(335).size=[];


bio(336).blkName='GUI Control/Run Command Subsystem/Run Command Receive/p2';
bio(336).sigName='';
bio(336).portIdx=1;
bio(336).dim=[1,1];
bio(336).sigWidth=1;
bio(336).sigAddress='&BimanualCarvingModifiedTestEMG_B.RunCommandReceive_o2';
bio(336).ndims=2;
bio(336).size=[];


bio(337).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p1';
bio(337).sigName='task_status';
bio(337).portIdx=0;
bio(337).dim=[1,1];
bio(337).sigWidth=1;
bio(337).sigAddress='&BimanualCarvingModifiedTestEMG_B.task_status_b';
bio(337).ndims=2;
bio(337).size=[];


bio(338).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p2';
bio(338).sigName='tp';
bio(338).portIdx=1;
bio(338).dim=[1,1];
bio(338).sigWidth=1;
bio(338).sigAddress='&BimanualCarvingModifiedTestEMG_B.tp';
bio(338).ndims=2;
bio(338).size=[];


bio(339).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p3';
bio(339).sigName='block';
bio(339).portIdx=2;
bio(339).dim=[1,1];
bio(339).sigWidth=1;
bio(339).sigAddress='&BimanualCarvingModifiedTestEMG_B.block';
bio(339).ndims=2;
bio(339).size=[];


bio(340).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p4';
bio(340).sigName='trial_in_block';
bio(340).portIdx=3;
bio(340).dim=[1,1];
bio(340).sigWidth=1;
bio(340).sigAddress='&BimanualCarvingModifiedTestEMG_B.trial_in_block';
bio(340).ndims=2;
bio(340).size=[];


bio(341).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p5';
bio(341).sigName='block_in_set';
bio(341).portIdx=4;
bio(341).dim=[1,1];
bio(341).sigWidth=1;
bio(341).sigAddress='&BimanualCarvingModifiedTestEMG_B.block_in_set';
bio(341).ndims=2;
bio(341).size=[];


bio(342).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p6';
bio(342).sigName='trial_in_set';
bio(342).portIdx=5;
bio(342).dim=[1,1];
bio(342).sigWidth=1;
bio(342).sigAddress='&BimanualCarvingModifiedTestEMG_B.trial_in_set';
bio(342).ndims=2;
bio(342).size=[];


bio(343).blkName='GUI Control/Task Execution Control Subsystem/Task Execution Control Machine/p7';
bio(343).sigName='e_exit_trial';
bio(343).portIdx=6;
bio(343).dim=[1,1];
bio(343).sigWidth=1;
bio(343).sigAddress='&BimanualCarvingModifiedTestEMG_B.e_exit_trial';
bio(343).ndims=2;
bio(343).size=[];


bio(344).blkName='GUI Control/Task Execution Control Subsystem/Data Type Conversion';
bio(344).sigName='';
bio(344).portIdx=0;
bio(344).dim=[1,1];
bio(344).sigWidth=1;
bio(344).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion_d';
bio(344).ndims=2;
bio(344).size=[];


bio(345).blkName='GUI Control/Task Execution Control Subsystem/Data Type Conversion1';
bio(345).sigName='';
bio(345).portIdx=0;
bio(345).dim=[1,1];
bio(345).sigWidth=1;
bio(345).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion1_je';
bio(345).ndims=2;
bio(345).size=[];


bio(346).blkName='GUI Control/Task Execution Control Subsystem/Data Type Conversion2';
bio(346).sigName='';
bio(346).portIdx=0;
bio(346).dim=[1,1];
bio(346).sigWidth=1;
bio(346).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion2';
bio(346).ndims=2;
bio(346).size=[];


bio(347).blkName='GUI Control/Task Execution Control Subsystem/Task Clock';
bio(347).sigName='';
bio(347).portIdx=0;
bio(347).dim=[1,1];
bio(347).sigWidth=1;
bio(347).sigAddress='&BimanualCarvingModifiedTestEMG_B.TaskClock';
bio(347).ndims=2;
bio(347).size=[];


bio(348).blkName='GUI Control/Task Execution Control Subsystem/Delay';
bio(348).sigName='';
bio(348).portIdx=0;
bio(348).dim=[1,1];
bio(348).sigWidth=1;
bio(348).sigAddress='&BimanualCarvingModifiedTestEMG_B.Delay';
bio(348).ndims=2;
bio(348).size=[];


bio(349).blkName='GUI Control/Task Execution Control Subsystem/Delay1';
bio(349).sigName='';
bio(349).portIdx=0;
bio(349).dim=[1,1];
bio(349).sigWidth=1;
bio(349).sigAddress='&BimanualCarvingModifiedTestEMG_B.Delay1';
bio(349).ndims=2;
bio(349).size=[];


bio(350).blkName='GUI Control/Task Execution Control Subsystem/Product';
bio(350).sigName='';
bio(350).portIdx=0;
bio(350).dim=[1,1];
bio(350).sigWidth=1;
bio(350).sigAddress='&BimanualCarvingModifiedTestEMG_B.Product';
bio(350).ndims=2;
bio(350).size=[];


bio(351).blkName='GUI Control/Task Execution Control Subsystem/Product2';
bio(351).sigName='';
bio(351).portIdx=0;
bio(351).dim=[1,1];
bio(351).sigWidth=1;
bio(351).sigAddress='&BimanualCarvingModifiedTestEMG_B.Product2';
bio(351).ndims=2;
bio(351).size=[];


bio(352).blkName='GUI Control/Task Execution Control Subsystem/Product3';
bio(352).sigName='';
bio(352).portIdx=0;
bio(352).dim=[1,1];
bio(352).sigWidth=1;
bio(352).sigAddress='&BimanualCarvingModifiedTestEMG_B.Product3';
bio(352).ndims=2;
bio(352).size=[];


bio(353).blkName='GUI Control/Task Execution Control Subsystem/Selector';
bio(353).sigName='';
bio(353).portIdx=0;
bio(353).dim=[50,1];
bio(353).sigWidth=50;
bio(353).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector_c[0]';
bio(353).ndims=2;
bio(353).size=[];


bio(354).blkName='GUI Control/Task Execution Control Subsystem/Selector1';
bio(354).sigName='';
bio(354).portIdx=0;
bio(354).dim=[1,500];
bio(354).sigWidth=500;
bio(354).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector1_n[0]';
bio(354).ndims=2;
bio(354).size=[];


bio(355).blkName='GUI Control/Task Execution Control Subsystem/Selector2';
bio(355).sigName='';
bio(355).portIdx=0;
bio(355).dim=[1000,1];
bio(355).sigWidth=1000;
bio(355).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector2_l[0]';
bio(355).ndims=2;
bio(355).size=[];


bio(356).blkName='GUI Control/Task Execution Control Subsystem/Subtract';
bio(356).sigName='';
bio(356).portIdx=0;
bio(356).dim=[1,1];
bio(356).sigWidth=1;
bio(356).sigAddress='&BimanualCarvingModifiedTestEMG_B.Subtract_e';
bio(356).ndims=2;
bio(356).size=[];


bio(357).blkName='GUI Control/Task Execution Control Subsystem/Width';
bio(357).sigName='';
bio(357).portIdx=0;
bio(357).dim=[1,1];
bio(357).sigWidth=1;
bio(357).sigAddress='&BimanualCarvingModifiedTestEMG_B.Width_aj';
bio(357).ndims=2;
bio(357).size=[];


bio(358).blkName='GUI Control/Task Execution Control Subsystem/Width1';
bio(358).sigName='';
bio(358).portIdx=0;
bio(358).dim=[1,1];
bio(358).sigWidth=1;
bio(358).sigAddress='&BimanualCarvingModifiedTestEMG_B.Width1';
bio(358).ndims=2;
bio(358).size=[];


bio(359).blkName='GUI Control/Task Execution Control Subsystem/Width2';
bio(359).sigName='';
bio(359).portIdx=0;
bio(359).dim=[1,1];
bio(359).sigWidth=1;
bio(359).sigAddress='&BimanualCarvingModifiedTestEMG_B.Width2';
bio(359).ndims=2;
bio(359).size=[];


bio(360).blkName='Parameter Table Defn/TP_table/LOAD;Load;load;;;;none;;';
bio(360).sigName='';
bio(360).portIdx=0;
bio(360).dim=[1,1];
bio(360).sigWidth=1;
bio(360).sigAddress='&BimanualCarvingModifiedTestEMG_B.LOADLoadloadnone';
bio(360).ndims=2;
bio(360).size=[];


bio(361).blkName='Parameter Table Defn/TP_table/REST_COL;Rest;float;Rest in seconds;;;none;;';
bio(361).sigName='';
bio(361).portIdx=0;
bio(361).dim=[1,1];
bio(361).sigWidth=1;
bio(361).sigAddress='&BimanualCarvingModifiedTestEMG_B.REST_COLRestfloatRestinsecondsnone';
bio(361).ndims=2;
bio(361).size=[];


bio(362).blkName='Parameter Table Defn/TP_table/STONE_WIDTH;Width of grindstone;float;Width of grindstone [m];;;none;;';
bio(362).sigName='';
bio(362).portIdx=0;
bio(362).dim=[1,1];
bio(362).sigWidth=1;
bio(362).sigAddress='&BimanualCarvingModifiedTestEMG_B.STONE_WIDTHWidthofgrindstonefloatWidthofgrindstonemnone';
bio(362).ndims=2;
bio(362).size=[];


bio(363).blkName='Parameter Table Defn/TP_table/TARGET_COL;Target;target;;;;none;;';
bio(363).sigName='';
bio(363).portIdx=0;
bio(363).dim=[1,1];
bio(363).sigWidth=1;
bio(363).sigAddress='&BimanualCarvingModifiedTestEMG_B.TARGET_COLTargettargetnone';
bio(363).ndims=2;
bio(363).size=[];


bio(364).blkName='Parameter Table Defn/TP_table/TRAINING_COL;Null field;float;Train subject in point-to-point reaching;;;none;;';
bio(364).sigName='';
bio(364).portIdx=0;
bio(364).dim=[1,1];
bio(364).sigWidth=1;
bio(364).sigAddress='&BimanualCarvingModifiedTestEMG_B.TRAINING_COLNullfieldfloatTrainsubjectinpointtopointreachingnon';
bio(364).ndims=2;
bio(364).size=[];


bio(365).blkName='Parameter Table Defn/TP_table/TRAJ_DURATION_COL;Trajectory Duration;float;;;;none;;';
bio(365).sigName='';
bio(365).portIdx=0;
bio(365).dim=[1,1];
bio(365).sigWidth=1;
bio(365).sigAddress='&BimanualCarvingModifiedTestEMG_B.TRAJ_DURATION_COLTrajectoryDurationfloatnone';
bio(365).ndims=2;
bio(365).size=[];


bio(366).blkName='Parameter Table Defn/buttons/ADVANCE_EMG_MAX;MVC done;;Ends the MVC phase;1;2;none;;';
bio(366).sigName='';
bio(366).portIdx=0;
bio(366).dim=[1,1];
bio(366).sigWidth=1;
bio(366).sigAddress='&BimanualCarvingModifiedTestEMG_B.ADVANCE_EMG_MAXMVCdoneEndstheMVCphase12none';
bio(366).ndims=2;
bio(366).size=[];


bio(367).blkName='Parameter Table Defn/buttons/ADVANCE_EMG_PLACEMENT;EMG pos done;;Ends the EMG placement phase;;1;none;;';
bio(367).sigName='';
bio(367).portIdx=0;
bio(367).dim=[1,1];
bio(367).sigWidth=1;
bio(367).sigAddress='&BimanualCarvingModifiedTestEMG_B.ADVANCE_EMG_PLACEMENTEMGposdoneEndstheEMGplacementphase1none';
bio(367).ndims=2;
bio(367).size=[];


bio(368).blkName='Parameter Table Defn/events/EMG_ADVANCE_BUTTON;EMG placement button;;EMG advance button clicked;;;none;;';
bio(368).sigName='';
bio(368).portIdx=0;
bio(368).dim=[1,1];
bio(368).sigWidth=1;
bio(368).sigAddress='&BimanualCarvingModifiedTestEMG_B.EMG_ADVANCE_BUTTONEMGplacementbuttonEMGadvancebuttonclickednone';
bio(368).ndims=2;
bio(368).size=[];


bio(369).blkName='Parameter Table Defn/events/EMG_MVC_BUTTON;MVC button;;MVC button clicked;;;none;;';
bio(369).sigName='';
bio(369).portIdx=0;
bio(369).dim=[1,1];
bio(369).sigWidth=1;
bio(369).sigAddress='&BimanualCarvingModifiedTestEMG_B.EMG_MVC_BUTTONMVCbuttonMVCbuttonclickednone';
bio(369).ndims=2;
bio(369).size=[];


bio(370).blkName='Parameter Table Defn/events/END_TRIAL;Trial ended;;Trial ended;;;none;;';
bio(370).sigName='';
bio(370).portIdx=0;
bio(370).dim=[1,1];
bio(370).sigWidth=1;
bio(370).sigAddress='&BimanualCarvingModifiedTestEMG_B.END_TRIALTrialendedTrialendednone';
bio(370).ndims=2;
bio(370).size=[];


bio(371).blkName='Parameter Table Defn/events/START_TRIAL;Trial started;;Trial started;;;none;;';
bio(371).sigName='';
bio(371).portIdx=0;
bio(371).dim=[1,1];
bio(371).sigWidth=1;
bio(371).sigAddress='&BimanualCarvingModifiedTestEMG_B.START_TRIALTrialstartedTrialstartednone';
bio(371).ndims=2;
bio(371).size=[];


bio(372).blkName='Parameter Table Defn/load_table/FORCE_ON;Force on;integer;Binary force on or off boolean;;;none;;';
bio(372).sigName='';
bio(372).portIdx=0;
bio(372).dim=[1,1];
bio(372).sigWidth=1;
bio(372).sigAddress='&BimanualCarvingModifiedTestEMG_B.FORCE_ONForceonintegerBinaryforceonoroffbooleannone';
bio(372).ndims=2;
bio(372).size=[];


bio(373).blkName='Parameter Table Defn/load_table/MATERIAL_DAMPING;Material damping;float;;;;none;;';
bio(373).sigName='';
bio(373).portIdx=0;
bio(373).dim=[1,1];
bio(373).sigWidth=1;
bio(373).sigAddress='&BimanualCarvingModifiedTestEMG_B.MATERIAL_DAMPINGMaterialdampingfloatnone';
bio(373).ndims=2;
bio(373).size=[];


bio(374).blkName='Parameter Table Defn/load_table/MATERIAL_DUCTILITY;Material ductility;float;Parameter to control ease of deforming material;;;none;;';
bio(374).sigName='';
bio(374).portIdx=0;
bio(374).dim=[1,1];
bio(374).sigWidth=1;
bio(374).sigAddress='&BimanualCarvingModifiedTestEMG_B.MATERIAL_DUCTILITYMaterialductilityfloatParametertocontroleaseo';
bio(374).ndims=2;
bio(374).size=[];


bio(375).blkName='Parameter Table Defn/load_table/MATERIAL_MASS;Material mass;float;;;;none;;';
bio(375).sigName='';
bio(375).portIdx=0;
bio(375).dim=[1,1];
bio(375).sigWidth=1;
bio(375).sigAddress='&BimanualCarvingModifiedTestEMG_B.MATERIAL_MASSMaterialmassfloatnone';
bio(375).ndims=2;
bio(375).size=[];


bio(376).blkName='Parameter Table Defn/load_table/MAX_LOAD;max load (N);float;;;;none;;';
bio(376).sigName='';
bio(376).portIdx=0;
bio(376).dim=[1,1];
bio(376).sigWidth=1;
bio(376).sigAddress='&BimanualCarvingModifiedTestEMG_B.MAX_LOADmaxloadNfloatnone';
bio(376).ndims=2;
bio(376).size=[];


bio(377).blkName='Parameter Table Defn/load_table/SCALE_VIBRATION;Scale vibration;float;;;;none;;';
bio(377).sigName='';
bio(377).portIdx=0;
bio(377).dim=[1,1];
bio(377).sigWidth=1;
bio(377).sigAddress='&BimanualCarvingModifiedTestEMG_B.SCALE_VIBRATIONScalevibrationfloatnone';
bio(377).ndims=2;
bio(377).size=[];


bio(378).blkName='Parameter Table Defn/load_table/STIFFNESS_HANDS;Stiffness coupling;float;;;;none;;';
bio(378).sigName='';
bio(378).portIdx=0;
bio(378).dim=[1,1];
bio(378).sigWidth=1;
bio(378).sigAddress='&BimanualCarvingModifiedTestEMG_B.STIFFNESS_HANDSStiffnesscouplingfloatnone';
bio(378).ndims=2;
bio(378).size=[];


bio(379).blkName='Parameter Table Defn/load_table/STIFFNESS_MATERIAL;Stiffness material;float;;;;none;;';
bio(379).sigName='';
bio(379).portIdx=0;
bio(379).dim=[1,1];
bio(379).sigWidth=1;
bio(379).sigAddress='&BimanualCarvingModifiedTestEMG_B.STIFFNESS_MATERIALStiffnessmaterialfloatnone';
bio(379).ndims=2;
bio(379).size=[];


bio(380).blkName='Parameter Table Defn/target_table/HAND_COLOR;Color of cursor;colour;Cursor color;;;none;;';
bio(380).sigName='';
bio(380).portIdx=0;
bio(380).dim=[1,1];
bio(380).sigWidth=1;
bio(380).sigAddress='&BimanualCarvingModifiedTestEMG_B.HAND_COLORColorofcursorcolourCursorcolornone';
bio(380).ndims=2;
bio(380).size=[];


bio(381).blkName='Parameter Table Defn/target_table/HAND_RADIUS;Radius of hand;float;Radius of the visual feedback of hand position in m;;;none;;';
bio(381).sigName='';
bio(381).portIdx=0;
bio(381).dim=[1,1];
bio(381).sigWidth=1;
bio(381).sigAddress='&BimanualCarvingModifiedTestEMG_B.HAND_RADIUSRadiusofhandfloatRadiusofthevisualfeedbackofhandposi';
bio(381).ndims=2;
bio(381).size=[];


bio(382).blkName='Parameter Table Defn/target_table/HEIGHT;Height;float;Rectangle height in cm;;;none;;';
bio(382).sigName='';
bio(382).portIdx=0;
bio(382).dim=[1,1];
bio(382).sigWidth=1;
bio(382).sigAddress='&BimanualCarvingModifiedTestEMG_B.HEIGHTHeightfloatRectangleheightincmnone';
bio(382).ndims=2;
bio(382).size=[];


bio(383).blkName='Parameter Table Defn/target_table/LABEL_COLOR;Label color;colour;Color of label;;;none;;';
bio(383).sigName='';
bio(383).portIdx=0;
bio(383).dim=[1,1];
bio(383).sigWidth=1;
bio(383).sigAddress='&BimanualCarvingModifiedTestEMG_B.LABEL_COLORLabelcolorcolourColoroflabelnone';
bio(383).ndims=2;
bio(383).size=[];


bio(384).blkName='Parameter Table Defn/target_table/LABEL_HEIGHT;Label height;float;Height of label (cm);;;none;;';
bio(384).sigName='';
bio(384).portIdx=0;
bio(384).dim=[1,1];
bio(384).sigWidth=1;
bio(384).sigAddress='&BimanualCarvingModifiedTestEMG_B.LABEL_HEIGHTLabelheightfloatHeightoflabelcmnone';
bio(384).ndims=2;
bio(384).size=[];


bio(385).blkName='Parameter Table Defn/target_table/LABEL_TEXT;Label;label;Label to be displayed in target;;;none;;';
bio(385).sigName='';
bio(385).portIdx=0;
bio(385).dim=[1,1];
bio(385).sigWidth=1;
bio(385).sigAddress='&BimanualCarvingModifiedTestEMG_B.LABEL_TEXTLabellabelLabeltobedisplayedintargetnone';
bio(385).ndims=2;
bio(385).size=[];


bio(386).blkName='Parameter Table Defn/target_table/MATERIAL_GOAL_COLOR;Material goal color;colour;;;;none;;';
bio(386).sigName='';
bio(386).portIdx=0;
bio(386).dim=[1,1];
bio(386).sigWidth=1;
bio(386).sigAddress='&BimanualCarvingModifiedTestEMG_B.MATERIAL_GOAL_COLORMaterialgoalcolorcolournone';
bio(386).ndims=2;
bio(386).size=[];


bio(387).blkName='Parameter Table Defn/target_table/ROTATION;Rotation;float;Target rotation (deg);;;none;;';
bio(387).sigName='';
bio(387).portIdx=0;
bio(387).dim=[1,1];
bio(387).sigWidth=1;
bio(387).sigAddress='&BimanualCarvingModifiedTestEMG_B.ROTATIONRotationfloatTargetrotationdegnone';
bio(387).ndims=2;
bio(387).size=[];


bio(388).blkName='Parameter Table Defn/target_table/START_X;Start x;float;;;;none;;';
bio(388).sigName='';
bio(388).portIdx=0;
bio(388).dim=[1,1];
bio(388).sigWidth=1;
bio(388).sigAddress='&BimanualCarvingModifiedTestEMG_B.START_XStartxfloatnone';
bio(388).ndims=2;
bio(388).size=[];


bio(389).blkName='Parameter Table Defn/target_table/START_Y;Start y;float;;;;none;;';
bio(389).sigName='';
bio(389).portIdx=0;
bio(389).dim=[1,1];
bio(389).sigWidth=1;
bio(389).sigAddress='&BimanualCarvingModifiedTestEMG_B.START_YStartyfloatnone';
bio(389).ndims=2;
bio(389).size=[];


bio(390).blkName='Parameter Table Defn/target_table/TARGET_COLOR;Target color;colour;;;;none;;';
bio(390).sigName='';
bio(390).portIdx=0;
bio(390).dim=[1,1];
bio(390).sigWidth=1;
bio(390).sigAddress='&BimanualCarvingModifiedTestEMG_B.TARGET_COLORTargetcolorcolournone';
bio(390).ndims=2;
bio(390).size=[];


bio(391).blkName='Parameter Table Defn/target_table/TARGET_RADIUS;Target radius;float;;;;none;;';
bio(391).sigName='';
bio(391).portIdx=0;
bio(391).dim=[1,1];
bio(391).sigWidth=1;
bio(391).sigAddress='&BimanualCarvingModifiedTestEMG_B.TARGET_RADIUSTargetradiusfloatnone';
bio(391).ndims=2;
bio(391).size=[];


bio(392).blkName='Parameter Table Defn/target_table/TARGET_STROKE;Target stroke width;float;;;;none;;';
bio(392).sigName='';
bio(392).portIdx=0;
bio(392).dim=[1,1];
bio(392).sigWidth=1;
bio(392).sigAddress='&BimanualCarvingModifiedTestEMG_B.TARGET_STROKETargetstrokewidthfloatnone';
bio(392).ndims=2;
bio(392).size=[];


bio(393).blkName='Parameter Table Defn/target_table/TEXTBOX_HEIGHT;Textbox height;float;Heigth of textbox rectangle (cm);;;none;;';
bio(393).sigName='';
bio(393).portIdx=0;
bio(393).dim=[1,1];
bio(393).sigWidth=1;
bio(393).sigAddress='&BimanualCarvingModifiedTestEMG_B.TEXTBOX_HEIGHTTextboxheightfloatHeigthoftextboxrectanglecmnone';
bio(393).ndims=2;
bio(393).size=[];


bio(394).blkName='Parameter Table Defn/target_table/TEXTBOX_WIDTH;Textbox width;float;Width of textbox rectangle (cm);;;none;;';
bio(394).sigName='';
bio(394).portIdx=0;
bio(394).dim=[1,1];
bio(394).sigWidth=1;
bio(394).sigAddress='&BimanualCarvingModifiedTestEMG_B.TEXTBOX_WIDTHTextboxwidthfloatWidthoftextboxrectanglecmnone';
bio(394).ndims=2;
bio(394).size=[];


bio(395).blkName='Parameter Table Defn/target_table/TEXT_COLOR;Text color;colour;Text color;;;none;;';
bio(395).sigName='';
bio(395).portIdx=0;
bio(395).dim=[1,1];
bio(395).sigWidth=1;
bio(395).sigAddress='&BimanualCarvingModifiedTestEMG_B.TEXT_COLORTextcolorcolourTextcolornone';
bio(395).ndims=2;
bio(395).size=[];


bio(396).blkName='Parameter Table Defn/target_table/WIDTH;Width;float;Rectangle width in cm;;;none;;';
bio(396).sigName='';
bio(396).portIdx=0;
bio(396).dim=[1,1];
bio(396).sigWidth=1;
bio(396).sigAddress='&BimanualCarvingModifiedTestEMG_B.WIDTHWidthfloatRectanglewidthincmnone';
bio(396).ndims=2;
bio(396).size=[];


bio(397).blkName='Parameter Table Defn/target_table/col_x;X;float;X Position (cm) of the target relative to  local (0,0);;;none;;';
bio(397).sigName='';
bio(397).portIdx=0;
bio(397).dim=[1,1];
bio(397).sigWidth=1;
bio(397).sigAddress='&BimanualCarvingModifiedTestEMG_B.col_xXfloatXPositioncmofthetargetrelativetolocal00none';
bio(397).ndims=2;
bio(397).size=[];


bio(398).blkName='Parameter Table Defn/target_table/col_y;Y;float;Y Position (cm) of the target relative to  local (0,0);;;none;;';
bio(398).sigName='';
bio(398).portIdx=0;
bio(398).dim=[1,1];
bio(398).sigWidth=1;
bio(398).sigAddress='&BimanualCarvingModifiedTestEMG_B.col_yYfloatYPositioncmofthetargetrelativetolocal00none';
bio(398).ndims=2;
bio(398).size=[];


bio(399).blkName='Parameter Table Defn/task_definition/INSTRUCTIONS=';
bio(399).sigName='';
bio(399).portIdx=0;
bio(399).dim=[1,1];
bio(399).sigWidth=1;
bio(399).sigAddress='&BimanualCarvingModifiedTestEMG_B.INSTRUCTIONS';
bio(399).ndims=2;
bio(399).size=[];


bio(400).blkName='Parameter Table Defn/task_definition/LOAD_FOR=EITHER';
bio(400).sigName='';
bio(400).portIdx=0;
bio(400).dim=[1,1];
bio(400).sigWidth=1;
bio(400).sigAddress='&BimanualCarvingModifiedTestEMG_B.LOAD_FOREITHER';
bio(400).ndims=2;
bio(400).size=[];


bio(401).blkName='Parameter Table Defn/task_wide/HAND_DISTANCE;Distance between hands;float;Distance between hands (m);;;none;;';
bio(401).sigName='';
bio(401).portIdx=0;
bio(401).dim=[1,1];
bio(401).sigWidth=1;
bio(401).sigAddress='&BimanualCarvingModifiedTestEMG_B.HAND_DISTANCEDistancebetweenhandsfloatDistancebetweenhandsmnone';
bio(401).ndims=2;
bio(401).size=[];


bio(402).blkName='Parameter Table Defn/task_wide/IS_R2_REAL;Real R2 feedback fkag;integer;Set this parameter to 1 when using real feedback, and to 0 when using sham feedback;;;none;;';
bio(402).sigName='';
bio(402).portIdx=0;
bio(402).dim=[1,1];
bio(402).sigWidth=1;
bio(402).sigAddress='&BimanualCarvingModifiedTestEMG_B.IS_R2_REALRealR2feedbackfkagintegerSetthisparameterto1whenusing';
bio(402).ndims=2;
bio(402).size=[];


bio(403).blkName='Parameter Table Defn/task_wide/MUSC_NUM;Number of muscles;integer;Number of muscles (can be 12 or 16);;;none;;';
bio(403).sigName='';
bio(403).portIdx=0;
bio(403).dim=[1,1];
bio(403).sigWidth=1;
bio(403).sigAddress='&BimanualCarvingModifiedTestEMG_B.MUSC_NUMNumberofmusclesintegerNumberofmusclescanbe12or16none';
bio(403).ndims=2;
bio(403).size=[];


bio(404).blkName='Parameter Table Defn/task_wide/R2_SCORE_SD;Standard deviation of R2;float;Standard deviation of random walk process for R2 score;;;none;;';
bio(404).sigName='';
bio(404).portIdx=0;
bio(404).dim=[1,1];
bio(404).sigWidth=1;
bio(404).sigAddress='&BimanualCarvingModifiedTestEMG_B.R2_SCORE_SDStandarddeviationofR2floatStandarddeviationofrandomw';
bio(404).ndims=2;
bio(404).size=[];


bio(405).blkName='Parameter Table Defn/task_wide/SYN_NUM;Number of synergies;integer;Number of synergies for EMG reconstruction score;;;none;;';
bio(405).sigName='';
bio(405).portIdx=0;
bio(405).dim=[1,1];
bio(405).sigWidth=1;
bio(405).sigAddress='&BimanualCarvingModifiedTestEMG_B.SYN_NUMNumberofsynergiesintegerNumberofsynergiesforEMGreconstru';
bio(405).ndims=2;
bio(405).size=[];


bio(406).blkName='Parameter Table Defn/task_wide/TARG_COLOR;Target color;float;Target color;;;none;;';
bio(406).sigName='';
bio(406).portIdx=0;
bio(406).dim=[1,1];
bio(406).sigWidth=1;
bio(406).sigAddress='&BimanualCarvingModifiedTestEMG_B.TARG_COLORTargetcolorfloatTargetcolornone';
bio(406).ndims=2;
bio(406).size=[];


bio(407).blkName='Process_Video_CMD/PVC_core/Embedded MATLAB Function/p1';
bio(407).sigName='vis_cmd_out';
bio(407).portIdx=0;
bio(407).dim=[725,1];
bio(407).sigWidth=725;
bio(407).sigAddress='&BimanualCarvingModifiedTestEMG_B.vis_cmd_out[0]';
bio(407).ndims=2;
bio(407).size=[];


bio(408).blkName='Process_Video_CMD/PVC_core/Embedded MATLAB Function/p2';
bio(408).sigName='vis_cmd_cropped';
bio(408).portIdx=1;
bio(408).dim=[1,1];
bio(408).sigWidth=1;
bio(408).sigAddress='&BimanualCarvingModifiedTestEMG_B.vis_cmd_cropped';
bio(408).ndims=2;
bio(408).size=[];


bio(409).blkName='Process_Video_CMD/PVC_core/Embedded MATLAB Function/p3';
bio(409).sigName='frame_sent_trigger';
bio(409).portIdx=2;
bio(409).dim=[1,1];
bio(409).sigWidth=1;
bio(409).sigAddress='&BimanualCarvingModifiedTestEMG_B.frame_sent_trigger';
bio(409).ndims=2;
bio(409).size=[];


bio(410).blkName='Process_Video_CMD/PVC_core/Embedded MATLAB Function/p4';
bio(410).sigName='frame_number';
bio(410).portIdx=3;
bio(410).dim=[1,1];
bio(410).sigWidth=1;
bio(410).sigAddress='&BimanualCarvingModifiedTestEMG_B.frame_number';
bio(410).ndims=2;
bio(410).size=[];


bio(411).blkName='Process_Video_CMD/PVC_core/Latency Tracking Machine/p1';
bio(411).sigName='average_ack_delay';
bio(411).portIdx=0;
bio(411).dim=[1,1];
bio(411).sigWidth=1;
bio(411).sigAddress='&BimanualCarvingModifiedTestEMG_B.average_ack_delay';
bio(411).ndims=2;
bio(411).size=[];


bio(412).blkName='Process_Video_CMD/PVC_core/Latency Tracking Machine/p2';
bio(412).sigName='last_frame_sent';
bio(412).portIdx=1;
bio(412).dim=[1,1];
bio(412).sigWidth=1;
bio(412).sigAddress='&BimanualCarvingModifiedTestEMG_B.last_frame_sent';
bio(412).ndims=2;
bio(412).size=[];


bio(413).blkName='Process_Video_CMD/PVC_core/Latency Tracking Machine/p3';
bio(413).sigName='last_frame_acknowledged';
bio(413).portIdx=2;
bio(413).dim=[1,1];
bio(413).sigWidth=1;
bio(413).sigAddress='&BimanualCarvingModifiedTestEMG_B.last_frame_acknowledged';
bio(413).ndims=2;
bio(413).size=[];


bio(414).blkName='Process_Video_CMD/PVC_core/Latency Tracking Machine/p4';
bio(414).sigName='last_frame_ack_delay';
bio(414).portIdx=3;
bio(414).dim=[1,1];
bio(414).sigWidth=1;
bio(414).sigAddress='&BimanualCarvingModifiedTestEMG_B.last_frame_ack_delay';
bio(414).ndims=2;
bio(414).size=[];


bio(415).blkName='Process_Video_CMD/PVC_core/Rate Transition';
bio(415).sigName='';
bio(415).portIdx=0;
bio(415).dim=[1,1];
bio(415).sigWidth=1;
bio(415).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition_k';
bio(415).ndims=2;
bio(415).size=[];


bio(416).blkName='Process_Video_CMD/PVC_core/Rate Transition1';
bio(416).sigName='';
bio(416).portIdx=0;
bio(416).dim=[1,1];
bio(416).sigWidth=1;
bio(416).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition1_m';
bio(416).ndims=2;
bio(416).size=[];


bio(417).blkName='Process_Video_CMD/PVC_core/Rate Transition2';
bio(417).sigName='';
bio(417).portIdx=0;
bio(417).dim=[59,70];
bio(417).sigWidth=4130;
bio(417).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition2_k[0]';
bio(417).ndims=2;
bio(417).size=[];


bio(418).blkName='Process_Video_CMD/PVC_core/Rate Transition3';
bio(418).sigName='';
bio(418).portIdx=0;
bio(418).dim=[1,1];
bio(418).sigWidth=1;
bio(418).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition3_o';
bio(418).ndims=2;
bio(418).size=[];


bio(419).blkName='Process_Video_CMD/PVC_core/Rate Transition4';
bio(419).sigName='';
bio(419).portIdx=0;
bio(419).dim=[1,1];
bio(419).sigWidth=1;
bio(419).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition4_b';
bio(419).ndims=2;
bio(419).size=[];


bio(420).blkName='Process_Video_CMD/PVC_core/Rate Transition5';
bio(420).sigName='';
bio(420).portIdx=0;
bio(420).dim=[1,1];
bio(420).sigWidth=1;
bio(420).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition5_i';
bio(420).ndims=2;
bio(420).size=[];


bio(421).blkName='Trajectory subsystem/Create_Trajectory/get_arm_info/p1';
bio(421).sigName='position';
bio(421).portIdx=0;
bio(421).dim=[1,2];
bio(421).sigWidth=2;
bio(421).sigAddress='&BimanualCarvingModifiedTestEMG_B.position[0]';
bio(421).ndims=2;
bio(421).size=[];


bio(422).blkName='Trajectory subsystem/Create_Trajectory/get_arm_info/p2';
bio(422).sigName='task_status';
bio(422).portIdx=1;
bio(422).dim=[1,1];
bio(422).sigWidth=1;
bio(422).sigAddress='&BimanualCarvingModifiedTestEMG_B.task_status';
bio(422).ndims=2;
bio(422).size=[];


bio(423).blkName='Trajectory subsystem/Create_Trajectory/get_arm_info/p3';
bio(423).sigName='robot_enabled';
bio(423).portIdx=2;
bio(423).dim=[1,1];
bio(423).sigWidth=1;
bio(423).sigAddress='&BimanualCarvingModifiedTestEMG_B.robot_enabled';
bio(423).ndims=2;
bio(423).size=[];


bio(424).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/FF_FB_Position_Controller/p1';
bio(424).sigName='Force_FB';
bio(424).portIdx=0;
bio(424).dim=[1,4];
bio(424).sigWidth=4;
bio(424).sigAddress='&BimanualCarvingModifiedTestEMG_B.Force_FB[0]';
bio(424).ndims=2;
bio(424).size=[];


bio(425).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/FF_FB_Position_Controller/p2';
bio(425).sigName='Force_FF';
bio(425).portIdx=1;
bio(425).dim=[1,4];
bio(425).sigWidth=4;
bio(425).sigAddress='&BimanualCarvingModifiedTestEMG_B.Force_FF[0]';
bio(425).ndims=2;
bio(425).size=[];


bio(426).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Matrix Concatenate';
bio(426).sigName='';
bio(426).portIdx=0;
bio(426).dim=[8,2];
bio(426).sigWidth=16;
bio(426).sigAddress='&BimanualCarvingModifiedTestEMG_B.MatrixConcatenate_m[0]';
bio(426).ndims=2;
bio(426).size=[];


bio(427).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/coordinate_system_option';
bio(427).sigName='';
bio(427).portIdx=0;
bio(427).dim=[1,1];
bio(427).sigWidth=1;
bio(427).sigAddress='&BimanualCarvingModifiedTestEMG_B.coordinate_system_option';
bio(427).ndims=2;
bio(427).size=[];


bio(428).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Data Type Conversion';
bio(428).sigName='';
bio(428).portIdx=0;
bio(428).dim=[2,6];
bio(428).sigWidth=12;
bio(428).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion_l[0]';
bio(428).ndims=2;
bio(428).size=[];


bio(429).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Data Type Conversion1';
bio(429).sigName='';
bio(429).portIdx=0;
bio(429).dim=[3,50];
bio(429).sigWidth=150;
bio(429).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion1_c[0]';
bio(429).ndims=2;
bio(429).size=[];


bio(430).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Rate Transition1';
bio(430).sigName='';
bio(430).portIdx=0;
bio(430).dim=[2,1];
bio(430).sigWidth=2;
bio(430).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition1_p[0]';
bio(430).ndims=2;
bio(430).size=[];


bio(431).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Rate Transition2';
bio(431).sigName='';
bio(431).portIdx=0;
bio(431).dim=[2,1];
bio(431).sigWidth=2;
bio(431).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition2_a[0]';
bio(431).ndims=2;
bio(431).size=[];


bio(432).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Rate Transition3';
bio(432).sigName='';
bio(432).portIdx=0;
bio(432).dim=[2,1];
bio(432).sigWidth=2;
bio(432).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition3[0]';
bio(432).ndims=2;
bio(432).size=[];


bio(433).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Rate Transition4';
bio(433).sigName='';
bio(433).portIdx=0;
bio(433).dim=[1,1];
bio(433).sigWidth=1;
bio(433).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition4_et';
bio(433).ndims=2;
bio(433).size=[];


bio(434).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Rate Transition5';
bio(434).sigName='';
bio(434).portIdx=0;
bio(434).dim=[1,1];
bio(434).sigWidth=1;
bio(434).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition5';
bio(434).ndims=2;
bio(434).size=[];


bio(435).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Rate Transition6';
bio(435).sigName='';
bio(435).portIdx=0;
bio(435).dim=[3,50];
bio(435).sigWidth=150;
bio(435).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition6[0]';
bio(435).ndims=2;
bio(435).size=[];


bio(436).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Rate Transition7';
bio(436).sigName='';
bio(436).portIdx=0;
bio(436).dim=[8,2];
bio(436).sigWidth=16;
bio(436).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition7[0]';
bio(436).ndims=2;
bio(436).size=[];


bio(437).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Sum';
bio(437).sigName='';
bio(437).portIdx=0;
bio(437).dim=[1,4];
bio(437).sigWidth=4;
bio(437).sigAddress='&BimanualCarvingModifiedTestEMG_B.Sum_l[0]';
bio(437).ndims=2;
bio(437).size=[];


bio(438).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/FF_FB_Position_Controller/p1';
bio(438).sigName='TorqueFB';
bio(438).portIdx=0;
bio(438).dim=[1,4];
bio(438).sigWidth=4;
bio(438).sigAddress='&BimanualCarvingModifiedTestEMG_B.TorqueFB[0]';
bio(438).ndims=2;
bio(438).size=[];


bio(439).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/FF_FB_Position_Controller/p2';
bio(439).sigName='TorqueFF';
bio(439).portIdx=1;
bio(439).dim=[1,4];
bio(439).sigWidth=4;
bio(439).sigAddress='&BimanualCarvingModifiedTestEMG_B.TorqueFF[0]';
bio(439).ndims=2;
bio(439).size=[];


bio(440).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/FF_FB_Position_Controller/p3';
bio(440).sigName='filterType';
bio(440).portIdx=2;
bio(440).dim=[1,1];
bio(440).sigWidth=1;
bio(440).sigAddress='&BimanualCarvingModifiedTestEMG_B.filterType';
bio(440).ndims=2;
bio(440).size=[];


bio(441).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Data Type Conversion';
bio(441).sigName='';
bio(441).portIdx=0;
bio(441).dim=[2,6];
bio(441).sigWidth=12;
bio(441).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion_g[0]';
bio(441).ndims=2;
bio(441).size=[];


bio(442).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Rate Transition1';
bio(442).sigName='';
bio(442).portIdx=0;
bio(442).dim=[2,1];
bio(442).sigWidth=2;
bio(442).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition1[0]';
bio(442).ndims=2;
bio(442).size=[];


bio(443).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Rate Transition2';
bio(443).sigName='';
bio(443).portIdx=0;
bio(443).dim=[2,1];
bio(443).sigWidth=2;
bio(443).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition2[0]';
bio(443).ndims=2;
bio(443).size=[];


bio(444).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Rate Transition3';
bio(444).sigName='';
bio(444).portIdx=0;
bio(444).dim=[1,1];
bio(444).sigWidth=1;
bio(444).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition3_f';
bio(444).ndims=2;
bio(444).size=[];


bio(445).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Rate Transition4';
bio(445).sigName='';
bio(445).portIdx=0;
bio(445).dim=[2,1];
bio(445).sigWidth=2;
bio(445).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition4[0]';
bio(445).ndims=2;
bio(445).size=[];


bio(446).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Rate Transition5';
bio(446).sigName='';
bio(446).portIdx=0;
bio(446).dim=[1,1];
bio(446).sigWidth=1;
bio(446).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition5_m';
bio(446).ndims=2;
bio(446).size=[];


bio(447).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Rate Transition6';
bio(447).sigName='';
bio(447).portIdx=0;
bio(447).dim=[3,50];
bio(447).sigWidth=150;
bio(447).sigAddress='&BimanualCarvingModifiedTestEMG_B.RateTransition6_g[0]';
bio(447).ndims=2;
bio(447).size=[];


bio(448).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Sum';
bio(448).sigName='';
bio(448).portIdx=0;
bio(448).dim=[1,4];
bio(448).sigWidth=4;
bio(448).sigAddress='&BimanualCarvingModifiedTestEMG_B.Sum[0]';
bio(448).ndims=2;
bio(448).size=[];


bio(449).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Switch';
bio(449).sigName='';
bio(449).portIdx=0;
bio(449).dim=[4,1];
bio(449).sigWidth=4;
bio(449).sigAddress='&BimanualCarvingModifiedTestEMG_B.Switch_p[0]';
bio(449).ndims=2;
bio(449).size=[];


bio(450).blkName='Trajectory subsystem/calculate robot scaling/MATLAB Function';
bio(450).sigName='scaling';
bio(450).portIdx=0;
bio(450).dim=[1,2];
bio(450).sigWidth=2;
bio(450).sigAddress='&BimanualCarvingModifiedTestEMG_B.scaling[0]';
bio(450).ndims=2;
bio(450).size=[];


bio(451).blkName='DataLogging/Create Task State Subsystem/Counter Free-Running/Output';
bio(451).sigName='';
bio(451).portIdx=0;
bio(451).dim=[1,1];
bio(451).sigWidth=1;
bio(451).sigAddress='&BimanualCarvingModifiedTestEMG_B.Output';
bio(451).ndims=2;
bio(451).size=[];


bio(452).blkName='DataLogging/Create Task State Subsystem/If Running/Compare';
bio(452).sigName='';
bio(452).portIdx=0;
bio(452).dim=[1,1];
bio(452).sigWidth=1;
bio(452).sigAddress='&BimanualCarvingModifiedTestEMG_B.Compare_f';
bio(452).ndims=2;
bio(452).size=[];


bio(453).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Data Type Conversion';
bio(453).sigName='';
bio(453).portIdx=0;
bio(453).dim=[1,119];
bio(453).sigWidth=119;
bio(453).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion_p[0]';
bio(453).ndims=2;
bio(453).size=[];


bio(454).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Ideal Frames Per Packet';
bio(454).sigName='';
bio(454).portIdx=0;
bio(454).dim=[1,1];
bio(454).sigWidth=1;
bio(454).sigAddress='&BimanualCarvingModifiedTestEMG_B.IdealFramesPerPacket';
bio(454).ndims=2;
bio(454).size=[];


bio(455).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Math Function';
bio(455).sigName='';
bio(455).portIdx=0;
bio(455).dim=[1,1];
bio(455).sigWidth=1;
bio(455).sigAddress='&BimanualCarvingModifiedTestEMG_B.MathFunction';
bio(455).ndims=2;
bio(455).size=[];


bio(456).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-1';
bio(456).sigName='';
bio(456).portIdx=0;
bio(456).dim=[1,119];
bio(456).sigWidth=119;
bio(456).sigAddress='&BimanualCarvingModifiedTestEMG_B.t1[0]';
bio(456).ndims=2;
bio(456).size=[];


bio(457).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-2';
bio(457).sigName='';
bio(457).portIdx=0;
bio(457).dim=[1,119];
bio(457).sigWidth=119;
bio(457).sigAddress='&BimanualCarvingModifiedTestEMG_B.t2[0]';
bio(457).ndims=2;
bio(457).size=[];


bio(458).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-3';
bio(458).sigName='';
bio(458).portIdx=0;
bio(458).dim=[1,119];
bio(458).sigWidth=119;
bio(458).sigAddress='&BimanualCarvingModifiedTestEMG_B.t3[0]';
bio(458).ndims=2;
bio(458).size=[];


bio(459).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-4';
bio(459).sigName='';
bio(459).portIdx=0;
bio(459).dim=[1,119];
bio(459).sigWidth=119;
bio(459).sigAddress='&BimanualCarvingModifiedTestEMG_B.t4[0]';
bio(459).ndims=2;
bio(459).size=[];


bio(460).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/t-5';
bio(460).sigName='';
bio(460).portIdx=0;
bio(460).dim=[1,119];
bio(460).sigWidth=119;
bio(460).sigAddress='&BimanualCarvingModifiedTestEMG_B.t5[0]';
bio(460).ndims=2;
bio(460).size=[];


bio(461).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/MinMax';
bio(461).sigName='';
bio(461).portIdx=0;
bio(461).dim=[1,1];
bio(461).sigWidth=1;
bio(461).sigAddress='&BimanualCarvingModifiedTestEMG_B.MinMax_k';
bio(461).ndims=2;
bio(461).size=[];


bio(462).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Product';
bio(462).sigName='';
bio(462).portIdx=0;
bio(462).dim=[1,1];
bio(462).sigWidth=1;
bio(462).sigAddress='&BimanualCarvingModifiedTestEMG_B.Product_ls';
bio(462).ndims=2;
bio(462).size=[];


bio(463).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Relational Operator';
bio(463).sigName='';
bio(463).portIdx=0;
bio(463).dim=[1,1];
bio(463).sigWidth=1;
bio(463).sigAddress='&BimanualCarvingModifiedTestEMG_B.RelationalOperator';
bio(463).ndims=2;
bio(463).size=[];


bio(464).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Selector';
bio(464).sigName='';
bio(464).portIdx=0;
bio(464).dim=[1,300];
bio(464).sigWidth=300;
bio(464).sigAddress='&BimanualCarvingModifiedTestEMG_B.Selector_e[0]';
bio(464).ndims=2;
bio(464).size=[];


bio(465).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Subtract';
bio(465).sigName='';
bio(465).portIdx=0;
bio(465).dim=[1,1];
bio(465).sigWidth=1;
bio(465).sigAddress='&BimanualCarvingModifiedTestEMG_B.Subtract_o';
bio(465).ndims=2;
bio(465).size=[];


bio(466).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Width';
bio(466).sigName='';
bio(466).portIdx=0;
bio(466).dim=[1,1];
bio(466).sigWidth=1;
bio(466).sigAddress='&BimanualCarvingModifiedTestEMG_B.Width_az';
bio(466).ndims=2;
bio(466).size=[];


bio(467).blkName='DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Pack';
bio(467).sigName='';
bio(467).portIdx=0;
bio(467).dim=[1224,1];
bio(467).sigWidth=1224;
bio(467).sigAddress='&BimanualCarvingModifiedTestEMG_B.Pack_i[0]';
bio(467).ndims=2;
bio(467).size=[];


bio(468).blkName='DataLogging/Network Transfer Subsystem/is running/Compare';
bio(468).sigName='';
bio(468).portIdx=0;
bio(468).dim=[1,1];
bio(468).sigWidth=1;
bio(468).sigAddress='&BimanualCarvingModifiedTestEMG_B.Compare_b';
bio(468).ndims=2;
bio(468).size=[];


bio(469).blkName='DataLogging/Poll Force Plates/plate1/parse packet 1/p1';
bio(469).sigName='forces';
bio(469).portIdx=0;
bio(469).dim=[3,1];
bio(469).sigWidth=3;
bio(469).sigAddress='&BimanualCarvingModifiedTestEMG_B.forces_g[0]';
bio(469).ndims=2;
bio(469).size=[];


bio(470).blkName='DataLogging/Poll Force Plates/plate1/parse packet 1/p2';
bio(470).sigName='moments';
bio(470).portIdx=1;
bio(470).dim=[3,1];
bio(470).sigWidth=3;
bio(470).sigAddress='&BimanualCarvingModifiedTestEMG_B.moments_p[0]';
bio(470).ndims=2;
bio(470).size=[];


bio(471).blkName='DataLogging/Poll Force Plates/plate1/parse packet 1/p3';
bio(471).sigName='timer';
bio(471).portIdx=2;
bio(471).dim=[1,1];
bio(471).sigWidth=1;
bio(471).sigAddress='&BimanualCarvingModifiedTestEMG_B.timer_c';
bio(471).ndims=2;
bio(471).size=[];


bio(472).blkName='DataLogging/Poll Force Plates/plate1/Receive/p1';
bio(472).sigName='';
bio(472).portIdx=0;
bio(472).dim=[64,1];
bio(472).sigWidth=64;
bio(472).sigAddress='&BimanualCarvingModifiedTestEMG_B.Receive_o1_kp[0]';
bio(472).ndims=2;
bio(472).size=[];


bio(473).blkName='DataLogging/Poll Force Plates/plate1/Receive/p2';
bio(473).sigName='';
bio(473).portIdx=1;
bio(473).dim=[1,1];
bio(473).sigWidth=1;
bio(473).sigAddress='&BimanualCarvingModifiedTestEMG_B.Receive_o2_m';
bio(473).ndims=2;
bio(473).size=[];


bio(474).blkName='DataLogging/Poll Force Plates/plate2/parse packet 1/p1';
bio(474).sigName='forces';
bio(474).portIdx=0;
bio(474).dim=[3,1];
bio(474).sigWidth=3;
bio(474).sigAddress='&BimanualCarvingModifiedTestEMG_B.forces[0]';
bio(474).ndims=2;
bio(474).size=[];


bio(475).blkName='DataLogging/Poll Force Plates/plate2/parse packet 1/p2';
bio(475).sigName='moments';
bio(475).portIdx=1;
bio(475).dim=[3,1];
bio(475).sigWidth=3;
bio(475).sigAddress='&BimanualCarvingModifiedTestEMG_B.moments[0]';
bio(475).ndims=2;
bio(475).size=[];


bio(476).blkName='DataLogging/Poll Force Plates/plate2/parse packet 1/p3';
bio(476).sigName='timer';
bio(476).portIdx=2;
bio(476).dim=[1,1];
bio(476).sigWidth=1;
bio(476).sigAddress='&BimanualCarvingModifiedTestEMG_B.timer';
bio(476).ndims=2;
bio(476).size=[];


bio(477).blkName='DataLogging/Poll Force Plates/plate2/Receive1/p1';
bio(477).sigName='';
bio(477).portIdx=0;
bio(477).dim=[64,1];
bio(477).sigWidth=64;
bio(477).sigAddress='&BimanualCarvingModifiedTestEMG_B.Receive1_o1[0]';
bio(477).ndims=2;
bio(477).size=[];


bio(478).blkName='DataLogging/Poll Force Plates/plate2/Receive1/p2';
bio(478).sigName='';
bio(478).portIdx=1;
bio(478).dim=[1,1];
bio(478).sigWidth=1;
bio(478).sigAddress='&BimanualCarvingModifiedTestEMG_B.Receive1_o2';
bio(478).ndims=2;
bio(478).size=[];


bio(479).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/TypeCast';
bio(479).sigName='y';
bio(479).portIdx=0;
bio(479).dim=[1,1];
bio(479).sigWidth=1;
bio(479).sigAddress='&BimanualCarvingModifiedTestEMG_B.y_i';
bio(479).ndims=2;
bio(479).size=[];


bio(480).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Data Type Conversion';
bio(480).sigName='';
bio(480).portIdx=0;
bio(480).dim=[1,1];
bio(480).sigWidth=1;
bio(480).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion_lt';
bio(480).ndims=2;
bio(480).size=[];


bio(481).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/DPRAM Read Value';
bio(481).sigName='';
bio(481).portIdx=0;
bio(481).dim=[1,1];
bio(481).sigWidth=1;
bio(481).sigAddress='&BimanualCarvingModifiedTestEMG_B.DPRAMReadValue';
bio(481).ndims=2;
bio(481).size=[];


bio(482).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Unit Delay';
bio(482).sigName='';
bio(482).portIdx=0;
bio(482).dim=[1,1];
bio(482).sigWidth=1;
bio(482).sigAddress='&BimanualCarvingModifiedTestEMG_B.UnitDelay';
bio(482).ndims=2;
bio(482).size=[];


bio(483).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Unit Delay1';
bio(483).sigName='';
bio(483).portIdx=0;
bio(483).dim=[1,1];
bio(483).sigWidth=1;
bio(483).sigAddress='&BimanualCarvingModifiedTestEMG_B.UnitDelay1';
bio(483).ndims=2;
bio(483).size=[];


bio(484).blkName='GUI Control/Task Execution Control Subsystem/Compare To Constant/Compare';
bio(484).sigName='';
bio(484).portIdx=0;
bio(484).dim=[1,1];
bio(484).sigWidth=1;
bio(484).sigAddress='&BimanualCarvingModifiedTestEMG_B.Compare';
bio(484).ndims=2;
bio(484).size=[];


bio(485).blkName='Trajectory subsystem/Create_Trajectory/Detect Change/FixPt Relational Operator';
bio(485).sigName='';
bio(485).portIdx=0;
bio(485).dim=[1,1];
bio(485).sigWidth=1;
bio(485).sigAddress='&BimanualCarvingModifiedTestEMG_B.FixPtRelationalOperator_d';
bio(485).ndims=2;
bio(485).size=[];


bio(486).blkName='Trajectory subsystem/Create_Trajectory/Detect Change/Delay Input1';
bio(486).sigName='U(k-1)';
bio(486).portIdx=0;
bio(486).dim=[1,1];
bio(486).sigWidth=1;
bio(486).sigAddress='&BimanualCarvingModifiedTestEMG_B.Uk1_d';
bio(486).ndims=2;
bio(486).size=[];


bio(487).blkName='Trajectory subsystem/Create_Trajectory/Virtual_Trajectory/Extract_Position';
bio(487).sigName='position';
bio(487).portIdx=0;
bio(487).dim=[1,2];
bio(487).sigWidth=2;
bio(487).sigAddress='&BimanualCarvingModifiedTestEMG_B.position_b[0]';
bio(487).ndims=2;
bio(487).size=[];


bio(488).blkName='Trajectory subsystem/Create_Trajectory/Virtual_Trajectory/Extract_Position1';
bio(488).sigName='position';
bio(488).portIdx=0;
bio(488).dim=[1,2];
bio(488).sigWidth=2;
bio(488).sigAddress='&BimanualCarvingModifiedTestEMG_B.position_f[0]';
bio(488).ndims=2;
bio(488).size=[];


bio(489).blkName='Trajectory subsystem/Create_Trajectory/Virtual_Trajectory/VirtualTrajectory/p1';
bio(489).sigName='virt_pos';
bio(489).portIdx=0;
bio(489).dim=[1,2];
bio(489).sigWidth=2;
bio(489).sigAddress='&BimanualCarvingModifiedTestEMG_B.virt_pos[0]';
bio(489).ndims=2;
bio(489).size=[];


bio(490).blkName='Trajectory subsystem/Create_Trajectory/Virtual_Trajectory/VirtualTrajectory/p2';
bio(490).sigName='traj_status';
bio(490).portIdx=1;
bio(490).dim=[1,1];
bio(490).sigWidth=1;
bio(490).sigAddress='&BimanualCarvingModifiedTestEMG_B.traj_status';
bio(490).ndims=2;
bio(490).size=[];


bio(491).blkName='Trajectory subsystem/Create_Trajectory/Virtual_Trajectory/VirtualTrajectory/p3';
bio(491).sigName='reset_controller';
bio(491).portIdx=2;
bio(491).dim=[1,1];
bio(491).sigWidth=1;
bio(491).sigAddress='&BimanualCarvingModifiedTestEMG_B.reset_controller';
bio(491).ndims=2;
bio(491).size=[];


bio(492).blkName='Trajectory subsystem/Create_Trajectory/Virtual_Trajectory/Data Type Conversion1';
bio(492).sigName='';
bio(492).portIdx=0;
bio(492).dim=[1,1];
bio(492).sigWidth=1;
bio(492).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion1_n0';
bio(492).ndims=2;
bio(492).size=[];


bio(493).blkName='Trajectory subsystem/Create_Trajectory/Virtual_Trajectory/Data Type Conversion2';
bio(493).sigName='';
bio(493).portIdx=0;
bio(493).dim=[1,1];
bio(493).sigWidth=1;
bio(493).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion2_fj';
bio(493).ndims=2;
bio(493).size=[];


bio(494).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth';
bio(494).sigName='';
bio(494).portIdx=0;
bio(494).dim=[1,1];
bio(494).sigWidth=1;
bio(494).sigAddress='&BimanualCarvingModifiedTestEMG_B.ndorder50HzButterworth_p';
bio(494).ndims=2;
bio(494).size=[];


bio(495).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth1';
bio(495).sigName='';
bio(495).portIdx=0;
bio(495).dim=[1,1];
bio(495).sigWidth=1;
bio(495).sigAddress='&BimanualCarvingModifiedTestEMG_B.ndorder50HzButterworth1_o';
bio(495).ndims=2;
bio(495).size=[];


bio(496).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth2';
bio(496).sigName='';
bio(496).portIdx=0;
bio(496).dim=[1,1];
bio(496).sigWidth=1;
bio(496).sigAddress='&BimanualCarvingModifiedTestEMG_B.ndorder50HzButterworth2_d';
bio(496).ndims=2;
bio(496).size=[];


bio(497).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth3';
bio(497).sigName='';
bio(497).portIdx=0;
bio(497).dim=[1,1];
bio(497).sigWidth=1;
bio(497).sigAddress='&BimanualCarvingModifiedTestEMG_B.ndorder50HzButterworth3_h';
bio(497).ndims=2;
bio(497).size=[];


bio(498).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/xy_to_segment_angles_EP';
bio(498).sigName='SEGMENT_ANG';
bio(498).portIdx=0;
bio(498).dim=[2,1];
bio(498).sigWidth=2;
bio(498).sigAddress='&BimanualCarvingModifiedTestEMG_B.SEGMENT_ANG_k[0]';
bio(498).ndims=2;
bio(498).size=[];


bio(499).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Switch1';
bio(499).sigName='';
bio(499).portIdx=0;
bio(499).dim=[2,1];
bio(499).sigWidth=2;
bio(499).sigAddress='&BimanualCarvingModifiedTestEMG_B.Switch1_i[0]';
bio(499).ndims=2;
bio(499).size=[];


bio(500).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/10 Hz Filter/2nd order 10Hz Butterworth @ 2kHz';
bio(500).sigName='';
bio(500).portIdx=0;
bio(500).dim=[1,1];
bio(500).sigWidth=1;
bio(500).sigAddress='&BimanualCarvingModifiedTestEMG_B.ndorder10HzButterworth2kHz';
bio(500).ndims=2;
bio(500).size=[];


bio(501).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/10 Hz Filter/2nd order 10Hz Butterworth @ 2kHz1';
bio(501).sigName='';
bio(501).portIdx=0;
bio(501).dim=[1,1];
bio(501).sigWidth=1;
bio(501).sigAddress='&BimanualCarvingModifiedTestEMG_B.ndorder10HzButterworth2kHz1';
bio(501).ndims=2;
bio(501).size=[];


bio(502).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/10 Hz Filter/2nd order 10Hz Butterworth @ 2kHz2';
bio(502).sigName='';
bio(502).portIdx=0;
bio(502).dim=[1,1];
bio(502).sigWidth=1;
bio(502).sigAddress='&BimanualCarvingModifiedTestEMG_B.ndorder10HzButterworth2kHz2';
bio(502).ndims=2;
bio(502).size=[];


bio(503).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/10 Hz Filter/2nd order 10Hz Butterworth @ 2kHz3';
bio(503).sigName='';
bio(503).portIdx=0;
bio(503).dim=[1,1];
bio(503).sigWidth=1;
bio(503).sigAddress='&BimanualCarvingModifiedTestEMG_B.ndorder10HzButterworth2kHz3';
bio(503).ndims=2;
bio(503).size=[];


bio(504).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth';
bio(504).sigName='';
bio(504).portIdx=0;
bio(504).dim=[1,1];
bio(504).sigWidth=1;
bio(504).sigAddress='&BimanualCarvingModifiedTestEMG_B.ndorder50HzButterworth';
bio(504).ndims=2;
bio(504).size=[];


bio(505).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth1';
bio(505).sigName='';
bio(505).portIdx=0;
bio(505).dim=[1,1];
bio(505).sigWidth=1;
bio(505).sigAddress='&BimanualCarvingModifiedTestEMG_B.ndorder50HzButterworth1';
bio(505).ndims=2;
bio(505).size=[];


bio(506).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth2';
bio(506).sigName='';
bio(506).portIdx=0;
bio(506).dim=[1,1];
bio(506).sigWidth=1;
bio(506).sigAddress='&BimanualCarvingModifiedTestEMG_B.ndorder50HzButterworth2';
bio(506).ndims=2;
bio(506).size=[];


bio(507).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/50 Hz Filter/2nd order 50Hz Butterworth3';
bio(507).sigName='';
bio(507).portIdx=0;
bio(507).dim=[1,1];
bio(507).sigWidth=1;
bio(507).sigAddress='&BimanualCarvingModifiedTestEMG_B.ndorder50HzButterworth3';
bio(507).ndims=2;
bio(507).size=[];


bio(508).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/convert_to_segment_angles';
bio(508).sigName='SEGMENT_ANG';
bio(508).portIdx=0;
bio(508).dim=[2,1];
bio(508).sigWidth=2;
bio(508).sigAddress='&BimanualCarvingModifiedTestEMG_B.SEGMENT_ANG_p[0]';
bio(508).ndims=2;
bio(508).size=[];


bio(509).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/xy_to_segment_angles_EXO';
bio(509).sigName='SEGMENT_ANG';
bio(509).portIdx=0;
bio(509).dim=[2,1];
bio(509).sigWidth=2;
bio(509).sigAddress='&BimanualCarvingModifiedTestEMG_B.SEGMENT_ANG[0]';
bio(509).ndims=2;
bio(509).size=[];


bio(510).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Switch';
bio(510).sigName='';
bio(510).portIdx=0;
bio(510).dim=[2,1];
bio(510).sigWidth=2;
bio(510).sigAddress='&BimanualCarvingModifiedTestEMG_B.Switch_l[0]';
bio(510).ndims=2;
bio(510).size=[];


bio(511).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Switch1';
bio(511).sigName='';
bio(511).portIdx=0;
bio(511).dim=[2,1];
bio(511).sigWidth=2;
bio(511).sigAddress='&BimanualCarvingModifiedTestEMG_B.Switch1_j[0]';
bio(511).ndims=2;
bio(511).size=[];


bio(512).blkName='DataLogging/Create Task State Subsystem/Counter Free-Running/Increment Real World/FixPt Sum1';
bio(512).sigName='';
bio(512).portIdx=0;
bio(512).dim=[1,1];
bio(512).sigWidth=1;
bio(512).sigAddress='&BimanualCarvingModifiedTestEMG_B.FixPtSum1';
bio(512).ndims=2;
bio(512).size=[];


bio(513).blkName='DataLogging/Create Task State Subsystem/Counter Free-Running/Wrap To Zero/FixPt Switch';
bio(513).sigName='';
bio(513).portIdx=0;
bio(513).dim=[1,1];
bio(513).sigWidth=1;
bio(513).sigAddress='&BimanualCarvingModifiedTestEMG_B.FixPtSwitch';
bio(513).ndims=2;
bio(513).size=[];


bio(514).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Counter/Sum';
bio(514).sigName='';
bio(514).portIdx=0;
bio(514).dim=[1,1];
bio(514).sigWidth=1;
bio(514).sigAddress='&BimanualCarvingModifiedTestEMG_B.Sum_j';
bio(514).ndims=2;
bio(514).size=[];


bio(515).blkName='DataLogging/Network Transfer Subsystem/Data Packing Subsystem/Counter/Unit Delay';
bio(515).sigName='';
bio(515).portIdx=0;
bio(515).dim=[1,1];
bio(515).sigWidth=1;
bio(515).sigAddress='&BimanualCarvingModifiedTestEMG_B.UnitDelay_h';
bio(515).ndims=2;
bio(515).size=[];


bio(516).blkName='DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Counter Free-Running/Output';
bio(516).sigName='';
bio(516).portIdx=0;
bio(516).dim=[1,1];
bio(516).sigWidth=1;
bio(516).sigAddress='&BimanualCarvingModifiedTestEMG_B.Output_n';
bio(516).ndims=2;
bio(516).size=[];


bio(517).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Counter Free-Running/Output';
bio(517).sigName='';
bio(517).portIdx=0;
bio(517).dim=[1,1];
bio(517).sigWidth=1;
bio(517).sigAddress='&BimanualCarvingModifiedTestEMG_B.Output_c';
bio(517).ndims=2;
bio(517).size=[];


bio(518).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Read DPRAM/Data Type Conversion';
bio(518).sigName='';
bio(518).portIdx=0;
bio(518).dim=[1,1];
bio(518).sigWidth=1;
bio(518).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion_n';
bio(518).ndims=2;
bio(518).size=[];


bio(519).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Read DPRAM/Data Type Conversion1';
bio(519).sigName='';
bio(519).portIdx=0;
bio(519).dim=[1,1];
bio(519).sigWidth=1;
bio(519).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion1_pj';
bio(519).ndims=2;
bio(519).size=[];


bio(520).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Read DPRAM/Data Type Conversion2';
bio(520).sigName='';
bio(520).portIdx=0;
bio(520).dim=[1,1];
bio(520).sigWidth=1;
bio(520).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion2_c';
bio(520).ndims=2;
bio(520).size=[];


bio(521).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Read DPRAM/Read';
bio(521).sigName='';
bio(521).portIdx=0;
bio(521).dim=[1,1];
bio(521).sigWidth=1;
bio(521).sigAddress='&BimanualCarvingModifiedTestEMG_B.Read';
bio(521).ndims=2;
bio(521).size=[];


bio(522).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Write DPRAM/Data Type Conversion';
bio(522).sigName='';
bio(522).portIdx=0;
bio(522).dim=[1,1];
bio(522).sigWidth=1;
bio(522).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion_pt';
bio(522).ndims=2;
bio(522).size=[];


bio(523).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Write DPRAM/Data Type Conversion1';
bio(523).sigName='';
bio(523).portIdx=0;
bio(523).dim=[1,1];
bio(523).sigWidth=1;
bio(523).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion1_a';
bio(523).ndims=2;
bio(523).size=[];


bio(524).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Create timestamp';
bio(524).sigName='timestamp_out';
bio(524).portIdx=0;
bio(524).dim=[1,1];
bio(524).sigWidth=1;
bio(524).sigAddress='&BimanualCarvingModifiedTestEMG_B.sf_Createtimestamp.timestamp_out';
bio(524).ndims=2;
bio(524).size=[];


bio(525).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Data Type Conversion';
bio(525).sigName='';
bio(525).portIdx=0;
bio(525).dim=[6,1];
bio(525).sigWidth=6;
bio(525).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion_c[0]';
bio(525).ndims=2;
bio(525).size=[];


bio(526).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Byte Reversal';
bio(526).sigName='';
bio(526).portIdx=0;
bio(526).dim=[6,1];
bio(526).sigWidth=6;
bio(526).sigAddress='&BimanualCarvingModifiedTestEMG_B.ByteReversal[0]';
bio(526).ndims=2;
bio(526).size=[];


bio(527).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Byte Reversal1';
bio(527).sigName='';
bio(527).portIdx=0;
bio(527).dim=[3,1];
bio(527).sigWidth=3;
bio(527).sigAddress='&BimanualCarvingModifiedTestEMG_B.ByteReversal1[0]';
bio(527).ndims=2;
bio(527).size=[];


bio(528).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Receive from Robot 1 Force Sensor/p1';
bio(528).sigName='';
bio(528).portIdx=0;
bio(528).dim=[36,1];
bio(528).sigWidth=36;
bio(528).sigAddress='&BimanualCarvingModifiedTestEMG_B.ReceivefromRobot1ForceSensor_o1[0]';
bio(528).ndims=2;
bio(528).size=[];


bio(529).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Receive from Robot 1 Force Sensor/p2';
bio(529).sigName='';
bio(529).portIdx=1;
bio(529).dim=[1,1];
bio(529).sigWidth=1;
bio(529).sigAddress='&BimanualCarvingModifiedTestEMG_B.ReceivefromRobot1ForceSensor_o2';
bio(529).ndims=2;
bio(529).size=[];


bio(530).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Unpack/p1';
bio(530).sigName='';
bio(530).portIdx=0;
bio(530).dim=[3,1];
bio(530).sigWidth=3;
bio(530).sigAddress='&BimanualCarvingModifiedTestEMG_B.Unpack_o1[0]';
bio(530).ndims=2;
bio(530).size=[];


bio(531).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Unpack/p2';
bio(531).sigName='';
bio(531).portIdx=1;
bio(531).dim=[6,1];
bio(531).sigWidth=6;
bio(531).sigAddress='&BimanualCarvingModifiedTestEMG_B.Unpack_o2[0]';
bio(531).ndims=2;
bio(531).size=[];


bio(532).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Switch';
bio(532).sigName='';
bio(532).portIdx=0;
bio(532).dim=[7,1];
bio(532).sigWidth=7;
bio(532).sigAddress='&BimanualCarvingModifiedTestEMG_B.Switch[0]';
bio(532).ndims=2;
bio(532).size=[];


bio(533).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Create timestamp';
bio(533).sigName='timestamp_out';
bio(533).portIdx=0;
bio(533).dim=[1,1];
bio(533).sigWidth=1;
bio(533).sigAddress='&BimanualCarvingModifiedTestEMG_B.sf_Createtimestamp_l.timestamp_out';
bio(533).ndims=2;
bio(533).size=[];


bio(534).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Type Conversion1';
bio(534).sigName='';
bio(534).portIdx=0;
bio(534).dim=[6,1];
bio(534).sigWidth=6;
bio(534).sigAddress='&BimanualCarvingModifiedTestEMG_B.DataTypeConversion1_o[0]';
bio(534).ndims=2;
bio(534).size=[];


bio(535).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Byte Reversal';
bio(535).sigName='';
bio(535).portIdx=0;
bio(535).dim=[6,1];
bio(535).sigWidth=6;
bio(535).sigAddress='&BimanualCarvingModifiedTestEMG_B.ByteReversal_k[0]';
bio(535).ndims=2;
bio(535).size=[];


bio(536).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Byte Reversal1';
bio(536).sigName='';
bio(536).portIdx=0;
bio(536).dim=[3,1];
bio(536).sigWidth=3;
bio(536).sigAddress='&BimanualCarvingModifiedTestEMG_B.ByteReversal1_h[0]';
bio(536).ndims=2;
bio(536).size=[];


bio(537).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Receive from Robot 2 Force Sensor/p1';
bio(537).sigName='';
bio(537).portIdx=0;
bio(537).dim=[36,1];
bio(537).sigWidth=36;
bio(537).sigAddress='&BimanualCarvingModifiedTestEMG_B.ReceivefromRobot2ForceSensor_o1[0]';
bio(537).ndims=2;
bio(537).size=[];


bio(538).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Receive from Robot 2 Force Sensor/p2';
bio(538).sigName='';
bio(538).portIdx=1;
bio(538).dim=[1,1];
bio(538).sigWidth=1;
bio(538).sigAddress='&BimanualCarvingModifiedTestEMG_B.ReceivefromRobot2ForceSensor_o2';
bio(538).ndims=2;
bio(538).size=[];


bio(539).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Unpack1/p1';
bio(539).sigName='';
bio(539).portIdx=0;
bio(539).dim=[3,1];
bio(539).sigWidth=3;
bio(539).sigAddress='&BimanualCarvingModifiedTestEMG_B.Unpack1_o1[0]';
bio(539).ndims=2;
bio(539).size=[];


bio(540).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Unpack1/p2';
bio(540).sigName='';
bio(540).portIdx=1;
bio(540).dim=[6,1];
bio(540).sigWidth=6;
bio(540).sigAddress='&BimanualCarvingModifiedTestEMG_B.Unpack1_o2[0]';
bio(540).ndims=2;
bio(540).size=[];


bio(541).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Switch1';
bio(541).sigName='';
bio(541).portIdx=0;
bio(541).dim=[7,1];
bio(541).sigWidth=7;
bio(541).sigAddress='&BimanualCarvingModifiedTestEMG_B.Switch1[0]';
bio(541).ndims=2;
bio(541).size=[];


bio(542).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Detect Increase/FixPt Relational Operator';
bio(542).sigName='';
bio(542).portIdx=0;
bio(542).dim=[1,1];
bio(542).sigWidth=1;
bio(542).sigAddress='&BimanualCarvingModifiedTestEMG_B.FixPtRelationalOperator_j';
bio(542).ndims=2;
bio(542).size=[];


bio(543).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Detect Increase/Delay Input1';
bio(543).sigName='U(k-1)';
bio(543).portIdx=0;
bio(543).dim=[1,1];
bio(543).sigWidth=1;
bio(543).sigAddress='&BimanualCarvingModifiedTestEMG_B.Uk1_i';
bio(543).ndims=2;
bio(543).size=[];


bio(544).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Discrete Derivative/Diff';
bio(544).sigName='';
bio(544).portIdx=0;
bio(544).dim=[2,1];
bio(544).sigWidth=2;
bio(544).sigAddress='&BimanualCarvingModifiedTestEMG_B.Diff[0]';
bio(544).ndims=2;
bio(544).size=[];


bio(545).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Discrete Derivative/TSamp';
bio(545).sigName='';
bio(545).portIdx=0;
bio(545).dim=[2,1];
bio(545).sigWidth=2;
bio(545).sigAddress='&BimanualCarvingModifiedTestEMG_B.TSamp[0]';
bio(545).ndims=2;
bio(545).size=[];


bio(546).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Discrete Derivative/UD';
bio(546).sigName='U(k-1)';
bio(546).portIdx=0;
bio(546).dim=[2,1];
bio(546).sigWidth=2;
bio(546).sigAddress='&BimanualCarvingModifiedTestEMG_B.Uk1_h[0]';
bio(546).ndims=2;
bio(546).size=[];


bio(547).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Discrete Derivative1/Diff';
bio(547).sigName='';
bio(547).portIdx=0;
bio(547).dim=[2,1];
bio(547).sigWidth=2;
bio(547).sigAddress='&BimanualCarvingModifiedTestEMG_B.Diff_i[0]';
bio(547).ndims=2;
bio(547).size=[];


bio(548).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Discrete Derivative1/TSamp';
bio(548).sigName='';
bio(548).portIdx=0;
bio(548).dim=[2,1];
bio(548).sigWidth=2;
bio(548).sigAddress='&BimanualCarvingModifiedTestEMG_B.TSamp_l[0]';
bio(548).ndims=2;
bio(548).size=[];


bio(549).blkName='Trajectory subsystem/KINARM_EP_Position_Controller/Get_kinematics_EP/Discrete Derivative1/UD';
bio(549).sigName='U(k-1)';
bio(549).portIdx=0;
bio(549).dim=[2,1];
bio(549).sigWidth=2;
bio(549).sigAddress='&BimanualCarvingModifiedTestEMG_B.Uk1_f[0]';
bio(549).ndims=2;
bio(549).size=[];


bio(550).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Detect Increase/FixPt Relational Operator';
bio(550).sigName='';
bio(550).portIdx=0;
bio(550).dim=[1,1];
bio(550).sigWidth=1;
bio(550).sigAddress='&BimanualCarvingModifiedTestEMG_B.FixPtRelationalOperator_k';
bio(550).ndims=2;
bio(550).size=[];


bio(551).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Detect Increase/Delay Input1';
bio(551).sigName='U(k-1)';
bio(551).portIdx=0;
bio(551).dim=[1,1];
bio(551).sigWidth=1;
bio(551).sigAddress='&BimanualCarvingModifiedTestEMG_B.Uk1_fv';
bio(551).ndims=2;
bio(551).size=[];


bio(552).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Discrete Derivative/Diff';
bio(552).sigName='';
bio(552).portIdx=0;
bio(552).dim=[2,1];
bio(552).sigWidth=2;
bio(552).sigAddress='&BimanualCarvingModifiedTestEMG_B.Diff_e[0]';
bio(552).ndims=2;
bio(552).size=[];


bio(553).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Discrete Derivative/TSamp';
bio(553).sigName='';
bio(553).portIdx=0;
bio(553).dim=[2,1];
bio(553).sigWidth=2;
bio(553).sigAddress='&BimanualCarvingModifiedTestEMG_B.TSamp_e[0]';
bio(553).ndims=2;
bio(553).size=[];


bio(554).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Discrete Derivative/UD';
bio(554).sigName='U(k-1)';
bio(554).portIdx=0;
bio(554).dim=[2,1];
bio(554).sigWidth=2;
bio(554).sigAddress='&BimanualCarvingModifiedTestEMG_B.Uk1_j[0]';
bio(554).ndims=2;
bio(554).size=[];


bio(555).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Discrete Derivative1/Diff';
bio(555).sigName='';
bio(555).portIdx=0;
bio(555).dim=[2,1];
bio(555).sigWidth=2;
bio(555).sigAddress='&BimanualCarvingModifiedTestEMG_B.Diff_il[0]';
bio(555).ndims=2;
bio(555).size=[];


bio(556).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Discrete Derivative1/TSamp';
bio(556).sigName='';
bio(556).portIdx=0;
bio(556).dim=[2,1];
bio(556).sigWidth=2;
bio(556).sigAddress='&BimanualCarvingModifiedTestEMG_B.TSamp_a[0]';
bio(556).ndims=2;
bio(556).size=[];


bio(557).blkName='Trajectory subsystem/KINARM_Exo_Position_Controller/Get_kinematics_EXO/Discrete Derivative1/UD';
bio(557).sigName='U(k-1)';
bio(557).portIdx=0;
bio(557).dim=[2,1];
bio(557).sigWidth=2;
bio(557).sigAddress='&BimanualCarvingModifiedTestEMG_B.Uk1_n[0]';
bio(557).ndims=2;
bio(557).size=[];


bio(558).blkName='DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Counter Free-Running/Increment Real World/FixPt Sum1';
bio(558).sigName='';
bio(558).portIdx=0;
bio(558).dim=[1,1];
bio(558).sigWidth=1;
bio(558).sigAddress='&BimanualCarvingModifiedTestEMG_B.FixPtSum1_e';
bio(558).ndims=2;
bio(558).size=[];


bio(559).blkName='DataLogging/Network Transfer Subsystem/UDP Send Subsystem/Counter Free-Running/Wrap To Zero/FixPt Switch';
bio(559).sigName='';
bio(559).portIdx=0;
bio(559).dim=[1,1];
bio(559).sigWidth=1;
bio(559).sigAddress='&BimanualCarvingModifiedTestEMG_B.FixPtSwitch_d';
bio(559).ndims=2;
bio(559).size=[];


bio(560).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Counter Free-Running/Increment Real World/FixPt Sum1';
bio(560).sigName='';
bio(560).portIdx=0;
bio(560).dim=[1,1];
bio(560).sigWidth=1;
bio(560).sigAddress='&BimanualCarvingModifiedTestEMG_B.FixPtSum1_d';
bio(560).ndims=2;
bio(560).size=[];


bio(561).blkName='DataLogging/Poll KINARM/DPRAM Access Subsystem/Counter Free-Running/Wrap To Zero/FixPt Switch';
bio(561).sigName='';
bio(561).portIdx=0;
bio(561).dim=[1,1];
bio(561).sigWidth=1;
bio(561).sigAddress='&BimanualCarvingModifiedTestEMG_B.FixPtSwitch_p';
bio(561).ndims=2;
bio(561).size=[];


bio(562).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Detect Change/FixPt Relational Operator';
bio(562).sigName='';
bio(562).portIdx=0;
bio(562).dim=[1,1];
bio(562).sigWidth=1;
bio(562).sigAddress='&BimanualCarvingModifiedTestEMG_B.FixPtRelationalOperator';
bio(562).ndims=2;
bio(562).size=[];


bio(563).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/Detect Change/Delay Input1';
bio(563).sigName='U(k-1)';
bio(563).portIdx=0;
bio(563).dim=[1,1];
bio(563).sigWidth=1;
bio(563).sigAddress='&BimanualCarvingModifiedTestEMG_B.Uk1';
bio(563).ndims=2;
bio(563).size=[];


bio(564).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Byte Reversal';
bio(564).sigName='';
bio(564).portIdx=0;
bio(564).dim=[1,1];
bio(564).sigWidth=1;
bio(564).sigAddress='&BimanualCarvingModifiedTestEMG_B.ByteReversal_m';
bio(564).ndims=2;
bio(564).size=[];


bio(565).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Byte Reversal1';
bio(565).sigName='';
bio(565).portIdx=0;
bio(565).dim=[1,1];
bio(565).sigWidth=1;
bio(565).sigAddress='&BimanualCarvingModifiedTestEMG_B.ByteReversal1_m';
bio(565).ndims=2;
bio(565).size=[];


bio(566).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Byte Reversal2';
bio(566).sigName='';
bio(566).portIdx=0;
bio(566).dim=[1,1];
bio(566).sigWidth=1;
bio(566).sigAddress='&BimanualCarvingModifiedTestEMG_B.ByteReversal2';
bio(566).ndims=2;
bio(566).size=[];


bio(567).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Pack';
bio(567).sigName='';
bio(567).portIdx=0;
bio(567).dim=[8,1];
bio(567).sigWidth=8;
bio(567).sigAddress='&BimanualCarvingModifiedTestEMG_B.Pack_c[0]';
bio(567).ndims=2;
bio(567).size=[];


bio(568).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 1 Subsystem/If Action Subsystem/Switch';
bio(568).sigName='';
bio(568).portIdx=0;
bio(568).dim=[1,1];
bio(568).sigWidth=1;
bio(568).sigAddress='&BimanualCarvingModifiedTestEMG_B.Switch_e';
bio(568).ndims=2;
bio(568).size=[];


bio(569).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Byte Reversal';
bio(569).sigName='';
bio(569).portIdx=0;
bio(569).dim=[1,1];
bio(569).sigWidth=1;
bio(569).sigAddress='&BimanualCarvingModifiedTestEMG_B.ByteReversal_kp';
bio(569).ndims=2;
bio(569).size=[];


bio(570).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Byte Reversal1';
bio(570).sigName='';
bio(570).portIdx=0;
bio(570).dim=[1,1];
bio(570).sigWidth=1;
bio(570).sigAddress='&BimanualCarvingModifiedTestEMG_B.ByteReversal1_b';
bio(570).ndims=2;
bio(570).size=[];


bio(571).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Byte Reversal2';
bio(571).sigName='';
bio(571).portIdx=0;
bio(571).dim=[1,1];
bio(571).sigWidth=1;
bio(571).sigAddress='&BimanualCarvingModifiedTestEMG_B.ByteReversal2_l';
bio(571).ndims=2;
bio(571).size=[];


bio(572).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Pack';
bio(572).sigName='';
bio(572).portIdx=0;
bio(572).dim=[8,1];
bio(572).sigWidth=8;
bio(572).sigAddress='&BimanualCarvingModifiedTestEMG_B.Pack_l[0]';
bio(572).ndims=2;
bio(572).size=[];


bio(573).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Data Transfer Start Subsystem/Switch';
bio(573).sigName='';
bio(573).portIdx=0;
bio(573).dim=[1,1];
bio(573).sigWidth=1;
bio(573).sigAddress='&BimanualCarvingModifiedTestEMG_B.Switch_ll';
bio(573).ndims=2;
bio(573).size=[];


bio(574).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Detect Change/FixPt Relational Operator';
bio(574).sigName='';
bio(574).portIdx=0;
bio(574).dim=[1,1];
bio(574).sigWidth=1;
bio(574).sigAddress='&BimanualCarvingModifiedTestEMG_B.FixPtRelationalOperator_e';
bio(574).ndims=2;
bio(574).size=[];


bio(575).blkName='DataLogging/Poll KINARM/Force Sensor Control Subsystem/Force Sensor 2 Subsystem/Detect Change/Delay Input1';
bio(575).sigName='U(k-1)';
bio(575).portIdx=0;
bio(575).dim=[1,1];
bio(575).sigWidth=1;
bio(575).sigAddress='&BimanualCarvingModifiedTestEMG_B.Uk1_a';
bio(575).ndims=2;
bio(575).size=[];


function len = getlenBIO
len = 575;

