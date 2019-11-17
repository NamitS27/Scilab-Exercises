clc;

function output = fold(vec1)
    x = length(vec1)
    for i=1:x
        output($+1) = vec1(x-i+1)
    end
endfunction


x1 = [6,6,6,6,4,2,1]
y = fold(x1)
disp(y)
