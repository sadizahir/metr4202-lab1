function motor_to(x, y, z)
% Moves the end-effector to x, y, z (general co-ordinates).

% Perform inverse kinematics on the real co-ordinates to find desired joint
% angles.
angles = num_inv_kine(x, y, z);

% Set the joints to those angles.
motor_angle_set(angles(1), angles(2), angles(3));