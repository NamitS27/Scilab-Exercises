clear;
clc;
clf;

dt = 1/100
t1 = 0:dt:1
y1 = t1

t2 = 1+dt:dt:3
y2 = 2-t2

t3 = 3+dt:dt:4
y3 = t3-4

x = zeros(1,1024)
y = [y1 y2 y3 x]
disp(length(y))
t = 0:dt:(length(y)-1)/100
disp(length(t))
subplot(211)
plot(t,y)

N = length(y)
n = 0:N-1
k = 0:N-1
fd = k/N
mag = abs(fft(y))
mag1 = mag/N
subplot(212)
plot2d3(k(1:10),mag1(1:10))
