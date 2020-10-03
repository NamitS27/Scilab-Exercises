
clear;
clc;
clf;
f = 100;
T = 1/f;
t = 0 : 1/5000 : 10*T;
x = sin(2*%pi*f*t) + sin(10*%pi*f*t)
c = ffilt("lp",100,0.05);
disp(c);
[hm,fr] = frmag(c,1,100);
y = filter(c,1,x);
subplot(311);
plot(fr,hm);
subplot(312);
plot(t,x);
subplot(313);
plot(t,y);

