function problem16(n)
% 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
% 
% What is the sum of the digits of the number 2^1000?

a=char(sym(2^n));
s=sum(str2num(a(:)))
end