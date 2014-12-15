clear all
close all

addpath ../
loadlibrary libbitmanipulation.so ../bitmanipulation.h

%% setup
% set of snrs
snr = [50 40 30];
% fixed point
bits=12;
% upper limit for ser
max_ser = 0.01;

%% coarse grained optimization

for iq = 1:bits
    pQ = zeros(1,bits);
    pQ(1:iq)  = 0.5;
    for ir = 1:bits
        pR = zeros(1,bits);
        pR(1:ir)  = 0.5;
        for i=1:numel(snr)
            ser_c(iq,ir,i) = zf_mimo_8x8_fixed_point(1E4,snr(i),bits,pQ,pR);
            pwr_c(iq,ir,i) = sum(pQ)+sum(pR);
        end
    end
end

%% coarse grained
for grr=1:numel(snr)
g_pwr = pwr_c(:,:,grr);
g_ser = ser_c(:,:,grr);

[idx] = find(g_ser<=max_ser);
[minPwr, minPos] = max(g_pwr(idx));

figure(grr)
hold on
mesh(g_ser)
plot3(floor(idx/size(g_ser,1))+1,rem(idx,size(g_ser,2)),g_ser(idx),'r.')
plot3(floor(idx(minPos)/size(g_ser,1))+1,rem(idx(minPos),size(g_ser,2)),g_ser(idx(minPos)),'g*')

opt_pwr(grr) = minPwr;
opt_bits_Q(grr) = bits -floor(idx(minPos)/size(g_ser,1));
opt_bits_R(grr) = bits -rem(idx(minPos),size(g_ser,2));


end