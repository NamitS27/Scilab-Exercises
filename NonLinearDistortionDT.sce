// DT Non - linear distortion
// Exercise 11

clear;
clf;

dn = 1;
n = -30 : dn : 30;

k = 1;
N = 10;
x = sin(2*%pi*(k./N)*n);
subplot(311);
plot2d3(n,x,style=[color("red")]);
title("X(t) : any sine function","fontsize",3)


a = 2;
b = 3;
y = a.*x + b.*x.*x;
subplot(312);
plot2d3(n,y,style=[color("magenta")]);
title("y(t) : a*x + b*x*x","fontsize",3)

a = 4;
b = 5;
y = a.*x + b.*x.*x;
subplot(313);
plot2d3(n,y,style=[color("blue")]);
title("y(t) : a*x + b*x*x","fontsize",3)
