clc;
clear all; 
fs = 100000;
Ts=1/fs;
fNy = fs / 2;
duration = 0.2;
t = 0 : Ts : duration-Ts; 
noSamples = length(t); 
x=10*cos(2*pi*10000*t);
x3 = 100.*sin(2 .* pi .* 500 .* t);
x5 = 100.*sin(2 .* pi .* 1000 .* t);
xn= x + x3+ x5;
f = 0 : fs/noSamples : fs - fs/noSamples;

x_fft = abs(fft(x));
xn_fft = abs(fft(xn));
figure(1);
subplot(2,2,1);
plot(t, x);
subplot(2,2,2);
plot(t, xn);
subplot(2,2,3);
plot(f,x_fft);
xlim([0 fNy]);
subplot(2,2,4);
plot(f,xn_fft);
xlim([0 fNy]);
writematrix(xn,'C:\Users\Batikan\Desktop\soru1\sinyals2.txt')
