clear;
clf;
dt = 1/1000;
t = -10 : dt : 10;
subplot(311);
x = sin(2*%pi*(1/2)*t);
plot(t, x);

xlabel("t", "fontsize", "4");
ylabel("x", "fontsize", "4");
subplot(312);
y = sin(2*%pi*(1/5)*t);
plot(t, y);

xlabel("t", "fontsize", "4");
ylabel("y", "fontsize", "4");
subplot(313);
z = x + y;
plot(t, z);

xlabel("t", "fontsize", "4");
zlabel("z", "fontsize", "4");
