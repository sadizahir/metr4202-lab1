%Determining path
%Workspace: [10 6 5]
%Coordinate: [x y z]
%Translate into mm - whats the translatation?
%HluToMm = [32 32 20]

LegoMatSize = [10 6 5];
NumberOfLocations = 6;

MapGrid=zeros(LegoMatSize(2),LegoMatSize(1));
PointList=[1, 4, 1; 4, 2, 2; 8, 0, 2; 9, 0, 3; 7, 4, 4; 9, 4, 5; ];
SortedPoints=zeros(NumberOfLocations, 3);
Scalars=zeros(NumberOfLocations,2);

for i=1:NumberOfLocations
    Scalars(i,1) = sqrt(PointList(i,1)^2 + PointList(i,2)^2 + PointList(i,3)^2);
    Scalars(i,2) = i;
end
ScalarsNew = sortrows(Scalars);
for j=1:NumberOfLocations
    SortedPoints(j,:) = PointList((ScalarsNew(j,2)),:);
end    

Scalars
ScalarsNew

SortedPoints
PointList

%%  Display Positions
% Display the Point List
%disp(PointList);
% Make a graph
figure(100+randi(100));
plot(PointList(:,1)-0.5, PointList(:,2)-0.5, 'Marker','o','MarkerFaceColor','red', 'LineStyle', 'none')
axis([0.1 LegoMatSize(1) 0.1 LegoMatSize(2)]);
set(gca,'XTick',1:LegoMatSize(1));
set(gca,'YTick',1:LegoMatSize(2));
axis equal;
grid on;
for ii=1:NumberOfLocations
    text(PointList(ii,1)-0.33, PointList(ii,2)-0.33, strcat('(',num2str(PointList(ii,3)), ')'));
end


