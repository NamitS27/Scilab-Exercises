/*
Priya Jani AU2040004
Yansi Memdani AU2040028
Priyanshu Pathak AU2040241
*/
clear; clc;
//User Defined Vector x with size entered by user
x_len= input("Size of x: ");
printf("Enter Numbers:"); 
    for i = 1:x_len
        //printf("x(");disp(i);printf("): ");
        x(1,i) = input('');
    end
disp(x);
kx=input("location of 0: ");//Loction of 0 in vector x

//User Defined Vector y with size entered by user
y_len= input("Size of y: ");
printf("Enter Numbers:"); 
    for i = 1:y_len
        //printf("x(");disp(i);printf("): ");
        y(1,i) = input('');
    end
disp(y);
ky=input("location of 0: ");//Loction of 0 in vector y

//Aligning both vectors to same length

//Adding zeroes at beginning of vector
if kx>ky then
    y=[zeros(1,(kx-1)-(ky-1)) y];
else 
    x=[zeros(1,(ky-1)-(kx-1)) x];    
end

//Adding zeroes at end of vector
x_len= length(x);
y_len= length(y);
if(x_len>y_len)
    y=[y zeros(1,abs(x_len-y_len))];
else
    x=[x zeros(1,abs(x_len-y_len))];
end
printf("Aligned vectors of same length:\n");
printf("Vector x:");
disp(x);
printf("Vector y:");
disp(y);
//Addition of 2 vectors
printf("Addition of vectors(element vise):");
disp(x+y);
//Multiplication of 2 vectors
printf("Multipliction of vectors(element vise):");
disp(x.*y);

