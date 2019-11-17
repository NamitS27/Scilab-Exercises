clear; clf; clc;  
t = 0:0.01:10;  
x1 = sin(2*%pi*1*t);  
x2 = zeros(1:600);  
x = [x1 x2];   
y1 = sin(2*%pi*1*t);  
y2 = zeros(1:300);  
y = [y2 y1 ];  
[z, I] = xcorr(x,y); 
subplot(311); 
plot(x);  
title("Delay measurement","fontsize",4)
ylabel("x","fontsize",4)
subplot(312);  
plot(y); 
ylabel("y","fontsize",4) 
subplot(313); 
plot(I,z); 
ylabel("z","fontsize",4) 
xlabel("Lagindex")  
