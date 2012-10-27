function s=problem10()
% The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
% 
% Find the sum of all the primes below two million.

clc
tic
s=1:2000000;
for i=2:ceil(sqrt(2000000))
    s(i*2:s(i):end)=0;
end
s=num2str(sum(s)-1);
toc
end