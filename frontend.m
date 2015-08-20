%Frontend
%
%Front end for Lab 1
%Copy points from point generator and replace existing
%

%copy points from point generator
points=[0, 3, 3; 4, 0, 4; 1, 3, 4; 2, 4, 4; 5, 5, 4; 7, 5, 5; ];
points_calib=[90, 148, 158-10; 105, 158, 158-10; 113, 152, 158-10; 116, 159, 158-10; 122, 150, 158-10; 128, 143, 158-10;];
% points=sortrows(points, 1);
global mP;
global mA_pos;
global mB_pos;
global mC_pos;

%loop through each point

for o=1:100
for i=1:length(points)
    motor_to_hlu(points(i,1), points(i,2), points(i,3), points_calib(i,:));
    motor_flick;
    %mP = 100;
    %motor_angle_set(0, 0, 0);
    %current_pos = fkine_simpl(mA_pos, mB_pos, mC_pos);
    %motor_to_hlu(desired_pos(1), desired_pos(2), desired_pos(3));
end
points = flipud(points);
points_calib = flipud(points_calib);
end