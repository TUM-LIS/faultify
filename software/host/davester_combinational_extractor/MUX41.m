function res = MUX41(a,b,c,d,e,f)

    if (e==0 && f == 0)
        res = a;
    elseif (e==0 && f==1)
        res = b;
    elseif (e==1 && f==0)
        res = c;
    elseif (e==1 && f==1)
        res = d;
    end

end