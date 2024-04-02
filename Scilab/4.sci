n = 1000
phi = linspace(0, 2*%pi, n)
for i = 1:n
    rho(i) = 2^(phi(i))+1
end
polarplot(phi, rho)
