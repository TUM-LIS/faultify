function result = test_circuit(X,maxVec,snr)
% Optimization function

% path to the demonstrator software
cmd = '../../../../software/host/faultify_analysis/faultify_inject_faults_viterbi';

prob_h = fopen('probs.txt','w+');

numInj = 200;

for i=1:numInj
       fprintf(prob_h,'%f\n',X(i));
end
fclose(prob_h);

% num cycles
num_cycles = 1E5;
tstr = [' 5 200 probs.txt /home/david/projects/faultify_github/faultify/software/host/faultify_viterbi/WiFi_121_91_eigene_Daten/WiFi_121_91_eigene_Daten_EbNo_' num2str(snr) '/llr_BL_200_WL_55_AL_50_in.txt '];
cmd = [cmd tstr num2str(num_cycles)];

[stat, ret] = unix(cmd);
result = csvread('result.txt')./(100*200);

%plot(result)
%hold on
%plot(maxVec,'r-')
%hold off
%drawnow
sum(X)
end
