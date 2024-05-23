n = 5;
T0 = 0.92;
K = 0.44;
Ti = 4;
Tb = 0;
h = 0.01;

S = poly(0, 's');
W1=2*(1 + 1/(Ti*S)) * K * ((1-Tb*S + (Tb*S)^2/2 - (Tb*S)^3/6)/(1+T0*S)^n);
W=W1/(1+W1);

sl = syslin('c', W);
dMat = dscr(sl, h);
t = [0:h:40-h];
v = zeros(dMat.B);
u = ones(t);
x = zeros(u);

for i=1:length(u)
	v = dMat.A * v + dMat.B;
	x(i) = dMat.C * v + dMat.D;
end
plot(t, x,'blue');

data = fscanfMat("./pi.TNO");
plot(data(:, 1), data(:, 2), 'red');
y = data(:,2);

disp(length(y));
disp(length(x));

len = length(t);
err=0;
for l = 1:len
    err = err + (x(l)-y(l))^2;
end

err = sqrt(err/len);
disp(err);

