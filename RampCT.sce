// program to plot the unit step function for the given advance /  delay (Continuous Signal)
// Exercise 3

clear;

function y = ramp(t,a_d,m)   // m is the slope of the ramp & a_d(+ve : advance / -ve : delay)
    N = length(t);   // calculates length of the time vector
    y = zeros(1,N);  // assign zeros to the vector y of length equal to length of time vector
    for i =1:N
        if t(i) >= -a_d
            y(i) = m*(t(i) + a_d);
        else
        end
    end
endfunction

clf;

dt = 0.01;
t = -5 : dt : 5;

ad = 1;   
amp = 3;

y1 = ramp(t,ad,amp);

plot(t,y1,'m');
xlabel("t","fontsize",4);
ylabel("y1","fontsize",4);
title("Ramp Function (For Continuous Signal)","fontsize",4)
