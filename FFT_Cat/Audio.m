clc;
close all;
clear all;

[y,fs]= audioread("cat-meow-14536.mp3");

%Time domain%
t = linspace(0,length(y)/fs,length(y));
figure;
plot(t,y);
title('time domain')
xlabel('time')
ylabel('Amplitude')

%Frecuency Domain%
nfft = 1024;
f = linspace(0,fs,nfft);
Y = abs(fft(y,nfft));
figure;
plot(f(1:nfft/2),Y(1:nfft/2));
title('freq Domain')
xlabel('freq')
ylabel('abs')