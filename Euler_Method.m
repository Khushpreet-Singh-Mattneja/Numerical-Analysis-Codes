clc
clear all

f = @(x,y)((x*y^3)-y);

a = input('Enter a : ');
b = input('Enter b : ');
h = input('Enter h : ');

n = (b-a)/h;

x0 = a;
y0 = 1;

for i = 1:n
    x1 = x0 + h;
    k1 = h*f(x0,y0)
    k2 = h*f(x1,y0+k1)
    y1= y0 + (0.5)*(k1+k2);

    x0 =x1;
    y0 = y1;
end
y1
