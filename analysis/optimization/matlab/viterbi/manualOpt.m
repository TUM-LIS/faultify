for snr=10:2:22
    
    %dpcp = ones(179,1);
    %dpcp = ones(200,1);
    %dpcp = csvread('dpcp_optimization/dpcp_part3_50.txt');
    d = dpcp;
    numInj = 200;
    numOut = 5;
    
    
    %maxVec = zeros(numOut,1);
    maxVec = [0; 0; 1E-4; 0; 0];
    
    
    %% coarse grained
    idxc = find(d>0);
    ttc = zeros(1,numInj);
    r= ones(numOut,1);
    for p= numel(idxc):-1:1
	%p = randi([1 numel(idxc)]);
	disp(p)
        ttc(idxc(p)) = .5;
        r = test_circuit_2(ttc,maxVec,snr);
        r(r>.5) = .5;
        notInConst = (sum((r-maxVec)>0)>0);
        for retry=1:5 % 10 is better
            if (notInConst==0)
                sprintf('retry %i - %i\n',p,retry)
                r = test_circuit_2(ttc,maxVec,snr);
                r(r>.5) = .5;
                notInConst = (sum((r-maxVec)>0)>0);
            end
            if (notInConst)
                ttc(idxc(p)) = 0;
            end
        end
    end
    
    


    %%
    fileStr = ['manualOpt_part1_snr_newTestCircuitApp' num2str(snr) '.mat'];
    save(fileStr,'ttc');
    
end
