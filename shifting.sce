clear;
clc;
clf;

function out = delay(sig1,N,n0)
    if n0>0 then
        out = [zeros(1,n0) sig1]
    end
endfunction

signal = [1,2,3,4,5,6]
delayedsig = delay(signal,6,2);
disp(delayedsig);
plot2d3(delayedsig);
