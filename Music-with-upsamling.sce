// AU2040241 Priyanshu Pathak
clear; clc;
function [x, L]=Eq(x, L)
    N = length(x);
    y = zeros(1:L*N);
    y([1:L:length(y)])= x;
endfunction
RN = 241;
fs = (RN/3) + 200; // fs = 280.333 hz
d = 0.4;
t = 0:1/11025:d;
t2 = 0:1/22050:d;
En = sin(%pi*t/d);
En2 = sin(%pi*t2/d);
fr = fs*2^(2/12); 

fg = fs*2^(4/12); 

Sa = En.*sin(2*%pi*fs*t);
Sa2 = En2.*sin(2*%pi*fs*t2);
Re = En.*sin(2*%pi*fr*t); 
Re2 = En2.*sin(2*%pi*fr*t2); 
Ga = En.*sin(2*%pi*fg*t); 
Ga2 = En2.*sin(2*%pi*fg*t2); 
x = [Sa Re Ga Re Sa];
z = [Sa2 Re2 Ga2 Re2 Sa2];
L = 2; //Upsampling factor
[x,L] = Eq(x,L);
sound(x);
analyze(x);
wavwrite(x, fs, 'first_wave.wav');
[x,L] = Eq(z,L);
sound(z);
analyze(z);
wavwrite(z, fs, 'second_wave.wav');
