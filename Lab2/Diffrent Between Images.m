%I = imread('I1.jpg');
%J = imread('I2.jpg');
%X = abs(I-J);
%Z = uint8(X * 255);
%p = uint8(I + X);
%figure, imshow(I),title('Orig img');
%figure, imshow(Z),title('Different');
