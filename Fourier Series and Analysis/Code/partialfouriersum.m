function y = partialfouriersum (A, T, time_grid)
j=1j;
% Compute N based on the length of A
y = zeros(1,length(time_grid));
si = length(A);
N = (si - 1)/2;
for k = -N:N
    y = y + A(N + k + 1)*exp(1j*k*(2*pi/T)*time_grid);
end
end