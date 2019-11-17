clear;
clc;
clf;

n = -30:1:30
x = 2*sin(2*%pi*(5/20)*n) + sin(2*%pi*(1/8)*n) + sin(2*%pi*(2/16)*n)  // period is LCM of N1,N2,N3
plot2d3(n,x)
