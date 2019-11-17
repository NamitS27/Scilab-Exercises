clc;  
x = [1 2 3]; 
y = [6 4 5 8]; 
z = xcorr(x,y);  
disp(x);  
disp(y);  
disp(z);  
w = xcorr(y,x);  
disp(w); 
