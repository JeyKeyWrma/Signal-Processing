function F = fourierCoeff(t,xt,T,t1,t2,N)
% function to find FS coefficients
% initialize
F = zeros(2*N+1,1);
% for-loop to find coefficents
for nn = 1:2*N+1
j = 1j;
expr = xt*exp(-j*(nn - (N + 1))*(2*pi/T)*t);
F(nn) = (1/T)*int(expr, t, [t1 t2]);
end
end