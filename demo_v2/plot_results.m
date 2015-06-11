clear all
load images_10_2_22_snr_fit.mat
images_fitted_snr = images;
load images_10_2_22_0_0.mat
images_zero_imprecision = images;
clear images

SNR = 10:2:22;
for s=1:numel(SNR)
strr= ['../analysis/optimization/matlab/viterbi/manualOpt_fine_part1_snr' num2str(SNR(s)) '.mat'];
load(strr);
SumOfToleratedErrorProbabilities(s) = sum(tt);
end
clear tt
clear s
clear strr

%% calculate psnr
pic = imread('me.png');
for i =1:numel(SNR)
   psnr_zero_imprecisions(i) = psnr(images_zero_imprecision{i},pic); 
   psnr_fitted_snr(i) = psnr(images_fitted_snr{i},pic); 
end


%%
figure
for n=1:7
   subplot(3,7,n);
   imshow(images_zero_imprecision{n});
end
for n=1:7
   subplot(3,7,n+7);
   imshow(images_fitted_snr{n});
end
subplot(3,7,15);
plot(SNR,SumOfToleratedErrorProbabilities);
subplot(3,7,18);

plot(SNR,psnr_zero_imprecisions,SNR,psnr_fitted_snr);
   