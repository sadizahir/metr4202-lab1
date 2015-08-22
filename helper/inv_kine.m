function angles = inv_kine(x, y, z)
% Trigonometric inverse kinematics.

% Grab the global link lengths.
% What these mean is described in motor_const.m.
global L1;
global L2;
global L3;
global Lt;
global zt;

theta1 = atand(y/x);
a = sqrt(x^2 +y^2);

b = sqrt((zt^2) + (a-L1)^2);

phi1 = atand((a-L1)/abs(z));
phi3 = atand(Lt/L2);
phi4 = 90 - phi3;
c = sqrt(Lt^2 + L2^2);

d = sqrt(z^2 +b^2 - 2*z*b*cos(phi1));

phi2 = acosd((c^2 +d^2 -L3^2)/(2*c*d));
phi5 = acosd((L3^2 + c^2 - d^2)/ (2*L3*c));

phi6 = acosd((d^2 + b^2 - z^2)/(2*d*b));

theta2 = 180 - phi1 - phi2 - phi3 - phi6;
theta3 = 270 - phi4 - phi5;

angles = [theta1 theta2 theta3];
end