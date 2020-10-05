// *************************
// Function to add two vectors
// *************************


clear;
clf;

function [x, y] = equalize(x, y)
    dif = length(x) - length(y);
    abs_dif = abs(dif);

    if dif < 0 then
        x = [x zeros(1, abs_dif)];
    elseif dif > 0 then
        y = [y zeros(1, abs_dif)];
    else
    end
endfunction

function [z] = add(x, y)
    [x, y] = equalize(x, y);
    z = x + y;
endfunction

size_x = input("Enter the size of x: ");
for i = 1 : size_x
    x(i) = input("_");
end
size_y = input("Enter the size of y: ");
for i = 1 : size_y
    y(i) = input("_");
end

x = x'; y = y';

z = add(x, y);
disp(x);disp(y);disp(z);