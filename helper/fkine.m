function fk_ans = fkine(a, b, c)
% Calculates forward kinematics on angles a, b, c
a = deg2rad(a);
b = deg2rad(b);
c = deg2rad(c);
global L1;
global L2;
global L3;
fk_ans = rotz(a) * trans(L1, 0, 0) * roty(b) * trans(0, 0, L2) * roty(c) * trans(0, 0, L3) * [0; 0; 0; 1];