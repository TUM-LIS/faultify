function result = test_circuit(X)
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
result = csvread('result.txt')./num_cycles;

plot(result)
drawnow
end
