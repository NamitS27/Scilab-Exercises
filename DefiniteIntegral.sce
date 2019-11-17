clc;
ts = 0;
te = 2;
dt = 1/1000;
t = te : dt : ts;
x = 2*ones(1, (te-ts)/dt);
z = sum(x)*dt;
disp(z);

t1 = 0;
t2 = 2*%pi;
T = t1 : dt : t2;
y = sin(T);
k = sum(y)*dt;
disp(k);
plot(T,y)
