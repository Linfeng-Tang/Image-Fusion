function vifp=vifp_mscale(ref,dist)

% -----------COPYRIGHT NOTICE STARTS WITH THIS LINE------------
% Copyright (c) 2005 The University of Texas at Austin
% All rights reserved.
% 
% Permission is hereby granted, without written agreement and without license or royalty fees, to use, copy, 
% modify, and distribute this code (the source files) and its documentation for
% any purpose, provided that the copyright notice in its entirety appear in all copies of this code, and the 
% original source of this code, Laboratory for Image and Video Engineering (LIVE, http://live.ece.utexas.edu)
% at the University of Texas at Austin (UT Austin, 
% http://www.utexas.edu), is acknowledged in any publication that reports research using this code. The research
% is to be cited in the bibliography as:
% 
% H. R. Sheikh and A. C. Bovik, "Image Information and Visual Quality", IEEE Transactions on 
% Image Processing, (to appear).
% 
% IN NO EVENT SHALL THE UNIVERSITY OF TEXAS AT AUSTIN BE LIABLE TO ANY PARTY FOR DIRECT, INDIRECT, SPECIAL, INCIDENTAL, 
% OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OF THIS DATABASE AND ITS DOCUMENTATION, EVEN IF THE UNIVERSITY OF TEXAS
% AT AUSTIN HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
% 
% THE UNIVERSITY OF TEXAS AT AUSTIN SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
% WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE DATABASE PROVIDED HEREUNDER IS ON AN "AS IS" BASIS,
% AND THE UNIVERSITY OF TEXAS AT AUSTIN HAS NO OBLIGATION TO PROVIDE MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.
% 
% -----------COPYRIGHT NOTICE ENDS WITH THIS LINE------------
% 
% This software release consists of a MULTISCALE PIXEL DOMAIN, SCALAR GSM implementation of the algorithm described in the paper:
% 
% H. R. Sheikh and A. C. Bovik, "Image Information and Visual Quality"., IEEE Transactions on Image Processing, (to appear).
% Download manuscript draft from http://live.ece.utexas.edu in the Publications link.
% 
% THE PIXEL DOMAIN ALGORITHM IS NOT DESCRIBED IN THE PAPER. THIS IS A COMPUTATIONALLY SIMPLER
% DERIVATIVE OF THE ALGORITHM PRESENTED IN THE PAPER
% 
% Input : (1) img1: The reference image as a matrix
%         (2) img2: The distorted image (order is important)
% 
% Output: (1) VIF the visual information fidelity measure between the two images
% 
% Default Usage:
%    Given 2 test images img1 and img2, whose dynamic range is 0-255
% 
%    vif = vifvec(img1, img2);
% 
% Advanced Usage:
%    Users may want to modify the parameters in the code. 
%    (1) Modify sigma_nsq to find tune for your image dataset.
% Email comments and bug reports to hamid.sheikh@ieee.org


sigma_nsq=2;

num=0;
den=0;
for scale=1:4
   
    N=2^(4-scale+1)+1;
    win=fspecial('gaussian',N,N/5);
    
    if (scale >1)
        ref=filter2(win,ref,'valid');
        dist=filter2(win,dist,'valid');
        ref=ref(1:2:end,1:2:end);
        dist=dist(1:2:end,1:2:end);
    end
    
    mu1   = filter2(win, ref, 'valid');
    mu2   = filter2(win, dist, 'valid');
    mu1_sq = mu1.*mu1;
    mu2_sq = mu2.*mu2;
    mu1_mu2 = mu1.*mu2;
    sigma1_sq = filter2(win, ref.*ref, 'valid') - mu1_sq;
    sigma2_sq = filter2(win, dist.*dist, 'valid') - mu2_sq;
    sigma12 = filter2(win, ref.*dist, 'valid') - mu1_mu2;
    
    sigma1_sq(sigma1_sq<0)=0;
    sigma2_sq(sigma2_sq<0)=0;
    
    g=sigma12./(sigma1_sq+1e-10);
    sv_sq=sigma2_sq-g.*sigma12;
    
    g(sigma1_sq<1e-10)=0;
    sv_sq(sigma1_sq<1e-10)=sigma2_sq(sigma1_sq<1e-10);
    sigma1_sq(sigma1_sq<1e-10)=0;
    
    g(sigma2_sq<1e-10)=0;
    sv_sq(sigma2_sq<1e-10)=0;
    
    sv_sq(g<0)=sigma2_sq(g<0);
    g(g<0)=0;
    sv_sq(sv_sq<=1e-10)=1e-10;
    
    
     num=num+sum(sum(log10(1+g.^2.*sigma1_sq./(sv_sq+sigma_nsq))));
     den=den+sum(sum(log10(1+sigma1_sq./sigma_nsq)));
    
end
vifp=num/den;