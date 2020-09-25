syms y(t)
y(t) = exp(-t/2)*heaviside(t-1);
fplot(y(t))
axis([0 10 0 1])
grid on
