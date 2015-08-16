syms alpha1 alpha2 alpha3
syms a1 a2 a3
syms d1 d2 d3
syms theta1 theta2 theta3

T0_d=[1 0 0 0; 0 1 0 0; 0 0 1 d1; 0 0 0 1];
T0_theta=[cos(theta1) -sin(theta1) 0 0; sin(theta1) cos(theta1) 0 0; 0 0 1 0; 0 0 0 1];
T0_a =[1 0 0 a1; 0 1 0 0; 0 0 1 0; 0 0 0 1];
T0_alpha=[1 0 0 0; 0 cos(alpha1) -sin(alpha1) 0;0 sin(alpha1) cos(alpha1) 0; 0 0 0 1];

T0 = T0_d*T0_theta*T0_a*T0_alpha;

T1_d=[1 0 0 0; 0 1 0 0; 0 0 1 d1; 0 0 0 1];
T1_theta=[cos(theta2) -sin(theta2) 0 0; sin(theta2) cos(theta2) 0 0; 0 0 1 0; 0 0 0 1];
T1_a =[1 0 0 a1; 0 1 0 0; 0 0 1 0; 0 0 0 1];
T1_alpha=[1 0 0 0; 0 cos(alpha2) -sin(alpha2) 0;0 sin(alpha2) cos(alpha2) 0; 0 0 0 1];

T1 = T1_d*T1_theta*T1_a*T1_alpha;

T2_d=[1 0 0 0; 0 1 0 0; 0 0 1 d1; 0 0 0 1];
T2_theta=[cos(theta3) -sin(theta3) 0 0; sin(theta3) cos(theta3) 0 0; 0 0 1 0; 0 0 0 1];
T2_a =[1 0 0 a1; 0 1 0 0; 0 0 1 0; 0 0 0 1];
T2_alpha=[1 0 0 0; 0 cos(alpha3) -sin(alpha3) 0;0 sin(alpha3) cos(alpha3) 0; 0 0 0 1];

T2 = T2_d*T2_theta*T2_a*T2_alpha;

T = T0*T1*T2