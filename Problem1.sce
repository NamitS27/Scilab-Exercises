clear;
clf;
function [x]=Pulse(St,Et,Value,dt)
        t=St:dt:Et;
        L=length(t);
        x(1:L)=Value;
        x=x';
endfunction
dt=0.01;
St=-1;
Et=2;
Value=2.5;
t=St:dt:Et;
x=Pulse(St,Et,Value,dt);
plot2d3(t,x);
//done
