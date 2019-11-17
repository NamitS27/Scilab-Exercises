clear;
clc;
clf;
y = ones(1,5000)
z = zeros(1,2000)
x = [z y z]
mags = fft(x)
mags = abs(mags)
mags = mags/length(x)
plot(mags)
