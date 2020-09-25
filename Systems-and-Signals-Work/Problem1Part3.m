syms t
x = 4*t*sin(t);
y = 8/pi;
z = heaviside(t-4)*4*(t-4)*sin(t);
f(t) = @(t) piecewise(t<2, 0, (2<t)&&(t<3), x, (3<t)&&(4<t),y, (4<t)&&(t<5), z);