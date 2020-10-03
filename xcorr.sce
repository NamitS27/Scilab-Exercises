clear;
clf;
clc;

//This code is an example for useage of XCORR function (correlation)

x = [1 2 3];
disp(x,"This is x :");

y = [6 4 5 8];
disp(y, "This is y :");

[z  l1]= xcorr(x,y);
disp(z, "This is w = xcorr(x,y) :");

disp(l1,"Log index of z");

[w l2]= xcorr(y,x);
disp(w,"This is w = xcorr(y,x) : ");
disp(l2,"Log index of w");