%% This procedure is used to flush all internal faults after an injection

cmd = '../simulator_software/faultify_demonstrator';
prob_h = fopen('probs.txt','w+');
numInj = 1992;

for i=1:numInj
    fprintf(prob_h,'%f\n',0.0);
end
fclose(prob_h);

% num cycles
num_cycles = 2E7;
cmd = [cmd ' ' '-c ' num2str(num_cycles)];

% file pe
cmd = [cmd ' ' '-fpe ' 'probs.txt'];

% write result to file
cmd = [cmd ' ' '-wtf'];


unix('xterm -e "../simulator_software/read_test" &');
pause(1)
unix('xterm -e "../simulator_software/x264 ../testvideo/md_cat.yuv --profile baseline --level 3 --ref 1 --ipratio 1 --input-res 176x144 -o - | ../simulator_software/write_test" &');
pause(2)
[stat, ret] = unix(cmd)
unix('killall xterm');
