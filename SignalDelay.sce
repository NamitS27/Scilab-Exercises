clc;
clear;
clf;

function output = delay(vec1,pos,del)
    len = length(vec1)
    for i = 1:len
        output($+1) = i-pos+del
    end
endfunction

x = [1,2,3,4,3,2,1]
y = delay(x,4,0)
disp(y)

plot2d3(y,x)
