function HabR=Hab(grey_matrixA,grey_matrixB,grey_level)
% HabR=Hab(grey_matrixA,grey_matrixB,grey_level)
% compute mutural information of the image
% grey_matrixA , grey_matrixB,grey_matrixF are grey values of imageA,imageB and fusion image
% grey_level is the grayscale degree of image
% ---------
% Author:  Qu Xiao-bo    <quxiaobo429@163.com>    May 7,2006
%          Postal address:
%          Xiamen University, Department of Communication Engineering
%          Xiamen, Fujian, P. R. China, 361005  
[row,column]=size(grey_matrixA);
counter = zeros(256,256);
%统计直方图
grey_matrixA=grey_matrixA+1;
grey_matrixB=grey_matrixB+1;
for i=1:row
    for j=1:column
        indexx = grey_matrixA(i,j);
        indexy = grey_matrixB(i,j);
        counter(indexx,indexy) = counter(indexx,indexy)+1;%联合直方图
    end
end
%计算联合信息熵
total= sum(counter(:));
index = find(counter~=0);
p = counter/total;
HabR = sum(sum(-p(index).*log2(p(index))));
        
        
