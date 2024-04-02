t = [0 : 0.1 : 5*%pi]';
x = [sin(t), cos(t)];
y = [sin(2*t), cos(2*t)];
z = [t/5, sin(t)];
param3d1(x, y, list(z, [9,5]), 35, 45, "X@Y@Z");
