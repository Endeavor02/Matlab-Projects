syms t
%x(t) = heaviside(-t+20*10^(-3));
%y(t)=((25*rectangularPulse(5*10^(-3),15*10^(-3),t))-5);
%f(t) = x(t)*y(t);
%fplot(f(t));
%axis([0,20*10^(-3),-5,25]);
f(t) = 25*rectangularPulse(5*10^(-3),15*10^(-3),t);
fplot(f(t));
axis([0,21*10^(-3),-5,25]);