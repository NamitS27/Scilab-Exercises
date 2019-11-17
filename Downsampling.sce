// Namit Shah , AU1841067
// Programming Assignment 
// Signals & Systems , Semester 3

// Question 2 --> Down Sampling 

clear;
clc;

function y = downsampling(x,M)
    y = [];
    len  = length(x);
    for i = 1:M:len
        y($+1) = x(i);
    end
endfunction


x = [];
l = input("Enter length of vector : ");
disp("Enter vector (Press Enter after each input) : ");
for i = 1:l
    x(i) =  input("");
end
M = input("Enter the down sampling factor M : ");
ans = downsampling(x,M);
disp("Down Sampled Vector : ");
disp(ans);
