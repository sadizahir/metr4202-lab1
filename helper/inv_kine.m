% Inverse kinematics 
% Finds theta1 and theta2 within 2 degrees. 
% Inconsistency in theta3
function angles = inv_kine1(x, y, z)
global L1;
global L2;
global L3;
global Lt;
global zt;
%First motor angle
theta1 = atan2d(y,x);
%rotated axis from theta 1
a = sqrt(x^2 + y^2);
%New plane along a
i = a - L1;
j = z - zt;
% Length from the base of L2 to the point
b = sqrt((a-L1)^2 + (z)^2);
% Line to third motor from i-j axis at (0,0)
c = sqrt(Lt^2 + L2^2);
% Angle between i axis and the vector from the origin (i-j) to the point
gamma = atan2d(j, i);
% Length between origin (i-j) and the point
k = sqrt(i^2 + j^2);
% angle between k and c
phi1 = acosd((c^2 + k^2 - L3^2)/(2*c*k));
% Angle of second motor to reach the point
theta2 = 90 - gamma - phi1 - 12;
% Angle between L2 and L3 ignoring the translations
phi2 = acosd((L3^2 + L2^2 - b^2)/(2*L3*L2));
%Angle of third motor to reach the point
theta3 = 180 - phi2+9;
%matrix of angles needed to reach x,y,z
angles = [theta1 theta2 theta3];
end