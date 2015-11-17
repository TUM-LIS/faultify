clear soe;
clear slack;
range = 0.75:0.01:1.05;

for i=1:numel(range)
    i
    sed_str =     ['sed -i ''/set_voltage 1.2 -object_list VDD_TYP/c\set_voltage ', num2str(range(i)) ,' -object_list VDD_TYP'' run_primetime_simple.tcl'];
    sed_str_rev = ['sed -i ''/set_voltage ', num2str(range(i)), ' -object_list VDD_TYP/c\set_voltage 1.2 -object_list VDD_TYP'' run_primetime_simple.tcl'];

    unix(sed_str);
    [a, b] = unix('cd pt_fpu_mul; pt_shell -f ../run_primetime_simple.tcl > log; cd ..');
    [a, b] = unix('grep "slack (" pt_fpu_mul/log ');
    
    [c d] = strtok(b,' ');
    [c d] = strtok(d,' ');  
    [c d] = strtok(d,' ');
    
    slack(i) = str2double(c);
    
    unix(sed_str_rev);

    [a,b] = unix('cd pt_fpu_mul;vcs ../simple.v ../saed90nm.v ../tb_simple.v -timescale=1ps/1ps -sverilog; cd ..');
    [a,b] = unix('cd pt_fpu_mul;./simv > vcs_log; cd ..');
    [a, b] = unix('grep "SoE" pt_fpu_mul/vcs_log ');
        
    [c d] = strtok(b,':');
    [c d] = strtok(d,' '); 
    
     soe(i) = str2double(d);
     



    
    
    
end