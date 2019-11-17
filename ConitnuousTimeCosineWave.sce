//  program to generate & plot a continuous time cosine wave
// Exercise 1

clear;
clf;

// clear previous graph and plots
dt = 1/1000;
t = -1:dt:1;
A =1;
f=1;
Theta = %pi/4;
x = A*cos(2*%pi*f*t + Theta);


plot(t,x,'m');
xlabel("t","fontsize",4);
ylabel("x","fontsize",4);
title("Continuous Time Cosine Wave","fontsize",4);
