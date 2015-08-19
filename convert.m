%Converts the given path coordinates into mm 
function coordinates = convert(x, y, z)
x_d = 65+45;
y_d = 165;
z_d = 155-15;
hlutomm_xy = 32;
hlutomm_z = 18.5;
x_new = (x*hlutomm_xy) + x_d;
y_new = (y*hlutomm_xy) - y_d;
z_new = (z*hlutomm_z) - z_d;
coordinates = [x_new, y_new, z_new];
end