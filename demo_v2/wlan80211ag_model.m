clear all

SNR = [0:1:50];

for s=1:numel(SNR)


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

bitsToTransmit = 1*1024;
numBlocks = ceil(bitsToTransmit/BL);
bitsToTransmitPad = numBlocks*BL;
bitsToTransmitPadEnc = numBlocks*(BL*2+12);

data = randi([0 1], bitsToTransmit, 1);
data(bitsToTransmit:bitsToTransmitPad) = 0;


nBitsPerFrame = nSymbolsPerFrame*nBitsPerSymbol;
nFrames =ceil(bitsToTransmitPadEnc/nBitsPerFrame);
%%
for i = 1:numBlocks
     encodedDataBin((i-1)*(BL*2+12)+1:i*(BL*2+12)) = step(hEnc, data( (i-1)*BL+1 : (i-1)*BL+BL ));
end
encodedData = reshape(encodedDataBin,[],2);
encodedData = bin2dec(num2str(encodedData));

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
    receivedDataSoft = [receivedDataSoft; receivedOFDMData];
    
    % Demodulate QPSK data HARD
    receivedDataHard = [receivedDataHard; step(hQDemod, receivedOFDMData)];
    
    % Compute BER
    errors = step(hError, encodedData((k-1)*nSymbolsPerFrame+1:k*nSymbolsPerFrame), receivedDataHard((k-1)*nSymbolsPerFrame+1:k*nSymbolsPerFrame),1);
    SER(k) = errors(1);
end

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
receivedDataQuantCreonix = ((-1*receivedDataQuant(3))+7);



%disp('uncoded')
uncodedSER(s) = mean(SER);
%disp('coded')
codedSER(s) = sum(abs(data-receivedDataDecoded')>0)/bitsToTransmitPad;

end


plot(SNR, codedSER,SNR,uncodedSER)


