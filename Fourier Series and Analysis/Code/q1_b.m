syms t;
xt = piecewise((t >= -0.25 & t <= 0.25), 1, 0);
N = 10;
F = fourierCoeff(t,xt,1,-0.5,0.5,N);
% plotting
FS_idx = -N:N;
figure; stem(FS_idx,F); grid on;