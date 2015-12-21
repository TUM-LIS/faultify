function sum = FADD(a,b,c)

if (a==0 && b==0 && c==0)
    sum = 0;
elseif (a==0 && b==0 && c==1)
    sum = 1;
elseif (a==0 && b==1 && c==0)
    sum = 1;
elseif (a==0 && b==1 && c==1)
    sum = 0;
elseif (a==1 && b==0 && c==0)
    sum = 1;
elseif (a==1 && b==0 && c==1)
    sum = 0;
elseif (a==1 && b==1 && c==0)
    sum = 0;
elseif (a==1 && b==1 && c==1)
    sum = 1;   
end

end