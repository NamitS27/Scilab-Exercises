clear; 
clf;
clc;

dt = 1/10000;
f1 = 300;
f2 = 500;

t = 0 : dt : 0.01;

x1 = cos(2*%pi*f1*t);
x2 = cos(2*%pi*f2*t);


y = x1.*x2;

N = length(y);
n = 0 : N - 1;
k = 0 : N - 1;

Yf = fft(y);
Yf1 = abs(Yf);
Yf2 = Yf1/N;

disp(x1);
// plot(t, x2);
plot2d3(k/N, Yf2);
