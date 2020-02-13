% HCF of many numbers

clc();
close all;
clear all;

function h = HCF(a,b)      
    while((r=mod(a,b))~=0)
        a=b;
        b=r;
    end
    h = b;
end


n = input('Enter the number of numbers: ');
fprintf('Enter the numbers one by one\n');
numbers = [];
for i=1:n
    ele = input('');
    numbers = [numbers ele];
end

for i=1:n-1 
    h = HCF(numbers(i),numbers(i+1));
    numbers(i+1) = h;
end

fprintf('The hcf is: %d\n',numbers(n));