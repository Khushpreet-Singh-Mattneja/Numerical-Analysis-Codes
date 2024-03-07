clc
clear all

A = [4 1 0;1 20 1;0 1 4];
x0 = [1;1;1];

n = input('Enter Number of Iterations : ');
tol = input('Enter the value of tolerance : ');

for i = 1:n
    x=A*x0;
    m = max(abs(x));
    x=x/m;

    if (abs(x-x0)<tol)
        break
    end
    x0 = x;
end
fprintf("Dominant Eigen Value %d",m);
x

