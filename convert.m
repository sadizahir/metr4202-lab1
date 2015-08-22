% Converts the given path coordinates into mm, using conversion offsets
% specified in the matrix c.
function coordinates = convert(x, y, z, c)
x_d = c(1);
y_d = c(2);
z_d = c(3);

hlutomm_xy = 31.5;
hlutomm_z = 18.5;
x_new = (x*hlutomm_xy) + x_d;
y_new = (y*hlutomm_xy) - y_d;
z_new = (z*hlutomm_z) - z_d;
coordinates = [x_new, y_new, z_new];
end