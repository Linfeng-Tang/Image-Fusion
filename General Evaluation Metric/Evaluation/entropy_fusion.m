function entropyR=entropy_fusion(grey_matrix,grey_level)
% Author:  Qu Xiao-Bo    <quxiaobo [at] xmu.edu.cn>    June 26, 2009
%          Postal address:
% Rom 509, Scientific Research Building # 2,Haiyun Campus, Xiamen University,Xiamen,Fujian, P. R. China, 361005
% Website: http://quxiaobo.go.8866.org
[row,column]=size(grey_matrix);
total=row*column;
% grey_level=256 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
counter=zeros(1,grey_level);
grey_matrix=grey_matrix+1;
for i=1:row
    for j=1:column
        indexx= grey_matrix(i,j);
        counter(indexx)=counter(indexx)+1;
    end
end
total= sum(counter(:));
index = find(counter~=0);
 p = counter/total;
entropyR= sum(sum(-p(index).*log2(p(index))));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%