clear all
load images_16_2_26_snr_fit_part1_rome.mat
images_fitted_snr = images;
load images_16_2_26_0_0_part1_rome.mat
images_zero_imprecision = images;
clear images

SNR = 16:2:26;
for s=1:numel(SNR)
strr= ['../analysis/optimization/matlab/viterbi/manualOpt_fine_part1_new_snr' num2str(SNR(s)) '.mat'];
load(strr);
SumOfToleratedErrorProbabilities(s) = sum(tt);
end
clear tt
clear s
clear strr

%% calculate psnr
pic = imread('rome.png');
for i =1:numel(SNR)
   psnr_zero_imprecisions(i) = psnr(images_zero_imprecision{i},pic); 
   psnr_fitted_snr(i) = psnr(images_fitted_snr{i},pic); 
end


%%
figure
for n=1:6
   subplot(3,7,n);
   imshow(images_zero_imprecision{n});
end
for n=1:6
   subplot(3,7,n+7);
   imshow(images_fitted_snr{n});
end
subplot(3,7,15);
plot(SNR,SumOfToleratedErrorProbabilities);
subplot(3,7,18);

plot(SNR,psnr_zero_imprecisions,SNR,psnr_fitted_snr);
   