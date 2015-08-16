function motor_angles(t1, t2, t3)
% Moves a given motor "forward"
if t1 < 0:
    t1 = -t1;
    motor_forward(mA, mA_GR, t1);
    