%This script is meant to simulate the temperature on a thin rod subject to
%the conditions given in exercise 3 on page 718
clear all
t = 0:0.1:3;
x = (0:0.1:2)';
u = zeros(length(x), length(t));
L = 2;
k = 1;
A0 = 5/3;
%Solution is:
%u(x,t)=(1/L)integral of 0 to L of f(x) dx + Infinite Summation from n=1 to
%infinity of (2/L)integral of 0 to L of f(x)*cos(n*pi*x/L)dx *
%e^[k*(pi^2)*(n^2)*t/(L^2)]*cos(n*pi*x/L)
for n=1:100
   An = (2/(n*pi))*((2*(-1)^n)+(2/(n*pi))*sin(pi*n/2)-cos(n*pi/2));
   a = exp(-k*pi*pi*n*n*t/(L*L));
   b = cos(pi*n*x/L);
   u = u + An*a.*b;
end
figure(1)
mesh(t,x,u)
title('Numerical solution of temperature computed for 3 secs')
xlabel('Time t')
ylabel('Distance x')
zlabel('Temperature u')
