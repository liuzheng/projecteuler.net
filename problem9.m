function big=problem9()
% A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
% 
% a2 + b2 = c2
% For example, 32 + 42 = 9 + 16 = 25 = 52.
% 
% There exists exactly one Pythagorean triplet for which a + b + c = 1000.
% Find the product abc.clc

for i=1:500
    for j=1:500
        if mod(sqrt(j*j+i*i),1)==0
            if sqrt(j*j+i*i)+j+i==1000
                i*j*sqrt(j*j+i*i)
            end
        end
    end
end
end
                




