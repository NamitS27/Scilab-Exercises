// (Distortion in CT system)
// Exercise 5

clear;
clf;

dt = 1/10000;
t = -0.01:dt:0.01;

x1 = sin(2*%pi*100*t)
subplot(231)
plot(t,x1,'y');
title("x1 vs time","fontsize",3)

x2 = sin(2*%pi*200*t)
subplot(232)
plot(t,x2,'r');
title("x2 vs time","fontsize",3)

x = x1 + x2;  // input signal
subplot(233)
plot(t,x,'m')
title("x vs time","fontsize",3)

// Same Amplitude & Same time diff. results into no distortion
A1 = 2;
A2 = 2;
t1 = 0.004;
t2 = 0.004;
c = A1*sin(2*%pi*100*(t-t1)) + A2*sin(2*%pi*200*(t-t2));
subplot(234)
plot(t,c,'g')
title("y vs time (No distortion)","fontsize",3)


// Same Amplitude & Different time diff. results into Time distortion
t1 = 0.002;
t2 = 0.004;
A1 = 2;
A2 = 2;
d = A1*sin(2*%pi*100*(t-t1)) + A2*sin(2*%pi*200*(t-t2));
subplot(235)
plot(t,d,'b')
title("y vs time (Time distortion)","fontsize",3)


// Different Amplitude & same time diff. results into Amplitude distortion
A1 = 2;
A2 = 4;
t1 = 0.004;
t2 = 0.004;
e = A1*sin(2*%pi*100*(t-t1)) + A2*sin(2*%pi*200*(t-t2));
subplot(236)
plot(t,e,'r')
title("y vs time (Amplitude distortion)","fontsize",3)












