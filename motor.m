h = COM_OpenNXT(); % Open connection to NXT
COM_SetDefaultNXT(h); %Set default handle
mA = NXTMotor('A');
mB = NXTMotor('B');
mC = NXTMotor('C');
% chuck code here
%COM_CloseNXT(COM_GetDefaultNXT());  % close connection to NXT