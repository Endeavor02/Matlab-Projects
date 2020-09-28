syms y(t)
a = [-5,5];
y(t) = piecewise(t<-1,0,-1<t<0, -1, 0<t<2, (1/2)*t, t>2, 0);
fplot(y(t),a)
x = y(-(1/2)*t)+3; 
fplot(x,a);
grid on;