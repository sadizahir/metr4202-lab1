function motor_to(x, y, z)
% Moves the end-effector to x, y, z (general co-ordinates) RELATIVE TO
% current positioning of the end-effector.
cpos = convert(x, y, z);
angles = inv_kine(cpos(2), cpos(1), cpos(3));
motor_angle_set(angles(1), angles(2), angles(3));