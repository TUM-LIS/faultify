%%


fh = fopen('tb_fpu_mul.net','w+');


fprintf(fh,'circuit_lh_94\n');
fprintf(fh,'.LIB SAED90nm.lib TT_12\n');
fprintf(fh,'.include test.sp\n');
fprintf(fh,'.include saed90nm.cdl\n');
fprintf(fh,'.global udd\n');
fprintf(fh,'.global uss\n');
fprintf(fh,'VDD udd 0 DC 1.2V\n');
fprintf(fh,'VSS uss 0 DC 0V\n');
fprintf(fh,'VCLK clk 0 PULSE (0V 1.2V 10NS 0.01PS 0.01PS 30NS 60NS)\n');


fprintf(fh,'a8 %%vd([');

for i=1:32
fprintf(fh,'opa%i 0 ',i);
end
for i=1:32
fprintf(fh,'opb%i 0 ',i);
end
fprintf(fh,'start 0 ');

fprintf(fh,']) filesrc\n');

fprintf(fh,'.model filesrc filesource (file="stimuli.txt" amploffset=[0 0] amplscale=[1 1] timeoffset=0 timescale=1 timerelative=false amplstep=false)\n');


%
fprintf(fh,'x1 clk ');
for i=1:32
fprintf(fh,'opa%i ',i);
end
for i=1:32
fprintf(fh,'opb%i ',i);
end
% fpu op
fprintf(fh,'uss udd uss ');
% rmode
fprintf(fh,'uss uss ');
% out
for i=1:32
fprintf(fh,'out%i ',i);
end

%Start_i
%Ready_o
%Ine_o
%Overflow_o
%Underflow_o
%Div_zero_o
%Inf_o
%Zero_o
fprintf(fh,'start ready ine over under divz inf zero qnan snan ');
fprintf(fh,'fpu \n');



fprintf(fh,'.tran 100p 2ns UIC\n');
fprintf(fh,'.control\n');
fprintf(fh,'set appendwrite\n');
fprintf(fh,'set filetype=ascii\n');
fprintf(fh,'run\n');
fprintf(fh,'.endc\n');
fprintf(fh,'.end\n');


fclose(fh);


%%
opa = '4efa0000';
opb = '4efa0000';
opa_bin = dec2bin(hex2dec(opa),32);
opb_bin = dec2bin(hex2dec(opb),32);


fh = fopen('stimuli.txt','w+');



t0 = 0E-9;
fprintf(fh,'%e ',t0);
for i=1:32
fprintf(fh,'%s ',opa_bin(i));
end
for i=1:32
fprintf(fh,'%s ',opb_bin(i));
end
fprintf(fh,'1\n');


t0 = 30E-9;
fprintf(fh,'%e ',t0);
for i=1:32
fprintf(fh,'%s ',opa_bin(i));
end
for i=1:32
fprintf(fh,'%s ',opb_bin(i));
end
fprintf(fh,'1\n');

t0 = 30E-9;
fprintf(fh,'%e ',t0);
for i=1:32
fprintf(fh,'%s ','0');
end
for i=1:32
fprintf(fh,'%s ','0');
end
fprintf(fh,'0\n');

fclose(fh);