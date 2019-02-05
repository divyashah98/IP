clear all;
close all;
clc;
a=imread('cameraman.tif');
b=imresize(a,[256 256]);
subplot(3,3,1);
imshow(b);
title('original')

mask1=(1/9)*[1 1 1;1 1 1;1 1 1];

e=zeros(256,256);

for i=2:255
    for j=2:255
        e(i,j)=sum(sum(mask1.*double(b(i-1:i+1,j-1:j+1))));
    end
end

subplot(3,3,2);
f=uint8(e);
imshow(f);
title('low pass')

g=zeros(256,256);
mask2=[-1 -1 -1;-1 8 -1;-1 -1 -1];
for i=2:255
    for j=2:255
        g(i,j)=sum(sum(mask2.*double(b(i-1:i+1,j-1:j+1))));
    end
end

subplot(3,3,3);

imshow(uint8(g));
title('high pass')


h=zeros(256,256);
mask3=[-1 -1 -1;-1 8.9 -1;-1 -1 -1];
for i=2:255
    for j=2:255
        h(i,j)=sum(sum(mask2.*double(b(i-1:i+1,j-1:j+1))));
    end
end

subplot(3,3,4);

imshow(uint8(h));
title('high boost')


i=imnoise(b,'salt & pepper',0.1);
j=medfilt2(i);
subplot(3,3,5);
imshow(uint8(j));
title('median')



mask5=(1/9)*[1 1 1 1 1;1 1 1 1 1;1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1];

k=zeros(256,256);

for i=3:254
    for j=3:254
        e1(i,j)=sum(sum(mask5.*double(b(i-2:i+2,j-2:j+2))));
    end
end

subplot(3,3,6);
f1=uint8(e1);
imshow(f1);
title('low pass')


g1=zeros(256,256);
mask2=[-1 -1 -1 -1 -1;-1 -1 -1 -1 -1;-1 -1 24 -1 -1 ; -1 -1 -1 -1 -1; -1 -1 -1 -1 -1 ];
for i=3:254
    for j=3:254
        g1(i,j)=sum(sum(mask2.*double(b(i-2:i+2,j-2:j+2))));
    end
end

subplot(3,3,7);
imshow(uint8(g1));
title('high pass')


lp=(1/16)*[1 2 1;2 4 2;1 2 1];
for i=2:255
    for j=2:255
        g2(i,j)=sum(sum(lp.*double(b(i-1:i+1,j-1:j+1))));
    end
end

subplot(3,3,8);
imshow(uint8(g2));
title('weighted avg')



