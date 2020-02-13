% Prime Fibo <N

clc();
close all;
clear all;

function f = isPrime(n)
    f = 1;
    for i=2:n-1
        if (mod(n,i) == 0)
            f = 0;
            break;
        end
    end
end

num = input('Enter a value: ');
n1=1;
n2=1;

fprintf('The prime fibonacci sequence is: \n')
while((n3 = n1 + n2) < num)
    if(isPrime(n3) == 1)
        fprintf('%d ',n3);
    end
    n1=n2;
    n2=n3;
end

fprintf('\n');