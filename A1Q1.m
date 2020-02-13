clc();
close all;
clear all;

function s1 = sum1(n)
    s1=0;
    s11=0;
    for i=1:n
        s11 = s11 + i;
        s1 = s1 + s11;
    end
end

function s2 = sum2(n)
    s2=0;
    for i=1:n
        s2=s2+i^2;
    end
end

function s3 = sum3(n)
    s3=0;
    while(n>0)
        s3=s3+n;
        n=n-2;
    endwhile
end

function p = sum4(n)
    p=1;
    for i=1:n
        p=p*i;
    end
end

function s5 = sum5(n)
    s5=0;
    for i=1:n
        if((mod(i,2)) == 1)
            s5+=i;
        elseif
            s5-=i;
        end
    end
end

n = input("\nEnter the value of n: ");

s1=sum1(n);
s2=sum2(n);
s3=sum3(n);
s4=sum4(n);
s5=sum5(n);

fprintf("\nSum1: %d",s1);
fprintf("\nSum2: %d",s2);
fprintf("\nSum3: %d",s3);
fprintf("\nSum4: %d",s4);
fprintf("\nSum5: %d",s5);
fprintf("\n")