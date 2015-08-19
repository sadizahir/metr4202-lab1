function fk_ans = fkine(a, b, c)
% Calculates forward kinematics on angles a, b, c.

% Uncomment the following block in order to get a symbolic fkine.
%syms a;
%syms b;
%syms c;

% Grab the global link lengths.
% What these mean is described in motor_const.m.
global L1;
global L2;
global L3;
global Lt;
global zt;
global Pt;

% Calculate the forward kinematics.
fk_ans = rotz(a) * trans(L1, 0, zt) * roty(b) * trans(Lt, 0, L2) * roty(c) * trans(0, Pt, L3) * [0;0;0;1];