%Find prime and non prime numbers <=n

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

num = input('Enter a number: ');

prime = [];
nprime = [];

for i = 2:num
    if(isPrime(i) == 1)
        prime = [ prime i ];
    else
        nprime = [ nprime i ];
    end
end

[m,n] = size(prime);
fprintf('The prime numbers <=n are: ');
for i=1:n
    fprintf('%d ',prime(i));
end

fprintf('\n')

[m,n] = size(nprime);
fprintf('The non-prime numbers <=n are: ');
for i=1:n
    fprintf('%d ',nprime(i));
end