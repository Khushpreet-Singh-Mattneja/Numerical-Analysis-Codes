clc
clear all

g = @(x)(10/(4+x))^.5;

tol = input('Enter the tolerance value : ');
x0 = input('Enter the Initial Value : ');
max = input('Enter the Number of iterations :');
i=0;
while(i<max)
    x1=g(x0);
    if(abs(x1-x0)<tol)
        fprintf('X%d = %f \n',i,x1);
        break
    end
    x0=x1;
    i=i+1;
end