function result = num_inv_kine(x, y, z)
epsilon = 2.5; % tolerance %
i = round(atand(y/x));
for j = 0:180
    for k = 0:180
        result = fkine_simpl(i, j, k);
        if abs(result(1)-x) < epsilon
            if abs(result(2)-y) < epsilon
                 if abs(result(3)-z) < epsilon
                     result = [i;j;k];
                     return
                 end
            end
        end
    end
end
result = [0;0;0];
return;