
for i=36:2:50
    i
   cmd = ['../faultify_analysis/faultify_dpcp_viterbi ' num2str(i)]; 
   unix(cmd)
   cmd2 = ['cp dpcp.txt dpcp_part3_' num2str(i) '.txt'];
   unix(cmd2)
end