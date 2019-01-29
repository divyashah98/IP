clear all;
close all;
a=imread('coins.png');
b=imresize(a,[256 256]);


subplot(4,4,1)
imshow(b)
title('original')

for i=1:256
    for j=1:256
        d(i,j)=255-b(i,j);
    end
end

b1=b(:);
d1=d(:)

subplot(4,4,2)
imshow(d)
title('negative')

subplot(4,4,3)
stem(b1,d1)
title('graph')
b2=zeros(256,256);
for i=1:256
    for j=1:256
       
        if(b(i,j)<80)
            b2(i,j)=0;
        else
            b2(i,j)=255;
        end
    end
end


subplot(4,4,4)
stem(b(:),b2(:))
title('threshold')


b3=zeros(256,256);
for i=1:256
    for j=1:256
       
        if(b(i,j)<80 || b(i,j)>150)
            b3(i,j)=0;
        else
            b3(i,j)=255;
        end
    end
end


subplot(4,4,5)
stem(b(:),b3(:))
title('gray level slicing')


for i=1:256
    for j=1:256
       
        if(b(i,j)<80 || b(i,j)>150)
            b4(i,j)=b(i,j);
        else
            b4(i,j)=255;
        end
    end
end


subplot(4,4,6)
stem(b(:),b4(:))
title('gray level slicing')

b5=im2double(b);

for i=1:256
    for j=1:256
       
      b6(i,j)=150*log(1+b5(i,j));
    end
end


subplot(4,4,7)
stem(b(:),b6(:))
title('log transform')

gamma=5;
for i=1:256
    for j=1:256
       
      b7(i,j)=150*power(b5(i,j),gamma);
    end
end


subplot(4,4,8)
stem(b(:),b7(:))
title('powe law transform')


