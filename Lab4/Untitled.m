
I = imread('Moire1.bmp');
img= im2double(I);
img= rgb2gray(img);
img= fft2(img);
%imshow(img,[]);
img= fftshift(img);
%img=abs(img);

figure, imshow(log(img),[]);
H=ones(size(img));
x=10;
H(241-x:256+x ,209-x:229+x)=0;
H(232-x:242+x ,253-x:269+x)=0;
res=img.*H;
figure, imshow(res,[]);
imge= ifftshift(res);
imge= ifft2(imge);
figure, imshow(imge,[]);

% [row,col ] = size(img);
% H=ones(size(img));
% x=10;
% trans=fft2(img);
% shift=fftshift(trans);
% y=log(shift);
% 
% imshow(y), title('2');
% 
% %ifft2(img);
% %ifftshift(img);
% %H(165-x:169+x ,127-x:131+x)=0;
% for i = 1 : row
%     for j = 1 : col
%     %new=H*img(i,j);
%     end


