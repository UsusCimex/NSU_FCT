n = 5;
T0 = 0.92;
K = 0.652;
Ti = 6.666;

s=poly(0,'s');
W1=2*(1+1/(Ti*s))*K*(1/(1+T0*s)^n);
W=W1/(1+W1);
disp("W: ", W);

h=0.1;
sys = syslin('c', W);
sysd=dscr(sys,h);
A = sysd.A;
disp('A: ', A);

I=eye(A);
H=lyap(A,-I,'d');
disp('H:', H);

l=spec(H);
disp('Собственные числа H:', l);
disp('kappa:', norm(H, 2));
