%Frontend
%
%Front end for Lab 1
%Copy points from point generator and replace existing
%

%copy points from point generator
points=[1, 4, 1; 2, 4, 1; 6, 2, 1; 7, 2, 2; 6, 5, 3; 9, 4, 5; ];

%initialise cuurent_coord matrix
current_coord = zeros(6,3);

%loop through each point
for i=1:length(points)
    %convert point from HLU to mm (NB X and Y are flipped)
    current_coord(i,:) = convert(points(i,2),points(i,1),points(i,3))
    
    %move motor
    motor_to(current_coord(i,1), current_coord(i,2), current_coord(i,3))
end
