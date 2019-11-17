clear;
clf;

x1 = linspace(0,6,20);
inc = (3-6)/9;
x2 = linspace(6 + inc ,3,10);
x3 = 3 * ones(1,100);
inc = (0-3)/19;
x4 = linspace(3+inc,0,20);
plot2d3([x1 x2 x3 x4]);
