clc
clear all

f = @(x) (exp(-x^2)*cos(x));
a = input('Enter a : ');
b = input('Enter b : ');
n = input('Enter n : ');

h = (b-a)/n;
sum = 0;
x0 = a;

for i = 1:n-1
    x1=x0+h;
    sum = sum + f(x1);
    x0 = x1;
end

y = (h/2)*(f(a)+f(b)+(2*sum));

y