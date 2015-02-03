
% Changeable Parameter
N_blocks = 1000;
N_Sim = 3;
% 
BL_START = 200;
BL_STEP = 1;
BL_END = 200;
% 
EbNo_START = 20;
EbNo_STEP = 2;
EbNo_END = 50;

ep = [5,9
1,8
5,8
5,7
5,6];
N_ep = numel(ep(:,1));

R = 0.5;
CL = 7;
Polynom = [171,133];

% Computing Parameter
M = 4;
k = log2(M);
Buffer = (CL-1)/R;
trellis = poly2trellis(CL, Polynom);
N_It_EbNo = round( (EbNo_END-EbNo_START)/EbNo_STEP ) + 1;
N_It_BL = round( (BL_END-BL_START)/BL_STEP ) + 1;


hEnc = comm.ConvolutionalEncoder('TrellisStructure',trellis, 'TerminationMethod', 'Terminated');

hQMod = comm.QPSKModulator('BitInput',true);
hQDemod = comm.QPSKDemodulator('BitOutput',true,'DecisionMethod', 'Log-likelihood ratio');

hViterbiDec = comm.ViterbiDecoder(trellis, 'InputFormat', 'Soft', 'SoftInputWordLength', 4, 'TracebackDepth', 48, 'TerminationMethod', 'Terminated');

It_EbNo = 1; %Zählt die Itterationen von EbNo und liefert so den Index für EbNo_vector, indem die EbNo Werte gespeichert werden

EbNo_vector = (EbNo_START:EbNo_STEP:EbNo_END);  % Speichert die EbNo Werte
BER_Average = zeros(N_It_EbNo, 1); % Speichert pro EbNo Wert einen Durchschnittlichen BER Wert für alle Blocklängen

mkdir('WiFi_121_91_eigene_Daten');
cd('WiFi_121_91_eigene_Daten');

for EbNo = EbNo_START:EbNo_STEP:EbNo_END
    
    % Systemobject: AWGN Channel with generic EbNo
    hAWGN = comm.AWGNChannel('EbNo', EbNo/10);
    adjSNR     = EbNo/10;% - 10*log10(1/R) + 10*log10(k);
    hAWGN.EbNo = adjSNR;
    
    % Systemobject: Quantizer uses EbNo as Input
    hScalQuant = dsp.ScalarQuantizerEncoder;
    NoiseVariance = 10.^(-adjSNR/10);
    hScalQuant.Partitioning = 'Unbounded';
    hScalQuant.BoundaryPoints = (-1.75:0.25:1.75)/NoiseVariance;
    
    
    EbNo_vector(It_EbNo) = EbNo;
    
    dir_name = sprintf('WiFi_121_91_eigene_Daten_EbNo_%u',EbNo);
    mkdir(dir_name);
    cd(dir_name);
    
    It_BL = 1;
    
    BER = zeros(N_It_BL, 1);
    
    for BL = BL_START:BL_STEP:BL_END
        
        % Bin Daten Erzeugen
        N_bits = N_blocks*BL;
        Data = round(rand(N_bits,1));
        
        % Convolutional Encoding
        for i=1:N_blocks
            EncodedData( (i-1)*(BL*2+Buffer)+1 : (i-1)*(BL*2+Buffer)+BL*2+Buffer ) = step(hEnc, Data( (i-1)*BL+1 : (i-1)*BL+BL ));
        end;
        
        % Modulate with QPSK
        ModulatedData = step(hQMod, EncodedData');
        
        % Pass signal through AWGN channel
        ReceivedSignal = step(hAWGN, ModulatedData);
        
        % Demodulate QPSK data
        ReceivedData  = step(hQDemod, ReceivedSignal);
        
        % Quantiz for Soft Decision
        ViterbiIN = step(hScalQuant, -ReceivedData);
        
        % Viterbidecoding
        Outputsize = (numel(ViterbiIN) - N_blocks*Buffer)/2;
        Output = ViterbiIN(1:Outputsize);
        Output = Output*0;
        
        for u=1:N_blocks
            ViterbiOUT = step(hViterbiDec,double(ViterbiIN( (u-1)*(BL*2+Buffer)+1 : (u-1)*(BL*2+Buffer)+(BL*2+Buffer) )));
            Output( (u-1)*BL+1 : (u-1)*BL+BL ) = ViterbiOUT(1:BL);
        end;
        
        % Save files
        filename_Original = sprintf('decoded_BL_%i_WL_55_AL_50_out.txt', BL);
        filename_LLR_unconverted = sprintf('unconverted_llr_BL_%i_WL_55_AL_50_in.txt', BL);
        filename_Decoded = sprintf('matlab_decoded_BL_%i_WL_55_AL_50_out.txt', BL);
        
        dlmwrite(filename_Original, Data);
        dlmwrite(filename_LLR_unconverted, ViterbiIN);
        dlmwrite(filename_Decoded, Output);
        
        N_errors = 0;
        N_noerrors = 0;
        
        for s=1:N_bits
            if Data(s) == Output(s)
                N_noerrors = N_noerrors + 1;
            else
                N_errors = N_errors + 1;
            end;
        end;
        
        BER(It_BL) = N_errors/N_bits;
        
        Input = ViterbiIN;
        
        for j=1:numel(Input)
            
            switch Input(j)
                
                case 0, Input(j) = 7;
                case 1, Input(j) = 6;
                case 2, Input(j) = 5;
                case 3, Input(j) = 4;
                case 4, Input(j) = 3;
                case 5, Input(j) = 2;
                case 6, Input(j) = 1;
                case 7, Input(j) = 0;
                    
                case 8, Input(j) = -1;
                case 9, Input(j) = -2;
                case 10, Input(j) = -3;
                case 11, Input(j) = -4;
                case 12, Input(j) = -5;
                case 13, Input(j) = -6;
                case 14, Input(j) = -7;
                case 15, Input(j) = -8;
                    
                otherwise, Input(j) = 999;
            end;
            
        end;
        
        filename_converted = sprintf('llr_BL_%i_WL_55_AL_50_in.txt', BL);
        dlmwrite(filename_converted, Input);
        
        It_BL = It_BL + 1;
        
        % Release Systemobjects for next EbNo
        release(hAWGN);
        release(hScalQuant);
        
        message = sprintf('\n-----BL %d done-------------------------------------------------------', BL);
        disp(message);
        
    end;
    
    Sum_BER = 0;
    
    for f=1:numel(BER)
        Sum_BER = Sum_BER + BER(f);
    end;
    
    BER_Average(It_EbNo) = Sum_BER/numel(BER);
    
    It_EbNo = It_EbNo + 1;
    
    cd '..';
    
    message = sprintf('\nEbNo %d done----------------------------------------------------------', EbNo);
    disp(message);
    
end;

message = sprintf('\n');
disp(message);

% Release other Systemobjects
release(hEnc);
release(hQMod);
release(hQDemod);
release(hViterbiDec);

cd('..');

dir_name = sprintf('Results_NB_%d_BL_%d_%d_%d_EbNo_%d_%d_%d_NSim_%d_Nep_%d', N_blocks, BL_START, BL_STEP, BL_END, EbNo_START, EbNo_STEP, EbNo_END, N_Sim, N_ep);
mkdir(dir_name);
cd(dir_name);

dlmwrite('EbNo_werte.txt', EbNo_vector/10);
dlmwrite('BER_werte.txt', BER_Average);

cd '..';

% semilogy(EbNo_vector, BER_Average_all_blocks_vector);
