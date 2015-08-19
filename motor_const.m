global mA_GR;
global mB_GR;
global mC_GR;
global mA_pos;
global mB_pos;
global mC_pos;
global mP;
global L1;
global L2;
global L3;
global Lt;
global zt;

% Gear Ratios %
mA_GR = round(55/8);
mB_GR = round(40/8);
mC_GR = round(40/8);

% motor power
mP = 70;

% Link Lengths %
L1 = 64;
L2 = 154;
L3 = 194;
Lt = 33;
zt = 35;

% Initial motor positions
mA_pos = 0;
mB_pos = 0;
mC_pos = 0;
mA.ResetPosition();
mB.ResetPosition();
mC.ResetPosition();