function problem14()
% The following iterative sequence is defined for the set of positive integers:
% 
% n  n/2 (n is even)
% n  3n + 1 (n is odd)
% 
% Using the rule above and starting with 13, we generate the following sequence:
% 
% 13  40  20  10  5  16  8  4  2  1
% It can be seen that this sequence (starting at 13 and finishing at 1) 
% contains 10 terms. Although it has not been proved yet (Collatz Problem), 
% it is thought that all starting numbers finish at 1.
% 
% Which starting number, under one million, produces the longest chain?
% 
% NOTE: Once the chain starts the terms are allowed to go above one million.

   big=0;
   for i=1000000:-1:1
    s=i;
   line=0;
    while s>1
    if mod(s,2)
        s=s*3+1;
        line=line+1;
    else
        s=s/2;
        line=line+1;
    end
    end
    if big<line
        big=line
        i
    end
   end
end