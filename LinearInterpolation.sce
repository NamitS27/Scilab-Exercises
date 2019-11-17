clc;

function out = linInterpolate(vec1,L)
    N = length(vec1)
    vec1 = [vec1 0]
    out = []
    for i=1:N
        y = linspace(vec1(i),vec1(i+1),L+2)
        out = [out(1:length(out)-1) y]
    end
endfunction

x = [1,2,5,-1]
output = linInterpolate(x,2)
disp(output)
