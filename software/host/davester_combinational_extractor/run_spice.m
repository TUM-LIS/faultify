function slack = run_spice(name)

str = strcat('ngspice dc_syn/',name,'.net > log')

[a b] = unix(str)
[a b] = unix('grep prop_delay log');
[c d] = strtok(b,'=');
c = strtok(d,'targ')

slack = c;

end