syms w

f(w) = (10^(-3))*exp(1j*w*10^(-2))*(250*sinc(w*(10^(-2))/2)-100*sinc(w*(20*10^(-3))/2));

%fplot(abs(f(w)));
fplot(w,angle(f(w)));
%axis([-20*10^3,20*10^3,-200,200]);
