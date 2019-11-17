// CT Non - linear distortion
// Exercise 10 
clear;
clf;

dt = 1/10000;
t = 0 : dt : 1;

x = sin(2*%pi*1*t);
subplot(311);
plot(t,x,'r');
title("X(t) : any sine function","fontsize",3)


a = 2;
b = 3;
y = a.*x + b.*x.*x;
subplot(312);
plot(t,y,'m');
title("y(t) : a*x + b*x*x","fontsize",3)

a = 4;
b = 5;
y = a.*x + b.*x.*x;
subplot(313);
plot(t,y,'g');
title("y(t) : a*x + b*x*x","fontsize",3)

