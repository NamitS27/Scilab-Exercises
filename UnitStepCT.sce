// program for unit step function
// Exercise 7

clear;

function y = ustep(t,a_d)   // ad is for advance and delay
    N = length(t);
    y = zeros(1,N);
    for i =1:N
        if t(i) >= -a_d
            y(i) = 1;
        else
        end
    end
endfunction

clf;

dt = 0.01;
t = -5 : dt : 5;
ad = 1
y1 = ustep(t,ad);
plot(t,y1);
title("Unit Step (CT) ","fontsize",4)
