img = imread('Moire1.bmp');
img = rgb2gray(img);
img = im2double(img);
figure , imshow(img,[]),title("GrayImg");
img = fft2(img);
figure , imshow(img,[]),title("Fourir Img");
img = fftshift(img);
figure , imshow(img,[]),title("Shiftted Img");
figure , imshow(log(abs(img)),[]),title("Log Img");
[W H] = size(img);
mask = ones(size(img));
mask(283:254,64:99) = 0;
mask(274:249,109:135) = 0;
mask(261:238,203:226) = 0;
mask(255:228,244:272) = 0;
for i = 1 : W
   for j = 1 : H
       img(i,j) = img(i,j) * mask(i,j);  
   end
end
img = ifftshift(img);
img = ifft2(img);
figure,imshow(img),title("OutPut Image");