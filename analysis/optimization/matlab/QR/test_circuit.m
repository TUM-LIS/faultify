function result = test_circuit(X,maxVec)
% Optimization function

% path to the demonstrator software
cmd = '../../../../software/host/faultify_analysis/faultify_inject_faults';

prob_h = fopen('probs.txt','w+');

numInj = 414;

for i=1:numInj
       fprintf(prob_h,'%f\n',X(i));
end
fclose(prob_h);

% num cycles
num_cycles = 1E5;
cmd = [cmd ' ' '202 414 probs.txt ' num2str(num_cycles)];

[stat, ret] = unix(cmd);
result = csvread('result.txt')./num_cycles;

plot(result)
hold on
plot(maxVec,'r-')
hold off
drawnow

% reset
% prob_h = fopen('probs.txt','w+');
% numInj = 414;
% for i=1:numInj
%        fprintf(prob_h,'%f\n',0.0);
% end
% fclose(prob_h);
% num_cycles = 1E5;
% cmd = [cmd ' ' '202 414 probs.txt ' num2str(num_cycles)];
% [stat, ret] = unix(cmd);
end
