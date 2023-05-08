syms t;
xt = t;
N = 50;
F = fourierCoeff(t,xt,1,-0.25,0.25,N);
% plotting
FS_idx = -N:N;

figure; 
stem(FS_idx,imag(F)); grid on;
title("Fourier Coefficients of x2(t)");