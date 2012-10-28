function s=problem17(num)
% If the numbers 1 to 5 are written out in words: one, two, three, four, 
% five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
% 
% If all the numbers from 1 to 1000 (one thousand) inclusive were written 
% out in words, how many letters would be used?
% 
% 
% NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and 
% forty-two) contains 23 letters and 115 (one hundred and fifteen) contains
% 20 letters. The use of "and" when writing out numbers is in compliance 
% with British usage.

s=0;
 for i=1:1000
[v,d]=num2hum(i);
v
s=s+sum(d);
end


function [v,d,w]=num2hum(num)
s={'one','two','three','four','five','six','seven','eight','nine','ten'...
    ,'eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen',...
    'eighteen','nineteen','twenty','thirty','forty','fifty','sixty','seventy',...
    'eighty','ninety','hundred','thousand','and'};
n=[];
[n1,n2]=size(s);
for i=1:n2
    n=[n;size(s{i})];
end
n(:,1)=[];
a=floor(num/1000);
b=mod(floor(num/100),10);
c=mod(floor(num/10),10);
d=mod(num,10);
w=[];
if a==1
    w=[a n2-1];
end
if b~=0
    w=[w b n2-2];
end
if floor(num/100)>0 && mod(num,100)>0
    w=[w n2];
end
if c==1
    w=[w mod(num,100)];
elseif c==0
    if d~=0
        w=[w d];
    end
else
    w=[w 18+c];
    if d~=0
        w=[w d];
    end
end
v=s(w);
d=n(w);


