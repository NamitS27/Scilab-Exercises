clear;
clf;
r = rand(1, 100) - 0.5;
subplot(211);
plot(r);
subplot(212);
c = ffilt("lp", 21, 0.1);
y = filter(c, 1, r);
plot(y);