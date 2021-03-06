%This script is meant to simulate the temperature on a thin rod subject to
%the conditions given in exercise 3 on page 718
clear; %clear saved variables
tic %start time counter
t = 0:0.1:3; %set time matrix
x = (0:0.1:2)'; %set position matrix
u = zeros(length(x), length(t)); %give initial size of u to match x by t
L = 2; %Given
k = 1; %Given
A0 = 2/3;
u = u+A0;
%Using for loop to replace infinite summation.
for n=1:100
    %Using MatLab to calculate the value of An
    S = @(x) ((x.^2)-1).*cos(n*pi*x/L);
    An = integral(S,1,2);
   a = exp(-k*pi*pi*n*n*t/(L*L));
   b = cos(pi*n*x/L);
   u = u + An*a.*b;
end
%3d Plot (x=t)(y=x)(z=u)
figure(1);
mesh(t,x,u)
title('Numerical solution of temperature computed for 3 secs')
xlabel('Time t')
ylabel('Distance x')
zlabel('Temperature u')
%Worth noting: For the following, u(x,:) x = 1+value/step where step is 0.1
%in this case.
%Output 2d plot for Temperature in respect to x for different times
figure(2);
plot(x,u(:,1),x,u(:,6),x,u(:,11),x,u(:,16),x,u(:,21),x,u(:,26),x,u(:,31));
legend('temp at t=0','temp at t=0.5','temp at t=1','temp at t=1.5','temp at t=2','temp at t=2.5','temp at t=3')
xlabel('Distance x');
ylabel('Temperature');
%Output 2d plot for Temperature in respect to t for different positions
figure(3);
plot(t,u(1,:),t,u(4,:),t,u(7,:),t,u(11,:),t,u(14,:),t,u(17,:),t,u(20,:));
legend('temp at x=0','temp at x=0.3','temp at x=0.6','temp at x=1','temp at x=1.3','temp at x=1.6','temp at x=2')
xlabel('Time t');
ylabel('Temperature');
toc %output how long the execution took


