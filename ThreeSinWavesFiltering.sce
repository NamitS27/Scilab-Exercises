clear;
clc;
clf;

f1 = 100;
fs = 5000;

t = 0 : 1/fs : 0.05;

x1 = sin(2*%pi*f1*t);
x2 = sin(2*%pi*5*f1*t);
x3 = sin(2*%pi*10*f1*t);

x = x1 + x2 + x3;

coeff = ffilt("lp",100,0.05);
[mag,fr] = frmag(coeff,1,100);
filtered_x = filter(coeff,1,x);

subplot(311);
plot(fr, mag);

subplot(312);
plot(t, x);

subplot(313);
plot(t, filtered_x);