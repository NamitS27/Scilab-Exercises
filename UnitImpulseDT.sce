// Exercise - 9  : Unit Impulse Function for signals with discrete time

clear;
clf;
function y = unitImp_dis(n,adv)    //adv is used to adv or delay the function
    N = length(n);
    y = zeros(1,N);
    for i = 1 : N
        if n(i)==-adv
            y(i) = 1;
        else
        end   
    end
endfunction

dn = 1;
adv = 1;
n = -5 : dn : 5
y = unitImp_dis(n,adv);

plot2d3(n,y,style=[color("red")]);

xlabel("n","fontsize",2);
ylabel("y1","fontsize",2);
title("Unit Impulse (DT)","fontsize",2);

