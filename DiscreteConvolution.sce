
clear; clf; clc;  
Nx = -2; 
Ny = -1  
x = [1 1 1 1 1 1 ]; 
y = [1 1 1 1];
z = conv(x,y);  
N3 = length(z); 
N4 = Nx+Ny;  
n = N4:N4+N3-1;  
disp(z,n);  
plot2d3(n,z); 
