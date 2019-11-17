// Exercise 13 : Signal plus Noise

clear;
clf;

t = -1 : 1/50 : 1;
f = 1;
a = 1;

x = a*cos(2*%pi*t*f);
subplot(311);
plot(t,x);
title("cosine wave","fontsize",3);

y = (a/5)*(-1 + 2*rand(t)*f);   // random function generates random number generates 
                                           // random number in range 0-1. 
                                           // Seed value is time for more accurate "random" generation 
subplot(312);
plot(t,y);
title("Random Noise","fontsize",3);

z = x+y;
subplot(313);
plot(t,z);
title("Signal with noise","fontsize",3);
sound(z);
