// *******************************************
// Program to plot an advanced and delayed continuous signal
// *******************************************


clear;
clf;

A = 1;
f = 100;
T = 1 / f;
N = 1 / 2;
sampling_f = f * 100;
signal_t = 0 : 1 / sampling_f : N * T;
x_signal = A * sin(2 * %pi * f * signal_t)

total_t = -3 * T : 1 / sampling_f : 3 * T;
delay = 0 : 1 / sampling_f : N * T;
total_len = length(total_t);
signal_len = length(signal_t);
initial_zeros_len = total_len / 2;
final_zeros_len = total_len - initial_zeros_len - signal_len;
delay_len = length(delay);

normal = [zeros(1, initial_zeros_len)  x_signal  zeros(1, final_zeros_len)]
delay = [zeros(1, initial_zeros_len + delay_len)  x_signal  zeros(1, final_zeros_len - delay_len)]
advance = [zeros(1, initial_zeros_len - delay_len)  x_signal  zeros(1, final_zeros_len + delay_len)]

subplot(3 , 1, 1);
plot(total_t, normal);
xgrid(4);
xlabel("t", "fontsize", 5);
ylabel("x(t)", "fontsize", 5);
title("Normal Wave", "fontsize", 5);

subplot(3 , 1, 2);
plot(total_t, delay);
xgrid(4);
xlabel("t", "fontsize", 5);
ylabel("x(t + td)", "fontsize", 5);
title("Delayed Wave", "fontsize", 5);

subplot(3 , 1, 3);
plot(total_t, advance);
xgrid(4);
xlabel("t", "fontsize", 5);
ylabel("x(t - td)", "fontsize", 5);
title("Advanced Wave", "fontsize", 5);
