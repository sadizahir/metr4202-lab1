% handlers for the three motors
global mA;
global mB;
global mC;

h = COM_OpenNXT(); % Open connection to NXT
COM_SetDefaultNXT(h); %Set default handle
mA = NXTMotor('A');
mA.SmoothStart = true;
mA.SpeedRegulation = false;
mB = NXTMotor('B');
mB.SmoothStart = true;
mB.SpeedRegulation = false;
mC = NXTMotor('C');
mC.SmoothStart = true;
mC.SpeedRegulation = false;

% copy this if you need to close the connection
%COM_CloseNXT(COM_GetDefaultNXT());  % close connection to NXT