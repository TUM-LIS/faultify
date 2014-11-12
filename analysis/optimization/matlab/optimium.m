function [ opt ] = optimium( X )
% Optimization function

%opt=0;
%for i=1:418
%    opt=opt-X(i);
%end
opt = -sum(X);

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

result = csvread('result.csv');
subplot(1,2,1)
plot(result)
subplot(1,2,2)
plot(X)
PA=result;

reset_decoder;

%Define the maximal mistake for the output
max_pe = [0 1E-8 1E-7 1E-6 1E-5 1E-4 1E-3 1E-2 1E-1 0]

% first 56 output bits
for i=1:56
   if PA(i)>max_pe(1)
    opt=opt + 1000+PA(i);
   else 
    opt=opt + 20*PA(i);
   end
end
% bit 8
for i=1:4
    if PA(57+((i-1)*8))>max_pe(2)
    opt=opt + 1000+PA(57+((i-1)*8));
    else 
    opt=opt + PA(57+((i-1)*8));
   end
end
%bit 7
for i=1:4
    if PA(58+((i-1)*8))>max_pe(3)
    opt=opt + 1000+PA(58+((i-1)*8));
    else 
    opt=opt + PA(58+((i-1)*8));
   end
end
%bit 6
for i=1:4
    if PA(59+((i-1)*8))>max_pe(4)
    opt=opt + 1000+PA(59+((i-1)*8));
    else 
    opt=opt + PA(59+((i-1)*8));
   end
end
%bit 5
for i=1:4
    if PA(60+((i-1)*8))>max_pe(5)
    opt=opt + 1000+PA(60+((i-1)*8));
    else
    opt=opt + PA(60+((i-1)*8));
   end
end
%bit 4
for i=1:4
    if PA(61+((i-1)*8))>max_pe(6)
    opt=opt + 1000+PA(61+((i-1)*8));
    else 
    opt=opt + PA(61+((i-1)*8));
   end
end
%bit 3
for i=1:4
    if PA(62+((i-1)*8))>max_pe(7)
    opt=opt + 1000+PA(62+((i-1)*8));
    else 
    opt=opt + PA(62+((i-1)*8));
   end
end
%bit 2
for i=1:4
    if PA(63+((i-1)*8))>max_pe(8)
    opt=opt + 1000+PA(63+((i-1)*8));
    else 
    opt=opt + PA(63+((i-1)*8));
   end
end
%bit 1
for i=1:4
    if PA(64+((i-1)*8))>max_pe(9)
    opt=opt + 1000+PA(64+((i-1)*8));
    else 
    opt=opt + PA(64+((i-1)*8));
   end
end

if PA(89)>max_pe(9)
    opt=opt + 1000;
else
    opt=opt + 20*PA(89);
end



end

