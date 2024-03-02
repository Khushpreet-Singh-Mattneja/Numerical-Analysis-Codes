clc
clear all 

A = [3 2 -1; 1 -3 2; 2 -1 1];
b = [1;2;3];
Am = [A b];

n = size(A,1);
x = zeros(n,1);

for j = 1 : n-1
    for i = j+1 : n 
        m = Am(i,j)/Am(j,j);
        Am(i,:) = Am (i,:)-m*Am(j,:);
    end
end

x(n)=Am(n,n+1)/Am(n,n);

for i = n-1:-1:1
    sum = 0;
    for j = i+1 : n
        sum = sum + Am (i,j) * x(j);
    end
    x(i) = (Am(i,n+1)-sum)/Am(i,i);
end
x
