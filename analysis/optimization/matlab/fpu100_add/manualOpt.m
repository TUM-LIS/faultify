dpcp = csvread('dpcp.txt');
d = dpcp;
numInj = 140;
numOut = 41;

%maxVec = [zeros(1,9) (1:20)./40 .5 .5 .5 0 0 ones(1,7)./2];
maxVec = [zeros(1,9) exp(1:20)./exp(20)*1/2  .5 .5 .5 0 0 ones(1,7)./2];
%% coarse grained
prm = csvread('prm.csv');
prm = prm./10E6;
prm(prm>0.5) = 0.5;
for i=1:numInj
    dist(i) = sum((prm(i,:)-maxVec)>0);
end

idx = find(dist==0)
test = zeros(1,numInj);
test(idx) = 0.5;
r = test_circuit(test);
hold on
plot(maxVec,'r-')

%% fine grained

d(idx) = 0;
idx2 = find(d>0);
tt = test;
for p= 1:numel(idx2)
    start_val = 0.5;
    while (sum((r'-maxVec)>0)>0)
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

save opt_dist.m tt
