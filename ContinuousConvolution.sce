clear; clf; clc;  
Sx = -0.5; 
Ex = 0.5;  
dt = 0.01;  
Sy = -1; 
Ey = 1;  
tx = Sx:dt:Ex;  
ty = Sy:dt:Ey;  
Nx = length(tx);  
Ny = length(ty); 
x = ones(1,Nx);  
y = ones(1,Ny);  
disp(x,y)
z = dt*conv(x,y);  
Nz = length(z);  
Sz = Sx+Sy;  
Ez = Ex+Ey;  
tz = Sz:dt:Ez;  
plot(tz,z); 
