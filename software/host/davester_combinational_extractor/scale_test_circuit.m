clear all;
range = 0.7:0.001:1.1;

for i=1:numel(range)
    i
    sed_str =     ['sed -i ''/set_voltage 1.2 -object_list VDD_TYP/c\set_voltage ', num2str(range(i)) ,' -object_list VDD_TYP'' run_primetime.tcl'];
    sed_str_rev = ['sed -i ''/set_voltage ', num2str(range(i)), ' -object_list VDD_TYP/c\set_voltage 1.2 -object_list VDD_TYP'' run_primetime.tcl'];

    unix(sed_str);
    [a, b] = unix('cd pt_fpu_mul; pt_shell -f ../run_primetime.tcl > log; cd ..');
    [a, b] = unix('grep "slack (" pt_fpu_mul/log ');
    
    [c d] = strtok(b,' ');
    [c d] = strtok(d,' ');  
    [c d] = strtok(d,' ');
    
    slack(i) = str2double(c);
    
    unix(sed_str_rev);

    [a,b] = unix('cd pt_fpu_mul;vcs ../test_circuit_syn.v ../saed90nm.v ../tb_test_citcuit.v -timescale=1ps/1ps; cd ..');
    [a,b] = unix('cd pt_fpu_mul;./simv > vcs_log; cd ..');
    [a, b] = unix('grep "SoE" pt_fpu_mul/vcs_log ');
    
    [c d] = strtok(b,':');
    [c d] = strtok(d,' '); 
    
     soe(i) = str2double(d);


    
    
    
end