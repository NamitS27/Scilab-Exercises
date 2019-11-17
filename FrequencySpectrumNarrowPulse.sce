clear;
clf;
clc;

z = [ones(1,5) zeros(1,95)]
w = [ones(1,50) zeros(1,50)]

Xf = fft(z)
Xf = abs(Xf)
Xf = Xf / length(z)

Xf1 = fft(w)
Xf1 = abs(Xf1)
Xf1 = Xf1 / length(w)

subplot(211)
plot2d3(Xf)

subplot(212)
plot2d3(Xf1)


