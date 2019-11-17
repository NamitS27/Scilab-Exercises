// Unit Impuls for continuous time signal

clear;
clf;

function output = unitImp(t,a_d)
    N = length(t);
    output = zeros(1,N);
    for i = 1 : N
        if t(i) == -a_d
            output(i) = 1;
        else
        end   
    end
endfunction

dt = 1/1000;
adv = 1;
t = -10 : dt : 10
y = unitImp(t,adv);

plot(t,y,'r');

xlabel("t","fontsize",2);
ylabel("y1","fontsize",2);
title("Unit Impulse (CT)","fontsize",2);
