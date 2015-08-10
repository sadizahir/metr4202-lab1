h = COM_OpenNXT(); % Open connection to NXT
COM_SetDefaultNXT(h); %Set default handle
% chuck code here
COM_CloseNXT(COM_GetDefaultNXT());  % close connection to NXT