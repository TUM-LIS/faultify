dpcp = csvread('dpcp_b14.txt');
d = dpcp;
numInj = 216;
numOut = 54;


maxVec = zeros(54,1);
maxVec(1:20) = 0;
maxVec(21:52) = log(1:1:32)./10;

%% fine grained

idx2 = find(d>0);
tt = zeros(1,numInj);
r= ones(numOut,1);
for p= 1:numel(idx2)
    start_val = 0.5;
    while (sum((r-maxVec)>0)>0)
        tt(idx2(p)) = start_val;
        r = test_circuit(tt);
        r(r>.5) = .5;
        start_val = start_val - 0.01;
        if (start_val<0)
            start_val = 0;
        end
    end
    r= ones(numOut,1);
end
%%
save opt_dist.mat tt
