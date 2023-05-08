syms t;
time_grid = -0.5:0.01:0.5;

T=1;
T1=0.1;
xt = 1;
t1=-1*T1;
t2=T1;
k =1;
for N=[10 50 100 1000]
    F = fourierCoeff(t,xt,T,t1,t2,N);
    yt= partialfouriersum(F,T,time_grid);
    subplot(4,1,k);
    plot(timegrid,yt);
    title("T = "+T+", N = "+N);
    k = k + 1;
    grid on;
end
