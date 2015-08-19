%Converts the given path coordinates into mm 
function coordinates = convert(x, y, z)
x_d = 85;
y_d = 163;
z_d = 158-10;
hlutomm_xy = 31.5;
hlutomm_z = 18.5;
x_new = (x*hlutomm_xy) + x_d;
y_new = (y*hlutomm_xy) - y_d;
z_new = (z*hlutomm_z) - z_d;
coordinates = [x_new, y_new, z_new];
end