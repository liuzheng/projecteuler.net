function [sum,a]=problem21(num)
% answer 502
for i=2:num
    a(i)=amicable(i);
end
sum=0;

for i=2:num
    if a(i)<=num && a(i)==a(a(i)) && a(i)~=i
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
