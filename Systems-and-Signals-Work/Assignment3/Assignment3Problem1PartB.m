syms t
a = (4/pi)*sin(pi*t);
b = -(4/(2*pi))*sin(2*pi*t);
c = (4/(3*pi))*sin(3*pi*t);
d = -(4/(4*pi))*sin(4*pi*t);
e = (4/(5*pi))*sin(5*pi*t);
f = -(4/(6*pi))*sin(6*pi*t);
g = (4/(7*pi))*sin(7*pi*t);
h = -(4/(8*pi))*sin(8*2*pi*t);
i = (4/(9*pi))*sin(9*pi*t);
j = -(4/(10*pi))*sin(10*pi*t);

f(t) = a+b+c+d+e+f+g+h+i+j;

fplot(f(t));
axis([0,5,-2,2]);



