syms t;
xt = piecewise((t<= 0), -t, (t > 0), t, 0);
N = 50;
F = fourierCoeff(t,xt,1,-0.25,0.25,N);
% plotting
FS_idx = -N:N;

figure; 
stem(FS_idx,F); grid on;
title("Fourier Coefficients of x1(t)");