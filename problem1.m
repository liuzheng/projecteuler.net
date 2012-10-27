function s=problem1(num,a,b)
% If we list all the natural numbers below 10 that are multiples of 3 or 5,
% we get 3, 5, 6 and 9. The sum of these multiples is 23.
%
% Find the sum of all the multiples of 3 or 5 below 1000.


num=num-1;
if nargin==1
    a=3;
    b=5;
end
c=a*b;
an=floor(num/a);
bn=floor(num/b);
cn=floor(num/a/b);
s=a*(1+an)*an/2+b*(1+bn)*bn/2-c*(1+cn)*cn/2;

end