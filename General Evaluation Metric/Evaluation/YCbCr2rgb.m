function [img_rgb] = YCbCr2rgb(img)
[m, n, dim]=size(img);
Y=img(:,:,1);
Cb=img(:,:,2);
Cr=img(:,:,3);
matrix=[1.164 0 1.596;
    1.164 -0.392 -0.813;
    1.164 2.017 0];
for i=1:m
    for j=1:n
        tmp=matrix*[Y(i,j)-16.0 /255.0 Cb(i,j)-128.0 /255.0 Cr(i,j)-128.0 / 255.0]';
        R(i,j)=tmp(1);
        G(i,j)=tmp(2);
        B(i,j)=tmp(3);
    end
end
img_rgb(:,:,1)=R;
img_rgb(:,:,2)=G;
img_rgb(:,:,3)=B;
end

