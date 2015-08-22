% Main script. Type in your points. Use motor_to_hlu to calibrate and pop
% the offsets into point_calib.

points=[2, 0, 1; 2, 2, 2; 4, 2, 2; 5, 3, 3; 4, 5, 3; 9, 5, 4; ];
points_calib=[88, 147, 150-10; 88, 147, 150-10; 88, 147, 150-10; 88, 147, 150-10; 88, 147, 150-10; 88, 147, 150-10;];

% points=sortrows(points, 1);
global mP;
global mA_pos;
global mB_pos;
global mC_pos;

%loop through each point 100 times
for o=1:100
for i=1:length(points)
    motor_to_hlu(points(i,1), points(i,2), points(i,3), points_calib(i,:));
    motor_flick;
end
points = flipud(points);
points_calib = flipud(points_calib);
end