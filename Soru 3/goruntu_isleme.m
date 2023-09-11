clear all; 
clc;
close all;
 


imge = imread('C:\Users\Batikan\Desktop\islemeer\bsg.png');
image = rgb2gray(imge);
imshow(image)
[satir sutun] = size(image);
 
dosya = fopen('C:\Users\Batikan\Desktop\islemeer\parlaklikaz.txt', 'r')';
image_okunan = fscanf(dosya, '%d')';

COEF = [-1 -2 -1; 0 0 0; 1 2 1];
 %image_okunan(262144) = 0;
for n_i = 1 : satir
for n_j = 1 : sutun
yeni_image(n_i,n_j)= image_okunan(((n_i-1)*sutun) + n_j);

end
end

fclose (dosya) ;

figure,imshow(uint8(yeni_image)) 
 

 






