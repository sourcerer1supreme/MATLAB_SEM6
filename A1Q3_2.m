% Perfect numbers

clc();
close all;
clear all;

fprintf('The perfect numbers <=999 are: ');

for i=1:999
    s=0;
    for j=1:i-1
        if((mod(i,j))==0)
            s=s+j;
        end
    end
    if s == i
        fprintf('%d ',i)
    end
end

fprintf('\n');