%%
clear all
close all

addpath ../
loadlibrary libbitmanipulation.so ../bitmanipulation.h

%% Settings

% from coarse grained opt
%snr =
%    60     50    40    30
%opt_pwr =
%    6.5    6.5   6.0   5.5
%opt_bits_Q =
%     6     6     6     5
%opt_bits_R =
%     7     7     6     6



type = 2;
fullBitReduction_Q = 6;
fullBitReduction_R = 7;
bits = 12;
pQ = zeros(1,bits);
pR = zeros(1,bits);
opt_pQ = zeros(1,bits);
opt_pR = zeros(1,bits);
snr = 50;
max_ser = 0.01;

%% linear
if type==1
gradient_Q = (fullBitReduction_Q-1):-1:0;
gradient_R  =(fullBitReduction_R-1):-1:0;
gradient_Q = gradient_Q./max(gradient_Q);
gradient_R = gradient_R./max(gradient_R);
pq = 0:0.001:0.01;
pr = 0:0.001:0.01;
end
%% exp
if type==2
gradient_Q = (exp(bits-fullBitReduction_Q-1:-1:0)./max(exp(1:bits-fullBitReduction_Q-1))*(fullBitReduction_Q-1));
gradient_Q = gradient_Q./max(gradient_Q);
gradient_R = (exp(bits-fullBitReduction_R-1:-1:0)./max(exp(1:bits-fullBitReduction_R-1))*(fullBitReduction_R-1));
gradient_R = gradient_R./max(gradient_R);
pq = 0:0.001:0.02; % 50_6_7
pr = 0:0.001:0.02; % 50_6_7
%pq = 0:0.0001:0.01; % 40_6_6
%pr = 0:0.0001:0.01; % 40_6_6
end


%% fine grained optimization
for iq=1:numel(pq)
    iq
    for ir=1:numel(pr)
        ir
        pQ(1:fullBitReduction_Q) = 0.5;
        pQ(fullBitReduction_Q+1:end) = gradient_Q.*pq(iq);
        pR(1:fullBitReduction_R) = 0.5;
        pR(fullBitReduction_R+1:end) = gradient_R.*pr(ir);
        for i=1:numel(snr)
            ser_f(iq,ir,i) = zf_mimo_8x8_fixed_point(1E5,snr(i),bits,pQ,pR);
            pwr_f(iq,ir,i) = sum(pQ)+sum(pR);
        end
    end
end



%% fine grained
for grr=1:numel(snr)
g_pwr = pwr_f(:,:,grr);
g_ser = ser_f(:,:,grr);

[idx] = find(g_ser<=max_ser);
[y,x] = ind2sub(size(g_ser),idx);
[minPwr, minPos] = max(g_pwr(idx));

figure(grr)
hold on
surf(g_ser)
plot3(x,y,g_ser(idx),'r.')
plot3(x(ind2sub(size(g_ser),minPos)),y(ind2sub(size(g_ser),minPos)),g_ser(idx(minPos)),'g*')

opt_pwr(grr) = minPwr;
opt_fac_R(grr) = x(ind2sub(size(g_ser),minPos));
opt_fac_Q(grr) = y(ind2sub(size(g_ser),minPos));
opt_pQ(1:fullBitReduction_Q) = 0.5;
opt_pQ(fullBitReduction_Q+1:end) = gradient_Q.*pq(opt_fac_Q);
opt_pR(1:fullBitReduction_R) = 0.5;
opt_pR(fullBitReduction_R+1:end) = gradient_R.*pr(opt_fac_R);

end
%%
%save res_fine_40_6_6.mat ser_f pwr_f