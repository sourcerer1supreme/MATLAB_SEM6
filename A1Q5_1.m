% exponential series

clc();
close all;
clear all;

fprintf('\nThis is a program to generate the exponential series --->\n');

for j = 0.1:0.1:0.9
    ex=1;
    ex1=0;
    i=1;
    t=1;
    x=j;
    while(true)
        ex1 = ex;
        t = t*(x/i);
        i=i+1;
        ex = ex + t;
        %fprintf('ex=%f\n',ex);
        if(ex-ex1<0.0001)
            break;
        end
    end

    fprintf('\nThe value of exponential series for x=%.1f is: %.4f\n',j,ex);
end