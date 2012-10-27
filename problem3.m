function s=problem3(num)
% The prime factors of 13195 are 5, 7, 13 and 29.
%
%What is the largest prime factor of the number 600851475143 ?

i=2;
while num~=1
    while mod(num,i)~=0
    i=i+1;
    end
    while mod(num,i)==0
        num=num/i;
        s=i;
    end
    i=i+1;
end
end