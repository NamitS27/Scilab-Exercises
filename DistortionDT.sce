// Program for the distortion in discrete signal
// Exercise  6

clear;
clf;

dn = 1;
n = -10 : dn : 10;

k = 1;
N = 3;
x1 = sin(2*%pi*(k./N)*n);
subplot(231)
plot2d3(n,x1,style=[color("magenta")]);
title("x1 vs time","fontsize",3)


k = 1;
N = 6;
x2 = sin(2*%pi*(k/.N)*n);
subplot(232)
plot2d3(n,x2,style=[color("magenta")])
title("x2 vs time","fontsize",3)


//  x is the input signal
x = x1 + x2;
subplot(233)
plot2d3(n,x,style=[color("green")])
title("x vs time","fontsize",3)


A1 = 2;
A2 = 2;
n1 = 1;
n2 = 1;
c = A1*sin(2*%pi*(1/3)*(n-n1)) +A2*sin(2*%pi*(1/4)*(n-n2)) ;
subplot(234)
plot2d3(n,c,style=[color("red")])
title("y vs time (No distortion)","fontsize",3)

n1 = 1;
n2 = 2;
A1 = 2;
A2 = 2;
d = A1*sin(2*%pi*(1/3)*(n-n1))+A2*sin(2*%pi*(1/4)*(n-n2));
subplot(235)
plot2d3(n,d,style=[color("red")])
title("y vs time (time distortion)","fontsize",3)

A1 = 2;
A2 = 4;
n1 = 1;
n2 = 1;
e = A1*sin(2*%pi*(1/3)*(n-n1))+A2*sin(2*%pi*(1/4)*(n-n2));
subplot(236)
plot2d3(n,e,style=[color("green")])
title("y vs time (amplitude distortion)","fontsize",3)














