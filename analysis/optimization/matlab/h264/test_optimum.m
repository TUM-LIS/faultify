function [result] = test_optimum( X )
% Optimization function

%reset_decoder;

% path to the demonstrator software
cmd = '../../simulator_software/faultify_demonstrator';

% This file defines where faults may appear
dpcp = csvread('../../simulator_software/dpcp_0_000500.txt');
prob_h = fopen('probs.txt','w+');

numInj = 1992;
for i=1:numInj
       %fprintf(prob_h,'%f\n',(dpcp(i)>0)*0.01);
       fprintf(prob_h,'%f\n',X(i));
end
fclose(prob_h);

% num cycles
num_cycles = 1E8;
cmd = [cmd ' ' '-c ' num2str(num_cycles)];

% file pe
cmd = [cmd ' ' '-fpe ' 'probs.txt'];

% write result to file
cmd = [cmd ' ' '-wtf'];


unix('xterm -e "../../simulator_software/read_test" &');
pause(.2)
unix('xterm -e "../../simulator_software/x264 ../../testvideo/md_cat.yuv --profile baseline --level 3 --ref 1 --ipratio 1 --input-res 176x144 -o - | ../../simulator_software/write_test" &');
pause(.2)
[stat, ret] = unix(cmd);
unix('killall xterm');

result = csvread('result.csv')
plot(result)