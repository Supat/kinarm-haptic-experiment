HandDistance = 0.22;
nPoints = 30;
handOffset = 0.02;

MaterialTargetInit = [linspace(-HandDistance/2,HandDistance/2,nPoints); zeros(1,nPoints)];
MaterialPosUnrotatedLeftInit = [-HandDistance/2*ones(1,5); linspace(-handOffset,0,5)];
MaterialPosUnrotatedTopInit = [MaterialTargetInit(1,:); 0.005*rand(1,nPoints)-0.005/2 + 0.005];
% MaterialPosUnrotatedTopInit = [MaterialTargetInit(1,:); zeros(1,nPoints) + 0.005];
MaterialPosUnrotatedRightInit = [HandDistance/2*ones(1,5); linspace(0,-handOffset,5)];
MaterialPosUnrotatedInit = [MaterialPosUnrotatedLeftInit MaterialPosUnrotatedTopInit MaterialPosUnrotatedRightInit];

MaterialPosUnrotated = MaterialPosUnrotatedInit;

smoothnessScore = trapz(MaterialPosUnrotated(1,6:end-5),abs(1e7*(MaterialPosUnrotated(2,6:end-5)-mean(MaterialPosUnrotated(2,6:end-5)))))/nPoints;
smoothnessScore2 = 1e7*trapz(MaterialPosUnrotated(1,6:end-5),abs((MaterialPosUnrotated(2,6:end-5)-mean(MaterialPosUnrotated(2,6:end-5)))))/nPoints;


a = 1;
