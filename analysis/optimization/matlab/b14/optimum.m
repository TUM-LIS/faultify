function [ opt ] = optimum( X )
% Optimization function

% path to the demonstrator software
cmd = '../../../../software/host/faultify_analysis/faultify_inject_faults';

prob_h = fopen('probs.txt','w+');

numInj = 216;

for i=1:numInj
       fprintf(prob_h,'%f\n',X(i));
end
fclose(prob_h);

% num cycles
num_cycles = 1E4;
cmd = [cmd ' ' '54 216 probs.txt ' num2str(num_cycles)];

[stat, ret] = unix(cmd);
result = csvread('result.txt');

opt_res = zeros(54,1);
opt_res(1:20) = 0;
opt_res(21:52) = log(1:1:32)./10;

opt = sum(abs(result-opt_res));

end
