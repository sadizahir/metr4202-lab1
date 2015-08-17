%Converts the given path coordinates into mm 
function coordinates convert(x, y, z)
x_d = 70;
y_d = 160;
z_d = 155;
hlutomm_xy = 32;
hlutomm_z = 20;
x_new = (x*hlutomm_xy) - x_d;
y_new = (y*hlutomm_xy) - y_d;
z_new = (z*hlutomm_z) - z_d;
coordinates(x_new, y_new, z_new);
end