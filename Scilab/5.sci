n = 100
u = linspace(0, 2 * %pi, n)
v = linspace(0, 4 * %pi, n)

for i = 1:n
    for j = 1:n
        X(i, j) = cos(u(i)) * u(i) * (1 + cos(v(j)/2))
        Y(i, j) = u(i) / 2 * sin(v(j))
        Z(i, j) = sin(u(i)) * u(i) * (1 + cos(v(j)/2))
    end
end
plot3d2(X,Y,Z)
