%Inverse kinematics
%theta1 = -30; theta2 = 60; theta3 = 110;
%x= 205; y=-130; z=-135;
%theta1 = 45; theta2 = 45; theta3 = 135;
%x= 140; y=140; z=-95;
function angles = inv_kine(x, y, z)
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


ang = [phi1 phi2 phi3 phi4 phi5 phi6]













% theta1 = atand(y/x);
% phi_os = atand(Lt/(L2+L3))                         %constant value
% phi3 = atand(Lt/L2) 
% c = sqrt(L2^2 + Lt^2)                      
% 
% 
% a = sqrt(x^2 + y^2);
% b = sqrt((a-L1)^2 + (zt)^2)      
% 
% phi1 = atand(abs(z)/(a-L1))
% %phi2 = acosd((b^2 + c^2 - L3^2)/(2*b*c))
% 
% t1 = acosd((c^2 +L3^2 - b^2)/(2*c*L3))
% t2 = 90 - phi3
% theta3 = 270 - t1 - t2 - phi_os
% 
% d = sqrt((L3^2)+Lt^2 -2*L3*Lt*cosd(t1+t2))
% phi2 = acosd((L2^2 + b^2 - d^2)/(2*L2*b))
% theta2 = 180 - phi1 - phi2
% 
% % t1 = acosd(((L3+Lt)^2 + L2^2 - b^2)/(2*(L3+Lt)*L2))
% % t2 = acosd((L2^2 + b^2 - L3^2)/(2*b*L2))
% %theta2 = t1 + phi3 - phi_os
% 
% %c = sqrt(p^2 +L2^2-2*p*L2*cosd(phi2));
% %e = L2*(cosd(phi2));
% %d = p - e;
% %phi3 = acosd((L3^2 + L2^2 - b^2)/(2*L3*L2));
% 
% %theta2 = phi1 - phi2
% %theta3 = 0;
% %theta3 = acosd((Lt^2 + d^2 - c^2)/(2*Lt*d))
angles = [theta1 theta2 theta3];
end