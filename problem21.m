function [sum,a]=problem21(num)
% Let d(n) be defined as the sum of proper divisors of n (numbers less than
% n which divide evenly into n).
% If d(a) = b and d(b) = a, where a  b, then a and b are an amicable pair 
% and each of a and b are called amicable numbers.
% 
% For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22,
% 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 
% 1, 2, 4, 71 and 142; so d(284) = 220.
% 
% Evaluate the sum of all the amicable numbers under 10000.

for i=2:num
    a(i)=amicable(i);
end
sum=0;

for i=2:num
    if a(i)<=num && i==a(a(i)) && a(i)~=i
        sum=sum+a(i);
    end
end


function sum=amicable(num)
i=2;
j=0;
while num~=1
    while mod(num,i)~=0
        i=i+1;
    end
    j=j+1;
    a(j,1)=i;
    k=0;
    while mod(num,i)==0
        num=num/i;
        k=k+1;
    end
    a(j,2)=k;
end
b(j+1)=0;
c=1;
sum=0;
num=prod(a(:,1).^a(:,2));
while 1
    b(1)=b(1)+1;
    for i=1:j
        if b(i)>a(i,2)
            b(i)=0;
            b(i+1)=b(i+1)+1;
        end
    end
    sum=sum+c;
    c=prod(a(:,1)'.^b(1:end-1));
    if c==num
        break;
    end
end
