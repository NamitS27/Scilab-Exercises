
clear;
clf;
dn = 1;
n = 0 : dn : 10;

fd1 = 0;
fd2 = 0.3;
fd3 = 0.5;
fd4 = 0.8;
fd5 = 1;
fd6 = 1.3;

x1 = cos(2*%pi*fd1*n);
subplot(6,1,1);
plot2d3(n, x1);;
plot(n, x1);

x2 = cos(2*%pi*fd2*n);
subplot(6,1,2);
plot2d3(n, x2);
plot(n, x2);

x3 = cos(2*%pi*fd3*n);
subplot(6,1,3);
plot2d3(n, x3);
plot(n, x3);

x4 = cos(2*%pi*fd4*n);
subplot(6,1,4);
plot2d3(n, x4);
plot(n, x4);

x5 = cos(2*%pi*fd5*n);
subplot(6,1,5);
plot2d3(n, x5);
plot(n, x5);

x6 = cos(2*%pi*fd6*n);
subplot(6,1,6);
plot2d3(n, x6);
plot(n, x6);
