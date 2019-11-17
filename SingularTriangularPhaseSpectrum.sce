clear;
clc;
clf;

t1 = 0:1/100:1
y1 = t1

t2 = 1+(1/100):1/100:3
y2 = 2-t2

t3 = 3+(1/100):1/100:4
y3 = t3-4

x = zeros(1,1024)
y = [y1 y2 y3 x]
disp(length(y))
t = 0:1/100:(length(y)-1)/100
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
