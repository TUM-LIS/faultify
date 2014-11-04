clear all;
usewebcam = 0
if usewebcam
    cam = webcam(1);
    vidHeight = 720;
    vidWidth = 1280;
else
    xyloObj = VideoReader('xylophone.mp4');
    vidHeight = xyloObj.Height;
    vidWidth = xyloObj.Width;

end

numPixels = vidHeight*vidWidth;

loadlibrary libbitmanipulation.so bitmanipulation.h


bitProbs = [5E-8 5E-7 5E-6 5E-5 5E-4 5E-3 5E-2 5E-1];
%bitProbs = [1E-4 1E-3 1E-2 1E-1 2E-1 3E-1 4E-1 5E-1];

for idx=1:100
   tstart = tic;
   if usewebcam 
       original = snapshot(cam);
   else
       original = read(xyloObj,idx);
   end
   rn = rand(1,3*numPixels*8);
   rm = repmat(bitProbs,1,3*numPixels);
   fa = rn<rm;
   dc = bin2dec_clib(fa);
   rs = reshape(dc,vidHeight,vidWidth,3);
   faulty = bitxor(uint8(rs),original);
   subplot(1,2,1)
   image(faulty)
   subplot(1,2,2)
   image(original)
   drawnow
   telapsed = toc(tstart);
   fps = 1/telapsed
end


clear('cam')
