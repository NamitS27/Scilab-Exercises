clear;
clf;
function [x]=Line(m,c,St,Et)
        t=St:1/1000:Et;
        L=length(t);
        x=(m*t)+c;
endfunction
St=-5;
Et=5;
m=2;
c=2;
y=Line(m,c,St,Et);
t=St:1/1000:Et;
plot(t,y);
//done 