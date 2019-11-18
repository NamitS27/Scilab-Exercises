clear;
clc;
clf;

A = 4;
alp = 2;
t = 0:1/100:2
f = 1/2
om = 2*%pi*f
x = A*exp(-alp*t).*sin(om*t);
plot(t,x)
