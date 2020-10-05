// Namit Shah , AU1841067
// Programming Assignment 
// Signals & Systems , Semester 3

// Question 3 --> Up Sampling 

clear;
clc;

function y = upSampling(x,L)
    y = [];
    len = length(x);
    for i = 1:L.*len
        if modulo(i-1,L)==0
            y($+1) = x(((i-1)./L)+1);
       else 
           y($+1) = 0;
       end 
    end
endfunction

x = [];
l = input("Enter length of vector : ");
disp("Enter vector (Press Enter after each input) : ");
for i = 1:l
    x(i) =  input("");
end 
L = input("Enter the up sampling factor L : ");
ans = upSampling(x,L);
disp("Up Sampled Vector : ");
disp(ans);
