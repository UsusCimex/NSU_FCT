function [zr]=G(c,s)
    zr = s(2) - c(1)*s(1)^(c(2))*exp(c(3)*s(1))
endfunction

x = [0.2, 0.7, 1.2, 1.7, 2.2, 2.7, 3.2];
y = [2.3198, 2.8569, 3.5999, 4.4357, 5.5781, 6.9459, 8.6621];
plot2d(x, y, -4);

z = [x;y];
c = [0;0;0];
[a, err] = datafit(G, z, c);

xx = [0 : 0.1 : 4]';
yy = xx
for i = 1:41
    yy(i) = a(1)*xx(i)^(a(2))*exp(a(3)*xx(i));
end

plot2d(xx, yy);
