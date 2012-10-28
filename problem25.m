function a=problem25(num)

% answer 10946
i=1;
j=1;
a=i+j;
while log10(a)<num
    i=j;
    j=a;
    a=i+j;
end
