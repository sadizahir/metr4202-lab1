function motor_flick()
global mB;
motor_angles(0, 10, 0);
mB.WaitFor();
motor_angles(0, -10, 0);