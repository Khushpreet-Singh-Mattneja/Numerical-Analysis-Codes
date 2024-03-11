clc
clear all

f = @(x,y)(y-(x^2)+1);

a = input('Enter a : ');
b = input('Enter b : ');
h = input('Enter h : ');

n = (b-a)/h;

x0 = 0;
y0 = 0.5;

for i = 1:n
    x1 = x0 + h;
    k1 = h*f(x0,y0);
    k2 = h*f((x0+(h/2)),(y0+(k1/2)));
    k3 = h*f((x0+(h/2)),(y0+(k2/2)));
    k4 = h*f((x0+h),(y0+k3));

    y1 = y0 + (1/6)*(k1+(2*k2)+(2*k3)+k4);
    x0 =x1;
    y0 = y1;
end
y1