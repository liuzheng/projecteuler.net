function s=problem19()
year=1900;
mon=[31 28 31 30 31 30 31 31 30 31 30 31];
sun=1;
s=0;
while year<2001
    mon(2)=28;
    if mod(year,4)==0
        mon(2)=29;
    end
    if mod(year,100)==0
        if mod(year,400)==0
            mon(2)=29;
        else
            mon(2)=28;
        end
    end
    for i=1:12
        sun=sun+mon(i);
        sun=mod(sun,7);
        if sun==0
            s=s+1;
            java.lang.System.out.println(year+(i+1)/100);
        end
    end
    if year==1900
        s=0;
    end
    year=year+1;
    
end
        
            
    