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
max_psnr = [30 40 50];
for v = 1:numel(max_psnr);
idx = find(leMap>max_psnr(v));
[i j k] = ind2sub(size(leMap),max(idx))
leMap(max(idx))
end