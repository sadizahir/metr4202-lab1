%
function Rx = rotx(theta)
    Rx = [1 0 0 0; 0 cos(theta) -sin(theta) 0; 0 sin(theta) cos(theta) 0; 0 0 0 1]
end

function Ry = roty(theta)

    Ry = [cos(theta) 0 sin(theta) 0; 0 1 0 0 ; -sin(theta) 0 cos(theta) 0; 0 0 0 1]
end

function Rz = rotz(theta)

    Rz = [cos(theta) -sin(theta) 0 0; sin(theta) cos(theta) 0 0; 0 0 1 0; 0 0 0 1]
end

function tran = trans(u, v, w)
    tran = [1 0 0 u; 0 1 0 v; 0 0 1 w; 0 0 0 1]
end

