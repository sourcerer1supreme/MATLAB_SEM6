% sum of digits of a number

clc()
close all;
clear all;

num = input('Enter a number ');
s=0;
num1=num;
while num1~=0
    d = mod(num1,10);
    s+=d;
    num1=idivide(num1,10);
end

fprintf('The sum of digits of %d is: %d\n',num,s);