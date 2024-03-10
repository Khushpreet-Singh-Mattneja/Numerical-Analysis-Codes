clc
clear all

f = @(x) (exp(-x^2)*cos(x));
a = input('Enter a : ');
b = input('Enter b : ');
n = input('Enter n : ');

h = (b-a)/n;
sum_odd = 0;
sum_even = 0;
x0 = a;

for i = 1:n-1
    x1=x0+h;
    if (rem(i,2)==0)
        sum_even = sum_even + f(x1);
    else
        sum_odd = sum_odd + f(x1);
    end
    x0 = x1;
end

y = (h/3)*(f(a)+f(b)+(2*sum_even)+(4*sum_odd));

y