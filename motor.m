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

%COM_CloseNXT(COM_GetDefaultNXT());  % close connection to NXT