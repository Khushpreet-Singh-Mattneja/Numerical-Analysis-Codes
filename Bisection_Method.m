clc
clear all

f = @(x) 3*x-exp(x);
a = input("Enter the Starting Value :");
b = input("Enter the Stoping Value :");
tol = input("Enter the tolerance : ");
i = 0;
p=(a+b)/2;
if f(a)*f(b)>0
    frintf('Wrong Values for a and b:');

else
    while(abs(a-b)>tol)
        
        if f(a)*f(p)<0
            b=p;
        else
            a=p;
        end
        i=i+1;
        p=(a+b)/2;
        fprintf('Root is  = %f and number of iterations = %d',p,i)
    end
end