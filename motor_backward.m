function motor_backward(motor, gear_ratio, angle)
% Moves a given motor "forward"
global mP;
motor.Power = -mP;
motor.TachoLimit = ceil(angle*gear_ratio);
motor.SendToNXT();