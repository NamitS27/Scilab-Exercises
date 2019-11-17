clc;
clear;
clf;
dn = 1;
n = 0 : dn : 10;

x = sin(2*%pi*(1/11)*n);
plot2d3(n, x);
y = sum(x) / 11;
disp(y);
