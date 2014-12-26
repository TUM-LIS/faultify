function result = test_circuit(X)

cmd = '../../../../software/host/faultify_analysis/faultify_inject_faults';
numInj = 140;


%dpcp = csvread('dpcp.txt');
%X = zeros(1,numInj);
%X = dpcp;

prob_h = fopen('probs.txt','w+');
for j=1:numInj
    fprintf(prob_h,'%f\n',X(j));
end
fclose(prob_h);

% num cycles
num_cycles = 1E4;
cmd = [cmd ' ' '41 140 probs.txt ' num2str(num_cycles)];

[stat, ret] = unix(cmd);
result = csvread('result.txt')./num_cycles;

plot(result./num_cycles)
drawnow

end
