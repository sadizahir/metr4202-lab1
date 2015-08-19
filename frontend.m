%Frontend
%
%Front end for Lab 1
%Copy points from point generator and replace existing
%

%copy points from point generator
points=[1, 2, 1; 2, 2, 1; 0, 4, 2; 9, 0, 2; 5, 5, 2; 2, 5, 3; ];
points=sortrows(points, 1);
global mP;
global mA_pos;
global mB_pos;
global mC_pos;

%loop through each point

for o=1:100
for i=1:length(points)
    motor_to_hlu(points(i,1), points(i,2), points(i,3));
    motor_flick;
    %mP = 100;
    %motor_angle_set(0, 0, 0);
    %current_pos = fkine_simpl(mA_pos, mB_pos, mC_pos);
    %motor_to_hlu(desired_pos(1), desired_pos(2), desired_pos(3));
end
end
%motor_angle_set(0, 0, 0);