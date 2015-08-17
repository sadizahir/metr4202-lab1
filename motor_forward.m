function motor_forward(motor, gear_ratio, angle)
% Moves a given motor "forward"
motor.Power = 30;
motor.TachoLimit = int32(angle*gear_ratio);
motor.SendToNXT();