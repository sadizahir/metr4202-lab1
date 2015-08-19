global mA_GR;
global mB_GR;
global mC_GR;
global mA_pos;
global mB_pos;
global mC_pos;
global mP;
global mP_max;
global mP_drop;
global L1;
global L2;
global L3;
global Lt;
global zt;
global Pt;

% Gear Ratios %
mA_GR = 55/8;
mB_GR = 40/8;
mC_GR = 40/8;

% motor power
mP_max = 80;
mP_drop = 100;
mP = mP_max;

% Link Lengths %
L1 = 65;
L2 = 154;
L3 = 194;
Lt = 33;
zt = 35;
Pt = 16;

% Initial motor positions
mA_pos = 0;
mB_pos = 0;
mC_pos = 0;
mA.ResetPosition();
mB.ResetPosition();
mC.ResetPosition();