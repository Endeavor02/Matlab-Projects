syms w
%For R=1 LC=1
R = 0.1;
L = 1;
C = 1;

vo=1j*w*L+1/(1j*w*C);
vi=R+1j*w*L+1/(1j*w*C);

H(w) = vo/vi;
fplot(abs(H(w)));
axis([-20,20,0,1]);