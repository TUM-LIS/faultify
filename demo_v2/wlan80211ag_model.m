clear all

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


hAWGN = comm.AWGNChannel('NoiseMethod','Signal to noise ratio (SNR)','SNR',10);

rng('default')      % Initialize random number generator

nSymbolsPerFrame = modDim.DataInputSize(1);
nBitsPerSymbol = 2;

BL = 200;
numOFDMFrames = 4;

hError = comm.ErrorRate('ResetInputPort',true);

bitsToTransmit = 1024;
numBlocks = ceil(bitsToTransmit/BL);
bitsToTransmitPad = numBlocks*BL;
bitsToTransmitPadEnc = numBlocks*(BL*2+12);

data = randi([0 1], bitsToTransmit, 1);
data(bitsToTransmit:bitsToTransmitPad) = 0;


nBitsPerFrame = nSymbolsPerFrame*nBitsPerSymbol;
nFrames =ceil(bitsToTransmitPadEnc/nBitsPerFrame);
%%
for i = 1:numBlocks
     encodedData((i-1)*(BL*2+12)+1:i*(BL*2+12)) = step(hEnc, data( (i-1)*BL+1 : (i-1)*BL+BL ));
end
encodedData = reshape(encodedData,[],2);
encodedData = bin2dec(num2str(encodedData));

% padding for frame
encodedData(end:nFrames*nSymbolsPerFrame) = 0;
%%
for k = 1:nFrames
    
    % Apply QPSK modulation
    modData = step(hQMod, encodedData((k-1)*nSymbolsPerFrame+1:k*nSymbolsPerFrame));
    
    
    % Modulate QPSK symbols using OFDM
    dataOFDM = step(hOFDMMod, modData);
    
    % Pass OFDM signal through AWGN channel
    receivedSignal = step(hAWGN, dataOFDM);
    
    % Demodulate OFDM data
    receivedOFDMData = step(hOFDMDemod, receivedSignal);
    
    % Demodulate QPSK data
    receivedData = step(hQDemod, receivedOFDMData);
    
    % Compute BER
    errors = step(hError, encodedData((k-1)*nSymbolsPerFrame+1:k*nSymbolsPerFrame), receivedData, 1);
    SER(k) = errors(1);
end