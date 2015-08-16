% Takes three angles (positive or negative) and moves all the motors by
% their respective angles.
function motor_angles(t1, t2, t3)

% For the first and second joints, the gearing makes the motor behaviour
% opposite. So we make the motor go forward (gear goes backward) for
% negative angles and backward (gear goes forward) for positive angles.

% First joint: Positive angles move right, negative angles move left.
if t1 < 0
    t1 = -t1;
    motor_forward(mA, mA_GR, t1);
else
    motor_backward(mA, mA_GR, t1);

% Second joint: Positive angles move down, negative angles move up.
if t2 < 0
    t2 = -t2;
    motor_forward(mB, mB_GR, t2);
else
    motor_backward(mB, mB_GR, t2);

% Third joint: this one doesn't have any gears connected to it. As a
% result, the behaviour is normal (negative angles move the motor "back",
% positive angles move the motor "forward"). Positive angles move down,
% negative angles move up.
if t3 < 0
    t3 = -t3;
    motor_backward(mC, mC_GR, t3);
else
    motor_forward(mC, mC_GR, t3);