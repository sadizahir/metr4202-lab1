% Takes three angles (positive or negative) and moves all the motors by
% their respective angles.
function motor_angles(t1, t2, t3)

global mA;
global mB;
global mC;
global mA_GR;
global mB_GR;
global mC_GR;
global mP;
global L1;
global L2;
global L3;
global mA_pos;
global mB_pos;
global mC_pos;

mA_pos = mA_pos + t1;
mB_pos = mB_pos + t2;
mC_pos = mC_pos + t3;

epsilon = 1;

% For the first and second joints, the gearing makes the motor behaviour
% opposite. So we make the motor go forward (gear goes backward) for
% negative angles and backward (gear goes forward) for positive angles.

% First joint: Positive angles move right, negative angles move left.
if t1 < -epsilon
    t1 = -t1;
    motor_forward(mA, mA_GR, t1);
elseif t1 > epsilon
    motor_backward(mA, mA_GR, t1);
end

% Second joint: Positive angles move down, negative angles move up.
if t2 < -epsilon
    t2 = -t2;
    motor_forward(mB, mB_GR, t2);
elseif t2 > epsilon
    motor_backward(mB, mB_GR, t2);
end

% Third joint: this one doesn't have any gears connected to it. As a
% result, the behaviour is normal (negative angles move the motor "back",
% positive angles move the motor "forward"). Positive angles move down,
% negative angles move up.
if t3 < -epsilon
    t3 = -t3;
    motor_backward(mC, mC_GR, t3);
elseif t3 > epsilon
    motor_forward(mC, mC_GR, t3);
end