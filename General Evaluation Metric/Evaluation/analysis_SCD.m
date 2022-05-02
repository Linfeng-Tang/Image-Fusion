function r=analysis_SCD(img1,img2,fus)
%% Emre Bende$ - ERU Computer Engineering - 2015
% calculates image quality metric value based on THE SUM OF THE CORRELATIONS OF DIFFERENCES (SCD). 
%inputs: img1 and img2 are the source images
%		 fus is the fused image
%
% Please site:
%	V. Aslantas and E. Bendes, 
%	"A new image quality metric for image fusion: The sum of the correlations of differences," 
%	AEU - International Journal of Electronics and Communications, vol. 69/12, pp. 1890-1896, 2015.
        r=corr2(fus-img2,img1)+corr2(fus-img1,img2);
end