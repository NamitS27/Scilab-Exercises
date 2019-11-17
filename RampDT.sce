// program for the ramp function for discrete signal
// Exercise 4

clear;

function y = ramp_dis(n,a_d,m)  // m is the slope    &     a_d (if +ve : advance / -ve : delay)
    N = length(n);  // length of the discrete time vector
    y = zeros(1,N);
    for i =1:N
        if n(i) >= -a_d
            y(i) = m*(n(i) + a_d);
        else
        end
    end
endfunction

clf;

dn = 1;
n = -20 : dn : 20;

ad = -1;
amp = 3;
y1 = ramp_dis(n,ad,amp);

plot2d3(n,y1,style=[color("magenta")]);
xlabel("n","fontsize",4);
ylabel("y1","fontsize",4);
title("Ramp Function (Discrete Signal) ","fontsize",4)
