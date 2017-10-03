defImage = pow2(get(0,'DefaultImageCData'),47);
imgCell = repmat({zeros(size(defImage))},8,7);
for shift = 0:52
  imgCell{shift+1} = bitrotate(defImage,shift);
end;
allImages = cell2mat(imgCell.');
imshow(allImages,[min(allImages(:)) max(allImages(:))]);