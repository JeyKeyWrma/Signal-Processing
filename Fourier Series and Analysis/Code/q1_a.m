% define relevant expressions
syms t;
xt = 2*cos(2*pi*t)+cos(6*pi*t); % sum of cosines wave
% function call to find FS coefficients
N = 5;
F = fourierCoeff(t,xt,1,0,1,N);
% plotting
FS_idx = -5:5;
figure; stem(FS_idx,F); grid on;