function s=problem4()
% A palindromic number reads the same both ways. The largest palindrome 
% made from the product of two 2-digit numbers is 9009 = 91 99.
% 
% Find the largest palindrome made from the product of two 3-digit numbers.

clc
a=999;
b=999;
s=0;
for a=900:999
    for b=900:999
        if huiwen(a*b)
            s=[s a*b];
        end
    end
end
s=max(s);

function f=huiwen(num)
f=0;
a=floor(num/1000);
b=wei(num,1)*100+wei(num,2)*10+wei(num,3);
if a-b==0
    f=1;
end

function a=wei(num,wei)
a=floor(mod(num,10^wei)/10^(wei-1));
