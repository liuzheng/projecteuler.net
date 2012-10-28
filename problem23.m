function s=problem23(num)

% answer 4179935
for i=2:num
    a(i)=amicable(i);
end
j=1;
for i=1:num
    if a(i)>i
        b(j)=i;
        j=j+1;
    end
end
c=1:num;
for i=1:j
    for k=i+1:j-1
        if b(i)+b(k)>num
            continue;
        end
        c(b(i)+b(k))=0;
    end
end
s=sum(c);



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
