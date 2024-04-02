n = 1e4
eps = 1e-3
x1 = linspace(-10, -sqrt(2)-eps, n)
for i = 1:n
    y1(i) = (2*x1(i)^2-5)/((x1(i)^2-2)^(1/2))
end
plot(x1,y1)

x2 = linspace(sqrt(2)+eps, 10, n)
for i = 1:n
    y2(i) = (2*x2(i)^2-5)/((x2(i)^2-2)^(1/2))
end
plot(x2,y2)
