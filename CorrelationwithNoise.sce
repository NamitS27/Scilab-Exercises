clear; clf; clc;  
t = 0:0.01:10  
x1 = sin(2*%pi*1*t);  
x2 = zeros(1:600);  
x = [x1 x2]; 
y1 = sin(2*%pi*1*t);  
y2 = zeros(1:300);  
y = [y2 y1 ];  
n = -4+8*rand(1:1301);  
y3 = y+n; 
[z, I] = xcorr(x,y3); 
subplot(411) ; 
plot(x); 
subplot(412);  
plot(y); 
subplot(413); 
plot(y3);  
subplot(414);  
plot(I,z); 
