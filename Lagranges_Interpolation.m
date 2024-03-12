clc
clear all 

x = [0 0.2];
y = [0.5 0.8293];

n = length(x);
sum = 0;
p = 0.15;

for i = 1:n
    L(i) = 1;
    for j = 1:n
        if (i~=j)
            L(i) = L(i)*((p-x(j))/(x(i)-x(j)));
        end
    end
    sum = sum + (L(i)*y(i));
end
fprintf("Approximate Population in Year %d = %d",p,sum);
