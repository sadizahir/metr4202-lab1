%Frontend
%
%Front end for Lab 1
%Copy points from point generator and replace existing
%

%copy points from point generator
points=[5, 1, 1; 3, 1, 2; 3, 4, 4; 2, 8, 1];

global mP;

%loop through each point
for i=1:length(points)
    motor_to_hlu(points(i,1), points(i,2), points(i,3));
    motor_flick;
    mP = 100;
    motor_angle_set(0, 0, 0);
    mP = 70;
end
