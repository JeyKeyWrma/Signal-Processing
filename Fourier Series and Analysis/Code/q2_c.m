time_grid = -0.5:0.01:0.5;
syms t;
xt = 2*cos(2*pi*t)+cos(6*pi*t); % sum of cosines wave
% function call to find FS coefficients
xtimegrid = 2*cos(2*pi*time_grid)+cos(6*pi*time_grid);
F = fourierCoeff(t,xt,1,0,1,5);

y = partialfouriersum (F, 1, time_grid);

%-------------------MAE--------------------------
    figure;                                     %|
    plot(time_grid, abs(xtimegrid - y), 'blue');%|
    title("MAE is " +(max(abs(xtimegrid - y))));%|
%------------------------------------------------

%-------------RMSE-------------
    disp(rms(xtimegrid - y)); %|
%------------------------------