clear;
clf;
clc;
y1 = ones(1,1000);
y2 = zeros(1,500);
y = [y2 y1 y2]
disp(length(y))
tt = 0 : 1 : length(y)-1
subplot(311)
plot2d3(tt,y)
xgrid(1)

N = length(y)
k = 0 : N-1
fd = k/N
XX = fft(y)
Xf = abs(XX)
r = real(XX);
i = imag(XX);
angle = atan(i./r); 
subplot(312)
plot2d3(fd,Xf)
xgrid(1) 
Xf1 = Xf/N
w = 0 : 2*%pi/(N-1) : 2*%pi
subplot(313)
plot2d3(w,Xf1)
xgrid(1)
