function s=problem7()
% By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can 
% see that the 6th prime is 13.
%
% What is the 10 001st prime number?

num=1;
j=1;
while j<=10001
    num=num+1;
    i=2;
    while mod(num,i)~=0
        i=i+1;
    end
    if i==num
        num
        j=j+1;
    end
end
s=num;
end