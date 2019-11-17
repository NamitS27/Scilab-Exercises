
 clc;  
x = [1 2 3 ]; 
y = [6 4 5 8 ];  
[z,IZ] = xcorr(x,y); 
disp(x,"This is x");  
disp(y,"This is y"); 
disp(z, " This is z=cor(x,y)");  
disp("Lag index of z follows") 
disp(IZ);  
[w, IW] = xcorr(y,x); 
disp(w, "This is w =corr(y,x)"); 
disp("Lag index of W follows")  
disp(IW); 
