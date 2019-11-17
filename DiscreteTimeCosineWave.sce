// program to calculate & plot the discrete cosine wave
// Exercise 2

clear;
clf;

A = 1;
k = 1;
N = 10;
theta = %pi/4;

dn = 1;
n = -20 : dn : 20;
x = A*cos(2*%pi*n*(k./N) + theta);

subplot(311);
plot2d3(n,x,style=[color("magenta")]);
xlabel("n","fontsize",4);
ylabel("x","fontsize",4);
title("Discrete Time Cosine Wave ( k=1,N=10)","fontsize",4);

k = 2;
N = 20;
y = A*cos(2*%pi*n*(k./N) + theta);

subplot(312);
plot2d3(n,y,style=[color("red")]);
xlabel("n","fontsize",4);
ylabel("x","fontsize",4);
title("Discrete Time Cosine Wave ( k=2,N=20)","fontsize",4);

k = 2;
N = 21;
y = A*cos(2*%pi*n*(k./N) + theta);

subplot(313);
plot2d3(n,y,style=[color("blue")]);
xlabel("n","fontsize",4);
ylabel("x","fontsize",4);
title("Discrete Time Cosine Wave ( k=2,N=21)","fontsize",4);


