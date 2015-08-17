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

% Gear Ratios %
mA_GR = int32(55/8);
mB_GR = int32(40/8);
mC_GR = int32(1/1);

% motor power
mP = 50;

% Link Lengths %
L1 = 64;
L2 = 155;
L3 = 165;

% Initial motor positions
mA_pos = 0;
mB_pos = 0;
mC_pos = 0;
mA.ResetPosition();
mB.ResetPosition();
mC.ResetPosition();