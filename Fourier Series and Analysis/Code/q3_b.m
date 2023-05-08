syms t;

T=1;
T1=0.1;
N = 10*T;
 
xt=1;
t1=-1*T1;
t2=T1;
F = fourierCoeff(t,xt,T,t1,t2,N);
    
FS_idx = -N:N;
figure; 
subplot(3,1,1);
stem(FS_idx,T*F); 
title("T = "+T+", N = "+N+" fourier coeffecients");
grid on;

for k = 1:2
    T=10*k;
    T1=0.1;
    N = 10*T;
    
    xt=1;
    t1=-1*T1;
    t2=T1;
    F = fourierCoeff(t,xt,T,t1,t2,N);
    
    FS_idx = -N:N;
    subplot(3,1,k+1);
    stem(FS_idx,T*F); 
    title("T = "+T+", N = "+N+" fourier coeffecients");
    grid on;
end