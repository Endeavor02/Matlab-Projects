syms x n
r(n) = (((((-1)^n)-1)/((n^2)*(pi^2)))*cos(n*pi*x)-(1/(n*pi))*sin(n*pi*x));

g = symsum(r(n),n,1,100);
f = (3/4) + g;

fplot(f);
axis([-3,3,0,2]);