
Samplfreq = 40000;
% Plots the frequency response of H(z)using parametric evaluation
T=1/Samplfreq;
% sample interval
omega=0:0.001:pi;
% wT goes from 0 to pi
w=omega./T;                         
% radian frequency (x-axis)
z=exp(1j.*omega);                    
% z goes along the unit circle
g=(2.*z)/(z-1)+(((z.^2)-0.25)./((z.^2)-(0.5.*z)+(0.25)));      
% This is the function H(z)
subplot(2,1,1);
semilogx(w,20*log10(abs(g)));       
%Mag in dB
grid;
title('H(z) Magnitude (dB)');
subplot(2,1,2);
semilogx(w,angle(g).*180./pi);      
% Phase in degrees
grid;
title ('H(z) Phase (deg)');