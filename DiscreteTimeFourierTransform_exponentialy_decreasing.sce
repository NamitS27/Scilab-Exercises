clear;
clf;
clc;

N = 256;
n = 0:N-1;
a = 0.5;

x = a**n;
y = fft(x);
r = real(y);
i = imag(y);
angle = atan(i./r);
yabs = abs(y);
w = 0 : 2*%pi/ (N-1) : 2*%pi;
subplot(211);
plot(w,yabs);
title("Magnitude spectrum : a = 0.5", "fontsize", 2);
xlabel("W","fontsize",2);
ylabel("Magnitude","fontsize",2);

subplot(212);
plot(w, angle);
title("Phase spectrum : a = 0.5", "fontsize", 2)
xlabel("W","fontsize",2);
ylabel("Angle","fontsize",2);

