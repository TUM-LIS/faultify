for snr=0:2:2
    
    %dpcp = ones(179,1);
    dpcp = ones(200,1);
    %dpcp = csvread('dpcp_optimization/dpcp_part3_50.txt');
    d = dpcp;
    numInj = 200;
    numOut = 5;
    
    
    maxVec = zeros(numOut,1);
    
    
    
    %% coarse grained
    %%if (0)
    idxc = find(d>0);
    ttc = zeros(1,numInj);
    r= ones(numOut,1);
    for p= numel(idxc):-1:1
	%p = randi([1 numel(idxc)]);
	disp(p)
        ttc(idxc(p)) = .5;
        r = test_circuit(ttc,maxVec,snr);
        r(r>.5) = .5;
        notInConst = (sum((r-maxVec)>0)>0);
        for retry=1:10
            if (notInConst==0)
                sprintf('retry %i - %i\n',p,retry)
                r = test_circuit(ttc,maxVec,snr);
                r(r>.5) = .5;
                notInConst = (sum((r-maxVec)>0)>0);
            end
            if (notInConst)
                ttc(idxc(p)) = 0;
            end
        end
    end
    %%end
    
    
    %% fine grained
    idx2 = find(d>0);
    coarse_idx = find(ttc);
    for ii= 1:numel(coarse_idx)
        if (find(idx2==coarse_idx(ii)))
            a = find(idx2==coarse_idx(ii));
            idx2(a) = [];
        end
    end
    %%
    if (0)
        
        tt = zeros(1,numInj);
        tt(ttc>0) = .5;
        r= ones(numOut,1);
        notInConst = 1;
        for p= 1:numel(idx2)
            start_val = 0.5;
            while (notInConst)
                sprintf('%i - %i\n',p,start_val)
                tt(idx2(p)) = start_val;
                r = test_circuit(tt,maxVec,snr);
                r(r>.5) = .5;
                notInConst = (sum((r-maxVec)>0)>0);
                % retest
                for retry=1:10
                    if (notInConst==0 && start_val ~= 0.0)
                        sprintf('retry %i - %d - %i\n',p,start_val,retry)
                        r = test_circuit(tt,maxVec,snr);
                        r(r>.5) = .5;
                        notInConst = (sum((r-maxVec)>0)>0);
                    end
                end
                if (notInConst)
                    start_val = start_val - 0.001;
                    if (start_val<0)
                        start_val = 0;
                    end
                end
            end
            tt(1:p)
            r= ones(numOut,1);
            notInConst = 1;
        end
    end    
    if (0)
        ind = idx2;
        isInConstr = 1;
        ind_t = [];
        tt = zeros(1,numInj);
        tt(ttc>0) = .5;
        while (isInConstr)
            isInConstr = 0;
            ind(ind_t==0) = [];
            ind_t = ind;
            for i=1:numel(ind)
                tt(ind(i)) = tt(ind(i)) + 0.001;
                sum(tt)
                r = test_circuit(tt,maxVec,snr);
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
    end


    %%
    fileStr = ['manualOpt_part3_snr' num2str(snr) '.mat'];
    save(fileStr,'ttc');
    
end
