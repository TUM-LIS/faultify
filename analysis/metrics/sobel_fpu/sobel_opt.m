clear all
numFrames = 10;
orig = yuv2mov('HARBOUR_704x576_30_sobel_orig.yuv',704,576,'420');
leMap = zeros(23,23,23);
for pp1=10:23
    for pp2=10:23
    for pp3=20:23    
        fh1 = fopen('pe1.txt','w+');
        fh2 = fopen('pe2.txt','w+');
        fh3 = fopen('pe3.txt','w+');
        
        pe1 = zeros(1,32);
        pe1(1:1+pp1) = 0.5;
        for i=1:32
            fprintf(fh1,'%f\n',pe1(i));
        end
        pe2 = zeros(1,32);
        pe2(1:1+pp2) = 0.5;
        for i=1:32
            fprintf(fh2,'%f\n',pe2(i));
        end
        pe3 = zeros(1,32);
        pe3(1:1+pp3) = 0.5;
        for i=1:32
            fprintf(fh3,'%f\n',pe3(i));
        end
        
        % execute
        unix('./a.out pe1.txt pe2.txt pe3.txt');
        
        faulty = yuv2mov('HARBOUR_704x576_30_faulty.yuv',704,576,'420');
        
        psnr_vals = zeros(1,numFrames);
        for i=1:numFrames
            psnr_vals(i) = psnr(orig(i).cdata,faulty(i).cdata);
        end
        leMap(pp1,pp2,pp3) = mean(psnr_vals);
        leMap(pp1,pp2,pp3)
        
        fclose(fh1);
        fclose(fh2);
        fclose(fh3);
        
    end
    end
end

save leMap3D.mat leMap



%%
load leMap3D.mat
orig = yuv2mov('HARBOUR_704x576_30_sobel_orig.yuv',704,576,'420');


max_psnr = [30 40 50];
for v = 1:numel(max_psnr);
idx = find(leMap>max_psnr(v));
[i j k] = ind2sub(size(leMap),max(idx))
leMap(max(idx))
end

% psnr  \ div mul sqrt
% 30    \ 18 20 20 
% 40    \ 14 17 20
% 50    \ 12 14 20


%% fine

% 30 
%psnr_min = 30;
%c_div = 19;
%c_mul = 21;
%c_sqrt = 21;
% 40
% psnr_min = 40;
% c_div = 15;
% c_mul = 18;
% c_sqrt = 21;
% 50
psnr_min = 50;
c_div = 13;
c_mul = 15;
c_sqrt = 21;
pdiv = zeros(1,32);
pdiv(1:c_div) = .5;
pmul = zeros(1,32);
pmul(1:c_mul) = .5;
psqrt = zeros(1,32);
psqrt(1:c_sqrt) = .5;
%%
type = 3;

if (type==1)
    % div
    %for i=23:-1:(c_div+1)
    for i=(c_div+1):32
        isInConstr = 1;
        while (isInConstr)
            pdiv(i) = pdiv(i) + 0.01
            psnr_temp = sobel_inject(pdiv,pmul,psqrt,orig)
            if (psnr_temp<=psnr_min)
                isInConstr = 0;
                pdiv(i) = pdiv(i) - 0.01;
            end
        end
    end
    
elseif (type==2)
    % div
    ind = (c_div+1):32;    
    isInConstr = 1;
    ind_t = [];
    while (isInConstr)
        isInConstr = 0;
        ind(ind_t==0) = [];
        ind_t = ind;
        for i=1:numel(ind)
            pdiv(ind(i)) = pdiv(ind(i)) + 0.01
            psnr_temp = sobel_inject(pdiv,pmul,psqrt,orig)
            if ((psnr_temp<=psnr_min) || (pdiv(ind(i)) > 0.5))
                pdiv(ind(i)) = pdiv(ind(i)) - 0.01;
                ind_t(i) = 0;
            else
                isInConstr = 1;
            end
        end
    end
%% mul
    ind = (c_mul+1):32;
    isInConstr = 1;
    ind_t = [];
    while (isInConstr)
        isInConstr = 0;
        ind(ind_t==0) = [];
        ind_t = ind;
        for i=1:numel(ind)
            pmul(ind(i)) = pmul(ind(i)) + 0.01
            psnr_temp = sobel_inject(pdiv,pmul,psqrt,orig)
            if ((psnr_temp<=psnr_min) || (pmul(ind(i)) > 0.5))
                pmul(ind(i)) = pmul(ind(i)) - 0.01;
                ind_t(i) = 0;
            else
                isInConstr = 1;
            end
        end
    end
% sqrt
    ind = (c_sqrt+1):32;
    isInConstr = 1;
    ind_t = [];
    while (isInConstr)
        isInConstr = 0;
        ind(ind_t==0) = [];
        ind_t = ind;
        for i=1:numel(ind)
            psqrt(ind(i)) = psqrt(ind(i)) + 0.01
            psnr_temp = sobel_inject(pdiv,pmul,psqrt,orig)
            if ((psnr_temp<=psnr_min) || (psqrt(ind(i)) > 0.5))
                psqrt(ind(i)) = psqrt(ind(i)) - 0.01;
                ind_t(i) = 0;
            else
                isInConstr = 1;
            end
        end
    end
    
elseif (type==3)
    ind = [];
    ind(1,:) = [(c_div+1):32 (c_mul+1):32 (c_sqrt+1):32];
    ind(2,:) = [ones(1,numel((c_div+1):32)) 2*ones(1,numel((c_mul+1):32)) 3*ones(1,numel((c_sqrt+1):32))];
    isInConstr = 1;
    ind_t = [];
    while (isInConstr)
        isInConstr = 0;
        ind(:,ind_t==0) = [];
        ind_t = ind(1,:);
        for i=1:numel(ind(1,:))
            if (ind(2,i)==1)
                pdiv(ind(1,i)) = pdiv(ind(1,i)) + 0.01
            elseif (ind(2,i)==2)
                pmul(ind(1,i)) = pmul(ind(1,i)) + 0.01
            elseif (ind(2,i)==3)
                psqrt(ind(1,i)) = psqrt(ind(1,i)) + 0.01
            end
            psnr_temp = sobel_inject(pdiv,pmul,psqrt,orig)
            if ((psnr_temp<=psnr_min) || (psqrt(ind(1,i)) > 0.5)|| (pmul(ind(1,i)) > 0.5)|| (pdiv(ind(1,i)) > 0.5))
                if (ind(2,i)==1)
                    pdiv(ind(1,i)) = pdiv(ind(1,i)) - 0.01
                elseif (ind(2,i)==2)
                    pmul(ind(1,i)) = pmul(ind(1,i)) - 0.01
                elseif (ind(2,i)==3)
                    psqrt(ind(1,i)) = psqrt(ind(1,i)) - 0.01
                end
                ind_t(i) = 0;
            else
                isInConstr = 1;
            end
        end
    end
end


sobel_inject(pdiv,pmul,psqrt,orig)
