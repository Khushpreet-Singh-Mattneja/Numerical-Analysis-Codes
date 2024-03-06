clc
clear all

A = [1 1 -1;1 2 -2;-2 1 1];
b = [3;2;1];

n = size(A,1);
x = zeros(n,1);
y = zeros(n,1);

L = eye(n);

for j = 1 : n-1
    for i = j+1 : n 
        m = A(i,j)/A(j,j);
        A(i,:) = A(i,:)-m*A(j,:);
        L(i,j) = m;
    end
end

y(1) = b(1);

for i = 2:n
    sum = 0;
    for j = 1:i-1
        sum = sum + (L(i,j)*y(j));
    end
    y(i)= (b(i)-sum)/L(i,i);
end

x(n) = y(n)/A(n,n);

for i = n-1:-1:1
    sum1 = 0;
    for j = i+1 : n
        sum1 = sum1 + A(i,j)*x(j);
    end
    x(i)= (y(i)-sum1)/A(i,i);
end

x
y

