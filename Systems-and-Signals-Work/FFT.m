syms t
y = fft(25*rectangularPulse((t+10^(-2))/(10^(-2))));
fplot(y);