function slack = run_spice(name,v)

str = strcat('ngspice dc_syn/',name,'_',num2str(v),'.net > log')

[a b] = unix(str);
[a b] = unix('grep prop_delay log');
[c d] = strtok(b,'=');
c = strtok(d,'targ =');

slack = str2double(c);

end