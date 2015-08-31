for snr=16:2:26

    
    % result from coarse opt.
    %load manualOpt_part3_snr0.mat
    load manualOpt_part1_snr_newTestCircuitApp10.mat
    % dpcp result 
    dpcp = ones(1,200);
    %dpcp = csvread('dpcp_optimization/dpcp_part1_50.txt');
    d =dpcp;
    
    numInj = 200;
    numOut = 5;
    
    
    maxVec = zeros(numOut,1);
    
    
    %% fine grained
    idx2 = find(d>0);
    coarse_idx = find(ttc);
    for ii= 1:numel(coarse_idx)
        if (find(idx2==coarse_idx(ii)))
            a = find(idx2==coarse_idx(ii));
            idx2(a) = [];
        end
    end
        ind = idx2;
        isInConstr = 1;
        ind_t = [];
        tt = zeros(1,numInj);
        tt(ttc>0) = .5;
        while (isInConstr)
            isInConstr = 0;
            ind(ind_t==0) = [];
            ind_t = ind;
	    numel(ind)
            for i=1:numel(ind)
                tt(ind(i)) = tt(ind(i)) + 0.001;
                sum(tt)
                r = test_circuit_2(tt,maxVec,snr);
                r(r>.5) = .5;
                notInConst = (sum((r-maxVec)>0)>0);
                if (notInConst)
                    tt(ind(i)) = tt(ind(i)) - 0.001;
                    ind_t(i) = 0;
                else
                    isInConstr = 1;
                end
            end
        end


    %%
    fileStr = ['manualOpt_fine_part1_new_snr' num2str(snr) '.mat'];
    save(fileStr,'tt');
    
end
