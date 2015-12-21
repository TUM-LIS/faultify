function sum = HADD(a,b)

if (a==0 && b==0)
    sum = 0;
elseif (a==0 && b==1)
    sum = 0;
elseif (a==1 && b==0)
    sum = 0;
elseif (a==1 && b==1)
    sum = 1; 
end