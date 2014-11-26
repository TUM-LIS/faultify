function [] = updateBitProbs(key)
%k = get(fh,'CurrentCharacter');
global bitProbs
global doStop

if (key=='q')
    doStop=1;
elseif (key=='a')
    bitProbs = ones(1,8)*0.1;
elseif (key=='s')
    bitProbs = mapMe([1:8],1,8,0,0.5);
elseif (key=='d')
    bitProbs = [1E-4 1E-3 1E-2 1E-1 2E-1 3E-1 4E-1 5E-1];
elseif (key=='f')
    bitProbs = [1E-5 1E-6 1E-6 1E-2 1E-1 1.5E-1 4E-1 5E-1];
else
    if (bitProbs(str2double(key)))
        bitProbs(str2double(key)) = 0;
    else
        bitProbs(str2double(key)) = 0.5;
    end
end


end