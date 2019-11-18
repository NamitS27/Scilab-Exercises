clear; clf; clc;

dn = 1;
n = 0 : dn : 99;
Ns = length(n);
k = 0 : Ns-1
fd = k / Ns

coeff_num = ffilt("lp", Ns, 0.1);
coeff_den = 1;
[filt_mag, fr] = frmag(coeff_num, coeff_den, 100);

dw = 1/100
w = 0 : dw : 2*%pi

GainFunc = zeros(1,length(w))

for j = 1:Ns
    GainFunc = GainFunc + coeff_num(j)*exp(-1*%i*j*w)
end

real_Gain = real(GainFunc)
imag_Gain = imag(GainFunc)

Mag_Gain = abs(GainFunc)

subplot(321);
plot(fd, filt_mag);

subplot(322);
plot(fd, fr);

subplot(323);
plot(Mag_Gain);

subplot(324);
angle = atan(imag_Gain./real_Gain)
plot(angle)

unwrapped_angle = unwrap(angle,%pi)
subplot(325)
plot(unwrapped_angle)