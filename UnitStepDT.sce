// program for unit step function for signals with discrete time
// Exercise 8

clear;

function y = ustep_dis(n,a_d)
    N = length(n);
    y = zeros(1,N);
    for i =1:N
        if n(i) >= -a_d
            y(i) = 1;
        else
        end
    end
endfunction

clf;

dn = 1;
n = -10 : dn : 10;
ad = -1;
y1 = ustep_dis(n,ad);
plot2d3(n,y1,style=[color("magenta")]);
title("Unit Step (DT) ","fontsize",4);
