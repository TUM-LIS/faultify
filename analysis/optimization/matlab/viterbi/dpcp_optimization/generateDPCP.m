
for i=0
    i
   cmd = ['cd ../../../../../software/host/faultify_analysis/;./faultify_dpcp_viterbi ' num2str(i)]; 
   unix(cmd);
   cmd2 = ['cp ../../../../../software/host/faultify_analysis/dpcp.txt dpcp_part3_' num2str(i) '.txt'];
   unix(cmd2);
end