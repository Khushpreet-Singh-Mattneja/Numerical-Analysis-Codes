clc
clear all

A = [10 -1 2 0; -1 11 -1 3; 2 -1 10 -1; 0 3 -1 8];
b = [6;25;-11;15];

n = size(A,1);
x0 = zeros(n,1);
x = zeros(n,1);

k=1;

while k<=100
    for i = 1:n
        sum1 = 0;
        sum2 = 0;
        for j = 1:i-1
            sum1 = sum1 + A(i,j)*x(j);
        end
        for j = i+1:n
            sum2 = sum2 + A(i,j)*x0(j);
        end
        sum = sum1 + sum2;
        x(i) = (b(i)-sum)/A(i,i);
    end
    if abs(x-x0)<0.0001
        break
    end
    x0 = x;
    k=k+1;
end
x
k
