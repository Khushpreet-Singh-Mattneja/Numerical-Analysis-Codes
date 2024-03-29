clc
clear all


f=@(x)(x*exp(x))-1;
x0=input('Enter Approximation 1: ');
x1=input('Enter Approximation 2: ');
tol=input('EnterTolerance :  ');
n=10;

for i=1:n
    x2=(x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
    if abs((x2-x1))<tol
       
        fprintf('The root is %f',x2)
        break;
    else
        x0=x1;
        x1=x2;
    end
end