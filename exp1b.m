clear all;
close all;
c1=imread('C:\Users\djsce.student\Desktop\IPVP lab\c1.jpg');
c2=imread('C:\Users\djsce.student\Desktop\IPVP lab\c2.jpg');
c3=imread('C:\Users\djsce.student\Desktop\IPVP lab\c3.jpg');
figure(1)

subplot(3,3,1)
title('C1')
imshow(c1)

subplot(3,3,2)
title('C2')
imshow(c2)

subplot(3,3,3)
title('C3')
imshow(c3)

sub2=imsubtract(c1,c2);
subplot(3,3,4)
title('subtraction2')
imshow(sub2)

add=imadd(c3,sub2);
subplot(3,3,5)
title('addition')
imshow(add)

c4=c1-c2;
subplot(3,3,6)
title('subtract')
imshow(c4)


c5=c3+c4;
subplot(3,3,7)
title('add')
imshow(c5)

c6=c1+50;
subplot(3,3,8)
title('+50')
imshow(c6)

c6=c1-80;
subplot(3,3,9)
title('-50')
imshow(c6)

p=ones(3,3);
q=zeros(3,3);
A=[p q p q; p q p q;p q p q;p q p q];
B=transpose(A);
t=A&B;
J=A|B;
Z=xor(A,B);
N=~A;

figure(2)

subplot(3,2,1)
title('A')
imshow(A)

subplot(3,2,2)
title('B')
imshow(B)

subplot(3,2,3)
title('AND')
imshow(t)

subplot(3,2,4)
title('or')
imshow(J)

subplot(3,2,5)
title('XOR')
imshow(Z)

subplot(3,2,6)
title('NOT')
imshow(Z)
