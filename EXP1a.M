clear all;
close all;
a=imread('C:\Users\djsce.student\Desktop\IPVP lab\djsanghvilogo1.jpg');
figure(1)
imshow(a)

b=imresize(a,[256 256]);
figure(2)
imshow(b)

c = rgb2gray(b);
figure(3)
imshow(c)

d = im2bw(b,0.8);
figure(4)
imshow(d)

r=a(:,:,1);
figure(5)
imshow(r)

g=a(:,:,2);
figure(6)
imshow(g)

blue=a(:,:,3);
figure(7)
imshow(blue)

combine=cat(3,r,g,blue);
figure(8)
imshow(combine)

rotate1=imrotate(a,-45,'loose');
figure(9)
imshow(rotate1)

rotate2=imrotate(a,-45,'bilinear','crop');
figure(9)
imshow(rotate2)

h=maketform('affine',[1 0.8 0;0.5 1 0;0 0 1]);
i2=imtransform(a,h);
figure(10)
imshow(i2)


