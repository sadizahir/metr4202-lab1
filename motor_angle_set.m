function motor_angle_set(a, b, c)
global mA_pos;
global mB_pos;
global mC_pos;
desired_A = (mA_pos - a)*-1;
desired_B = (mB_pos - b)*-1;
desired_C = (mC_pos - c)*-1;
motor_angles(desired_A, desired_B, desired_C);