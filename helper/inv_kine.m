%Inverse kinematics
function angles = inv_kine(x, y, z)
global L1;
global L2;
global L3;
global Lt;
global zt;

theta1 = atand(x/y);
a = sqrt(x^2 + y^2);
b = sqrt((a-L1)^2 + z^2);
p = sqrt(x^2 + y^2 +z^2);
phi1 = atand((z-zt)/(a-L1));
phi2 = acosd((L2^2 + b^2 - L3^2)/(2*L2*b));
c = sqrt(p^2 +L2^2-2*p*L2*cosd(phi2));
d = p - L2/(cosd(phi2));
phi3 = acosd((L3^2 + L2^2 - b^2)/(2*L3*L2));
theta2 = 90 - phi1 - phi2;
theta3 = acosd((Lt^2 + d^2 - c^2)/(2*Lt*d));
angles = [theta1 theta2 theta3];
end