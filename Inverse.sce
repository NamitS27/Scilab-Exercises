//AU2040241 Priyanshu Pathak
clear;clc;
x = [1 2 3 4 5 6];
kx = 3;
element = x(kx);
N = length(x);
y = x;

for i=1:N
    y(N-i+1) = x(i);
end
for i=1:N
    if y(i)==element then
        ky = i;
    end,
end
printf("x(n): ");
disp(x);
printf("y(n): ");
disp(y);
printf("ky: ");
disp(ky);
//Output:

//x(n): 
//   1.   2.   3.   4.   5.   6.
//y(n): 
//   6.   5.   4.   3.   2.   1.
//ky: 
//   4.

//x(n): 
//   1.   2.   3.   4.   5.   6.
//y(n): 
//   6.   5.   4.   3.   2.   1.
//ky: 
//   4.
