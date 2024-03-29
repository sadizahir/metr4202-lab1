function fk_ans = fkine_simpl(a, b, c)
% Uses condensed matrix for quick forward kinematics calculations. If you
% need the full matrix, check out fkine.m

% Grab the global link lengths.
% What these mean is described in motor_const.m.
global L1;
global L2;
global L3;
global Lt;
global zt;
global Pt;

fk_ans = [
    cosd(a)*(L3*sind(b+c)+L2*sind(b)+Lt*cosd(b)+L1);
    sind(a)*(L3*sind(b+c)+L2*sind(b)+Lt*cosd(b)+L1);
    L3*cosd(b+c)+L2*cosd(b)-Lt*sind(b)+zt;
    1;];