function PSNR = PSNR_evaluation(A,B,F)
[m,n]=size(F);
MSE_AF=sum(sum((F-A).^2))/(m*n);
MSE_BF=sum(sum((F-B).^2))/(m*n);
MSE=0.5*MSE_AF+0.5*MSE_BF; 
PSNR=20*log10(255/sqrt(MSE));
end