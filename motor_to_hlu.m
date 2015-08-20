function motor_to_hlu(x, y, z, c)
% Convert HLU co-ordinates to real co-ordinates.
cpos = convert(y, x, z, c);

motor_to(cpos(1), cpos(2), cpos(3));