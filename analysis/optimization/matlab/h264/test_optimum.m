function [] = test_optimum( X )
% Optimization function

reset_decoder;

% path to the demonstrator software
cmd = '../simulator_software/faultify_demonstrator';

% This file defines where faults may appear
dpcp = csvread('../simulator_software/dpcp_0_010000.txt');

prob_h = fopen('probs.txt','w+');

numInj = 1992;
j=1;
for i=1:numInj
   if dpcp(i)==0
       fprintf(prob_h,'%f\n',0);
   else
       %fprintf(prob_h,'%f\n',(X(j)>0)*0.1);
       fprintf(prob_h,'%f\n',X(j));
       j=j+1;
   end
end
fclose(prob_h);

% num cycles
num_cycles = 1E7;
cmd = [cmd ' ' '-c ' num2str(num_cycles)];

% file pe
cmd = [cmd ' ' '-fpe ' 'probs.txt'];

% write result to file
cmd = [cmd ' ' '-wtf'];


unix('xterm -e "../simulator_software/read_test" &');
pause(1)
unix('xterm -e "../simulator_software/x264 ../testvideo/md_cat.yuv --profile baseline --level 3 --ref 1 --ipratio 1 --input-res 176x144 -o - | ../simulator_software/write_test" &');
pause(2)
[stat, ret] = unix(cmd);
unix('killall xterm');

result = csvread('result.csv')
plot(result)