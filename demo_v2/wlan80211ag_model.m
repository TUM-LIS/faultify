clear all
loadlibrary('libbitmanipulation.so','bitmanipulation.h')
pic = imread('me.png');
pic_lin = pic(:);

SNR = 10:2:22;



%%
for s=1:numel(SNR)

tic 

%%
strr= ['../analysis/optimization/matlab/viterbi/manualOpt_fine_part1_snr' num2str(SNR(s)) '.mat'];
load(strr);
prob_fh = fopen('probs.txt','W');
for p=1:numel(tt)
   %fprintf(prob_fh,'%f\n',tt(p)); 
   fprintf(prob_fh,'0.0\n'); 
end
fclose(prob_fh);


hQMod = comm.QPSKModulator;
hQDemod = comm.QPSKDemodulator;

hOFDMMod = comm.OFDMModulator;
hOFDMDemod = comm.OFDMDemodulator(hOFDMMod);


Polynom = [171,133];
CL = 7;
trellis = poly2trellis(CL, Polynom);


hEnc = comm.ConvolutionalEncoder('TrellisStructure',trellis, 'TerminationMethod', 'Terminated');
hViterbiDec = comm.ViterbiDecoder(trellis, 'InputFormat', 'Soft', 'SoftInputWordLength', 4, 'TerminationMethod', 'Terminated');
modDim = info(hOFDMMod);


hAWGN = comm.AWGNChannel('NoiseMethod','Signal to noise ratio (SNR)','SNR',SNR(s));


hScalQuant = dsp.ScalarQuantizerEncoder;
hScalQuant.Partitioning = 'Unbounded';
hScalQuant.BoundaryPoints = (-0.75:0.105:0.75);

rng('default')      % Initialize random number generator

nSymbolsPerFrame = modDim.DataInputSize(1);
nBitsPerSymbol = 2;

BL = 200;
numOFDMFrames = 4;

hError = comm.ErrorRate('ResetInputPort',true);

%bitsToTransmit = 10*1024;
bitsToTransmit = numel(pic_lin)*8;

numBlocks = ceil(bitsToTransmit/BL);
bitsToTransmitPad = numBlocks*BL;
bitsToTransmitPadEnc = numBlocks*(BL*2+12);


%data = randi([0 1], bitsToTransmit, 1);
data = pic_lin;
data = double(dec2bin_clib(data)');


data(bitsToTransmit:bitsToTransmitPad) = 0;


nBitsPerFrame = nSymbolsPerFrame*nBitsPerSymbol;
nFrames =ceil(bitsToTransmitPadEnc/nBitsPerFrame);
%%
for i = 1:numBlocks
     encodedDataBin((i-1)*(BL*2+12)+1:i*(BL*2+12)) = step(hEnc, data( (i-1)*BL+1 : (i-1)*BL+BL ));
end
encodedData_t = reshape(encodedDataBin,[],2);
%encodedData = bin2dec(num2str(encodedData_t));

t = zeros(6,size(encodedData_t,1));
tt = reshape([t' encodedData_t]',[],1);
encodedData = double(bin2dec_clib(tt)');

% padding for frame
encodedData(end:nFrames*nSymbolsPerFrame) = 0;
%%
receivedDataHard = [];
receivedDataSoft = [];
for k = 1:nFrames
    
    % Apply QPSK modulation
    modData = step(hQMod, encodedData((k-1)*nSymbolsPerFrame+1:k*nSymbolsPerFrame));
    
    
    % Modulate QPSK symbols using OFDM
    dataOFDM = step(hOFDMMod, modData);
    
    % Pass OFDM signal through AWGN channel
    receivedSignal = step(hAWGN, dataOFDM);
    
    % Demodulate OFDM data
    receivedOFDMData = step(hOFDMDemod, receivedSignal);
    receivedDataSoft((k-1)*53+1:k*53) = receivedOFDMData;
    %receivedDataSoft = [receivedDataSoft; receivedOFDMData];
    % Demodulate QPSK data HARD
    tmp = step(hQDemod, receivedOFDMData);
    receivedDataHard((k-1)*53+1:k*53) = tmp;

    % Compute BER
    errors = step(hError, encodedData((k-1)*nSymbolsPerFrame+1:k*nSymbolsPerFrame), receivedDataHard((k-1)*nSymbolsPerFrame+1:k*nSymbolsPerFrame)',1);
    SER(k) = errors(1);
end
    receivedDataSoft = conj(receivedDataSoft');
receivedData = receivedDataSoft(1:bitsToTransmitPadEnc/nBitsPerSymbol);

% hard decision 
%receivedData = [((-1)*imag(receivedData))>0 ;((-1)*real(receivedData))>0];
%receivedDataBinStr = reshape(dec2bin(receivedData),1,[]);
%for n = 1:numel(receivedDataBinStr)
%    receivedDataBin(n) = str2double(receivedDataBinStr(n));
%end


% soft quantize
receivedData = [((-1)*imag(receivedData)) ;((-1)*real(receivedData))];
receivedDataQuant = step(hScalQuant, receivedData);
% decode in MATLAB
for i = 1:numBlocks
decoded = step(hViterbiDec,double(receivedDataQuant((i-1)*(BL*2+12)+1:i*(BL*2+12))));
decoded(BL+1:end) = [];
receivedDataDecoded((i-1)*BL+1 : (i-1)*BL+BL ) = decoded;
end
% decode on FPGA
receivedDataQuantCreonix = ((-1*receivedDataQuant)+7);

%llr_fh = fopen('llr.txt','W');
act_bl = int16(receivedDataQuantCreonix);
%for i = 1:numBlocks*412
%    fprintf(llr_fh,'%d\n',act_bl(i)); 
%end
%fclose(llr_fh);

llr_bin_fh = fopen('llr.bin','W');
fwrite(llr_bin_fh,act_bl,'int32');
fclose(llr_bin_fh);


cmd = ['../software/host/faultify_viterbi/faultify_viterbi_bl_200 ' num2str(numBlocks)];
[a b] = unix(cmd);
receivedDataCreonixDecoded = (importdata('result.txt')>0);


%disp('uncoded')
uncodedSER(s) = mean(SER);
%disp('coded')
codedSER(s) = sum(abs(data-receivedDataDecoded')>0)/bitsToTransmitPad;

receivedDataCreonixDecoded(200:200:end) = receivedDataDecoded(200:200:end);
codedSERHW(s) = sum(abs(data-receivedDataCreonixDecoded)>0)/bitsToTransmitPad;


% restore image
receivedDataCreonixDecoded(bitsToTransmit:bitsToTransmitPad) = [];
imageRe = bin2dec_clib(receivedDataCreonixDecoded);
imageRe = reshape(imageRe',[344 360 3]);

images{s} = imageRe;

toc

end

%%
figure
for n=1:15
   subplot(3,5,n);
   imshow(images{n});
end

%imshow(imageRe)
%plot(SNR, codedSER,SNR,uncodedSER,SNR,codedSERHW)




