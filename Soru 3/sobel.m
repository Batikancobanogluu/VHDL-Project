
clear all; 
clc;
close all;
 
imge = imread('C:\Users\Batikan\Desktop\islemeer\bsg.png');
y = rgb2gray(imge);
z=edge(y,'sobel');
imshow(z);
function [ ] = Sobel( adres )
r=imread(adres);
g=rgb2gray(r);
t=double(g);
[x,y]=size(t);
for i=2:x-1
for j=2:y-1
k1=t(i-1,j+1)+2*t(i,j+1)+t(i+1,j+1)...
-(t(i-1,j-1)+2*t(i,j-1)+t(i+1,j-1));
k2=t(i-1,j-1)+2*t(i-1,j)+t(i-1,j+1)...
-(t(i+1,j-1)+2*t(i+1,j)+t(i+1,j+1));

g(i,j)=sqrt(k1^2+k2^2);
end
end
imshow(g);
end