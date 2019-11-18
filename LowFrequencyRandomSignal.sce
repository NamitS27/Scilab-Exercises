clear;  clf;  clc ; 
r = -0.5 + rand(1:100); 
disp(r) 
c = ffilt("lp",21,0.1);   
y = filter(c,1,r);  
subplot(211);  
plot(r);  
subplot(212);  
plot(y); 
