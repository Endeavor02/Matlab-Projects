syms t
a = [-1,3];
f(t) = heaviside(t)-heaviside(t-2);
fplot(f(t),a);