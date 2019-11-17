clear;
clc;
clf;

A = 4;
alp = 2;
t = 0:1/100:2
om = 2*%pi*0.5
x = A*exp(-alp*t).*sin(om*t);
plot(t,x)
