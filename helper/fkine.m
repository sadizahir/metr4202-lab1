function fk_ans = fkine(a, b, c)
% Calculates forward kinematics on angles a, b, c.

% Grab the global link lengths.
global L1;
global L2;
global L3;
global Lt;
global zt;

% Convert the input angles to degrees.
a = deg2rad(a);
b = deg2rad(b);
c = deg2rad(c);

% Calculate the forward kinematics.
fk_ans = rotz(a) * trans(L1, 0, zt) * roty(b) * trans(Lt, 0, L2) * roty(c) * trans(0, 0, L3) * [0; 0; 0; 1];