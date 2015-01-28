dpcp = csvread('dpcp.txt');
d = dpcp;
numInj = 414;
numOut = 202;


maxVec = zeros(numOut,1);
%bit12 = [0 0 0 0 0 1E-7 1E-6 1E-5 1E-4 1E-3 1E-2 1E-1];
%bit12 = [0 0 0 0 0 0 0 0 1E-4 1E-3 1E-2 1E-1];
opt_pQ_50_6_7 = [.0 .0001 .0002 .0005 .0015 .0040 .5 .5 .5 .5 .5 .5];
opt_pR_50_6_7 = [.0001 .0002 .0005 .0015 .0040 .5    .5 .5 .5 .5 .5 .5];
opt_pQ_40_6_6 = [.0    .0    .0001 .0003 .0007 .0020 .5 .5 .5 .5 .5 .5];
opt_pR_40_6_6 = [.0 .0001 .0002 .0005 .0014 .0037 .5 .5 .5 .5 .5 .5];
opt_pQ_30_5_6 = [.0  .0 .0 .0001 .0002 .0007 .0018 .5 .5 .5 .5 .5];
opt_pR_30_5_6 = [.0  .0 .0001 .0003 .0009 .0025 .5 .5 .5 .5 .5 .5];
%    0.5000    0.5000    0.5000    0.5000    0.5000    0.0018    0.0007    0.0002    0.0001    0.0000    0.0000
 %    0.0000
%    0.5000    0.5000    0.5000    0.5000    0.5000    0.5000    0.0025    0.0009    0.0003    0.0001    0.0000
%    0.0000

opt_pQ = opt_pQ_50_6_7;
opt_pR = opt_pR_50_6_7;
p_q_r = [opt_pQ opt_pQ opt_pQ opt_pQ];
p_q_i = [opt_pQ opt_pQ opt_pQ opt_pQ];
p_r_r = [opt_pR opt_pR opt_pR opt_pR];
p_r_i = [opt_pR opt_pR opt_pR opt_pR];
pcat = [0 0 p_q_r p_q_i p_r_r p_r_i zeros(1,8)];
maxVec = pcat';


%% High-V
idx = find(d>0);
maxVar = ones(1,numInj);
for p= 1:numel(idx)
    p
    varMeas = zeros(20,numOut);
    tt = zeros(1,numInj);
    tt(idx(p)) = 0.5;
    for rep=1:20
        varMeas(rep,:) = test_circuit(tt,maxVec);
    end
    maxVar(idx(p)) = max(var(varMeas));
end
%%
save maxVar.mat maxVar


%% coarse grained
idxc = find(maxVar<0.1);
ttc = zeros(1,numInj);
r= ones(numOut,1);
for p= 1:numel(idxc)
   ttc(idxc(p)) = .5;
   r = test_circuit(ttc,maxVec);
   r(r>.5) = .5;
   notInConst = (sum((r-maxVec)>0)>0);
   for retry=1:10
       if (notInConst==0)
           sprintf('retry %i - %i\n',p,retry)
           r = test_circuit(ttc,maxVec);
           r(r>.5) = .5;
           notInConst = (sum((r-maxVec)>0)>0);
       end
       if (notInConst)
           ttc(idxc(p)) = 0;
       end
   end
end



%% fine grained
idx2 = find(maxVar<0.001);
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
            r = test_circuit(tt,maxVec);
            r(r>.5) = .5;
            notInConst = (sum((r-maxVec)>0)>0);
            % retest
            for retry=1:10
                if (notInConst==0 && start_val ~= 0.0)
                    sprintf('retry %i - %d - %i\n',p,start_val,retry)
                    r = test_circuit(tt,maxVec);
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
    
else
    ind = idx2;
    isInConstr = 1;
    ind_t = [];
    tt = zeros(1,numInj);
    tt(ttc>0) = .5;
    while (isInConstr)
        isInConstr = 0;
        ind(ind_t==0) = [];
        ind_t = ind(1,:);
        for i=1:numel(ind)
            tt(ind(i)) = tt(ind(i)) + 0.0001
            r = test_circuit(tt,maxVec);
            r(r>.5) = .5;
            notInConst = (sum((r-maxVec)>0)>0);
            if (notInConst)
                tt(ind(i)) = tt(ind(i)) - 0.0001;
                ind_t(i) = 0;
            else
                isInConstr = 1;
            end
        end
    end
end
%%
save opt_dist.mat tt
