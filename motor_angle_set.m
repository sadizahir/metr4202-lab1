function motor_angle_set(a, b, c)
% Positions of the three joints.
global mA_pos;
global mB_pos;
global mC_pos;

% Gear ratios of the three joints.
global mA_GR;
global mB_GR;
global mC_GR;

% Direct access to the motors.
global mA;
global mB;
global mC;

% Get the most recent position of the motors by querying the motors and
% adjusting by the gear ratio to give the "actual" joint rotation.
mA_pos = mA.ReadFromNXT.Position / -mA_GR;
mB_pos = mB.ReadFromNXT.Position / -mB_GR;
mC_pos = mC.ReadFromNXT.Position / mC_GR;

% Calculate the desired joint angles.
desired_A = a - mA_pos;
desired_B = b - mB_pos;
desired_C = c - mC_pos;

% Move the motors by those angles.
motor_angles(desired_A, desired_B, desired_C);