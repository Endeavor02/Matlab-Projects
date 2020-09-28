syms t
f(t) = heaviside(-t+20)*(25*rectangularPulse(5,15,t)-5);
fplot(f(t));
axis([0,21,-10,20]);