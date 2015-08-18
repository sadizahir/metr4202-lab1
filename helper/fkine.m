function fk_ans = fkine(a, b, c)
% Calculates forward kinematics on angles a, b, c.
syms a;
syms b;
syms c;

% Grab the global link lengths.
global L1;
global L2;
global L3;
global Lt;
global zt;

% Calculate the forward kinematics.
fk_ans = rotz(a) * trans(L1, 0, zt) * roty(b) * trans(Lt, 0, L2) * roty(c) * trans(0, 0, L3) * [0;0;0;1];