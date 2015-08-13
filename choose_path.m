%Print Path

PointList1=[1, 4, 1; 4, 2, 2; 8, 0, 2; 9, 0, 3; 7, 4, 4; 9, 4, 5; ];
PointList2=[0, 3, 2; 0, 4, 3; 3, 2, 3; 4, 2, 3; 8, 0, 4; 8, 4, 5; ];
PointList3=[1, 0, 1; 0, 2, 1; 2, 0, 2; 6, 3, 3; 7, 3, 5; 9, 4, 5; ];


%%  Display Positions
% Display the Point List
%disp(PointList);
% Make a graph
figure(100+randi(100));
plot(PointList1(:,1)-0.5, PointList1(:,2)-0.5, 'Marker','o','MarkerFaceColor','red', 'LineStyle', 'none')
axis([0.1 LegoMatSize(1) 0.1 LegoMatSize(2)]);
set(gca,'XTick',1:LegoMatSize(1));
set(gca,'YTick',1:LegoMatSize(2));
axis equal;
grid on;
for i=1:NumberOfLocations
    text(PointList1(i,1)-0.33, PointList1(i,2)-0.33, strcat('(',num2str(PointList1(i,3)), ')'));
end


figure(100+randi(100));
plot(PointList2(:,1)-0.5, PointList2(:,2)-0.5, 'Marker','o','MarkerFaceColor','red', 'LineStyle', 'none')
axis([0.1 LegoMatSize(1) 0.1 LegoMatSize(2)]);
set(gca,'XTick',1:LegoMatSize(1));
set(gca,'YTick',1:LegoMatSize(2));
axis equal;
grid on;
for j=1:NumberOfLocations
    text(PointList2(j,1)-0.33, PointList2(j,2)-0.33, strcat('(',num2str(PointList2(j,3)), ')'));
end


figure(100+randi(100));
plot(PointList3(:,1)-0.5, PointList3(:,2)-0.5, 'Marker','o','MarkerFaceColor','red', 'LineStyle', 'none')
axis([0.1 LegoMatSize(1) 0.1 LegoMatSize(2)]);
set(gca,'XTick',1:LegoMatSize(1));
set(gca,'YTick',1:LegoMatSize(2));
axis equal;
grid on;
for k=1:NumberOfLocations
    text(PointList3(k,1)-0.33, PointList3(k,2)-0.33, strcat('(',num2str(PointList3(k,3)), ')'));
end