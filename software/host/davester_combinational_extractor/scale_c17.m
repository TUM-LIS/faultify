clear all;
range = 0.75:0.001:1.2;

for i=1:numel(range)
    i
    sed_str =     ['sed -i ''/set_voltage 1.2 -object_list VDD_TYP/c\set_voltage ', num2str(range(i)) ,' -object_list VDD_TYP'' run_primetime_c17.tcl'];
    sed_str_rev = ['sed -i ''/set_voltage ', num2str(range(i)), ' -object_list VDD_TYP/c\set_voltage 1.2 -object_list VDD_TYP'' run_primetime_c17.tcl'];

    unix(sed_str);
    [a, b] = unix('cd pt_fpu_mul; pt_shell -f ../run_primetime_c17.tcl > log; cd ..');
    [a, b] = unix('grep "slack (" pt_fpu_mul/log ');
    
    [c d] = strtok(b,' ');
    [c d] = strtok(d,' ');  
    [c d] = strtok(d,' ');
    
    slack(i) = str2double(c);
    
    unix(sed_str_rev);

    [a,b] = unix('cd pt_fpu_mul;vcs ../c17.v ../saed90nm.v ../tb_c17.v -timescale=1ps/1ps -sverilog; cd ..');
    [a,b] = unix('cd pt_fpu_mul;./simv > vcs_log; cd ..');
    [a, b] = unix('grep "SoE" pt_fpu_mul/vcs_log ');
    
    [c d] = strtok(b,':');
    [c d] = strtok(d,' '); 
    [c d] = strtok(d,','); 

    soe(1,i) = str2double(c);
    [c d] = strtok(d,' '); 

    soe(2,i) = str2double(d);


    
    
    
end


%%

out0 = csvread('pt_fpu_mul/F_Reg.csv');
out1 = csvread('pt_fpu_mul/G_Reg.csv');
