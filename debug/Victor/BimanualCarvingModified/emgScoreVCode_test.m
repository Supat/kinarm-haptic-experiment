function VCODE_out = emgScoreVCode(EMGscore)

VCODE = [];
EMGscore = 36.5;

%don't show a zero, show a blank in the 100's position
if EMGscore < 100
	VCODE(15) = 32; %' ' space
else
	VCODE(15) = getChar(EMGscore, 100);
end

%don't show a zero, show a blank in the 10's position
if EMGscore < 10
	VCODE(16) = 32; %' ' space
else
	VCODE(16) = getChar(EMGscore, 10);
end

VCODE(17) = getChar(EMGscore, 1);
VCODE(18) = 46; % . period
VCODE(19) = getChar(EMGscore, 0.1);
VCODE(20) = 32;  %' ' space
% VCODE(19) = 99;  % c
% VCODE(20) = 109; % m
% VCODE(21) = 47;  % \
% VCODE(22) = 115; % s
VCODE(21) = 0;	 %terminate the new string

VCODE_out=VCODE;
end

function cc = getChar(number, dec)
	%in simulink there is no nice way to convert a number to s string
	%so what we are doing here is converting a single digit to a character.
	%48 is ascii for '0', so this gets the least significant digit before 
	%the decimal and converts to ascii.
    cc = floor(mod(number / dec, 10)) + 48;
end
