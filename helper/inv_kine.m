%Inverse kinematics
function angles = inv_kine(x, y, z)
L1 = 64; L2=174; L3=125;  %Arm link Lengths
theta1 = atand(x/y);
a = sqrt(x^2 + y^2);
b = sqrt((a-L1)^2 + z^2);
phi1 = atand(z/(a-L1));
phi2 = acosd((L2^2 + b^2 - L3^2)/(2*L2*b));
tA = acosd((L3^2 + L2^2 - b^2)/(2*L3*L2));
theta2 = 90 - phi1 - phi2;
theta3 = 180 - tA;
angles = [theta1 theta2 theta3];
end