// Namit Shah , AU1841067
// Programming Assignment 
// Signals & Systems , Semester 3

// Question 1 --> Sampling index

clear;
clc;

function y = n(x,k)
    y = [];
    len = length(x);
    for i = 1:len
        y($+1) = i-k;
    end
endfunction

vx = [];
l = input("Enter length of vector : ");
disp("Enter vector (Press Enter after each input) : ");
for i = 1:l
    vx(i) =  input("");
end
k = input("Enter value of k : ")
ans = n(vx,k);
disp(ans);
