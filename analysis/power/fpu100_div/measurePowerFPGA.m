for i = 1:4
    
    % load corresponding approx table
    generateApproximationTable(i);
    % synthesize
    cd approximation_syn/
    cmd = '. ~/env.sh;synplify_premier -batch proj_1.prj';
    unix(cmd);
    cd ..
    
    % power estimate
    cmd = '. ~/env.sh;xpwr approximation_syn/rev_1/pr_1/static_approximation_wrapper.ncd approximation_syn/rev_1/pr_1/static_approximation_wrapper.pcf > xpwr.log'
    unix(cmd)
    
    % copy log
    cmd = sprintf('cp xpwr.log xpwr_%u.log',i)
    unix(cmd)
    
    
end