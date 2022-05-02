function mutural_informationR=mutural_information(grey_matrixA,grey_matrixB,grey_matrixF,grey_level)
% mutural_informationR=mutural_information(grey_matrixA,grey_matrixB,grey_matrixF,grey_level)
% compute mutural information of the image
% grey_matrixA , grey_matrixB,grey_matrixF are grey values of imageA,imageB and fusion image
% grey_level is the grayscale degree of image
% please set grey_level=256
% ---------
% Author:  Qu Xiao-Bo    <quxiaobo [at] xmu.edu.cn>    June 26, 2009
%          Postal address:
% Rom 509, Scientific Research Building # 2,Haiyun Campus, Xiamen University,Xiamen,Fujian, P. R. China, 361005
% Website: http://quxiaobo.go.8866.org
HA=entropy(grey_matrixA);
HB=entropy(grey_matrixB);
HF=entropy(grey_matrixF);
HFA=Hab(grey_matrixF,grey_matrixA,grey_level);
HFB=Hab(grey_matrixF,grey_matrixB,grey_level);
MIFA=HA+HF-HFA;
MIFB=HB+HF-HFB;
mutural_informationR=MIFA+MIFB;
