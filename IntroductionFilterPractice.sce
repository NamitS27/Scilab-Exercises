clear; clf; clc;

coeff = ffilt("lp", 100, 0.05);
subplot(211);
plot(coeff);

[mag, fr] = frmag(coeff, 1, 100);
subplot(212);
plot(fr, mag);
