syms w
Ts = 25*10^-3;
ws = 2*pi/Ts;
F(w) = (1-abs(w/100))*(1/Ts)*rectangularPulse(-150,150,w);
fplot(F(w)+F(w-ws)+F(w+ws)+F(w-2*ws)+F(w+2*ws)+F(w-3*ws)+F(w+3*ws)+F(w-4*ws)+F(w+4*ws)+F(w-5*ws)+F(w+5*ws)+F(w-6*ws)+F(w+6*ws)+F(w-7*ws)+F(w+7*ws)+F(w-8*ws)+F(w+8*ws)+F(w-9*ws)+F(w+9*ws)+F(w-10*ws)+F(w+10*ws)+F(w-11*ws)+F(w+11*ws)+F(w-12*ws)+F(w+12*ws)+F(w-13*ws)+F(w+13*ws));
axis([-500*pi,500*pi,0,1/Ts]);