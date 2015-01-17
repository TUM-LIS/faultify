function [ opt ] = optimium( X )
% Optimization function

%opt=0;
%for i=1:418
%    opt=opt-X(i);
%end
opt = 0;

% path to the demonstrator software
cmd = '../../simulator_software/faultify_demonstrator';


prob_h = fopen('probs.txt','w+');

numInj = 1992;

for i=1:numInj
       fprintf(prob_h,'%f\n',X(i));
end
fclose(prob_h);

% num cycles
num_cycles = 5E6;
cmd = [cmd ' ' '-c ' num2str(num_cycles)];

% file pe
cmd = [cmd ' ' '-fpe ' 'probs.txt'];

% write result to file
cmd = [cmd ' ' '-wtf'];


unix('xterm -e "../../simulator_software/read_test" &');
pause(.1)
unix('xterm -e "../../simulator_software/x264 ../../testvideo/md_cat.yuv --profile baseline --level 3 --ref 1 --ipratio 1 --input-res 176x144 -o - | ../../simulator_software/write_test" &');
pause(.2)
[stat, ret] = unix(cmd);
unix('killall xterm');

result = csvread('result.csv');

%reset_decoder;

%Define the maximal mistake for the output
% le
max_pe = [0 0 0 0 1E-5 1E-4 1E-3 1E-2 1E-1 1E-1];
% be
%max_pe = [0 1E-1 1E-2 1E-3 1E-4 1E-5 1E-6 1E-7 1E-8 0];
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

% plot some infos
%subplot(1,2,1)
%plot([1:89],result(1:end-1),'r-',[1:89],max_vec,'b-')
%subplot(1,2,2)
%plot(X)

%% Output Pin Prob Based
opt = sum(abs(result(1:end-1)-max_vec))

%% PSNR based
% A = yuv2mov('/tmp/test_f.yuv',176,144,'420');
% B = yuv2mov('/tmp/test.yuv',176,144,'420');
% for i=1:50
%     pp(i) = psnr(A(i).cdata,B(i).cdata);
% end
% opt = abs(40 - mean(pp))

end

