dpcp = csvread('../../simulator_software/dpcp_0_000500.txt');
d = dpcp;
d(1:1839) = 0;

r = sum(d>0);
idx = find(d>0);

result = zeros(90,r);
for i=1:r
        X = zeros(1,1992);
        X(idx(i)) = 0.1;
        result(:,i) = test_optimum(X);
end

%%
save result.mat result
%%
max_pe = [0 1E-1 1E-2 1E-3 1E-3 1E-3 1E-3 1E-3 1E-3 1E-3];
max_vec= zeros(1,89);
max_vec(1:56) = max_pe(1);
max_vec(57+((0:4-1)*8)) = max_pe(2);
max_vec(58+((0:4-1)*8)) = max_pe(3);
max_vec(59+((0:4-1)*8)) = max_pe(4);
max_vec(60+((0:4-1)*8)) = max_pe(5);
max_vec(61+((0:4-1)*8)) = max_pe(6);
max_vec(62+((0:4-1)*8)) = max_pe(7);
max_vec(63+((0:4-1)*8)) = max_pe(8);
max_vec(64+((0:4-1)*8)) = max_pe(9);
max_vec(89) = max_pe(10);


for i=1:r
        xx(i) = sum(abs(result(1:end-1,i) - max_vec'));
end

ne = dpcp;
%ne(idx(xx>.5)) = 0.000001;
ne(idx(xx>.2)) = 0.0005;
ne(idx(xx>.5)) = 0.00005;
ne(idx(xx>1)) =  0.000005;

%%
save ne.mat ne
