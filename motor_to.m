function motor_to(x, y, z)
% Moves the end-effector to x, y, z (general co-ordinates) RELATIVE TO
% current positioning of the end-effector.
angles = inv_kine(y, x, z);
motor_angle_set(angles(1), angles(2), angles(3));