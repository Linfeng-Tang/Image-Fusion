function [xout_ext]=per_extn_im_fn(x,wsize)

%%% per_extn_im_fn: Periodic extension of the given image in 4 directions.
%%% 
%%% xout_ext=per_extn_im_fn(x,wsize) Periodic extension by (wsize-1)/2 on all 4 sides
%%% wsize should be odd.
%%% Example:
%%%   Y = per_extn_im_fn(X, 5);    % Periodically extends 2 rows and 2 columns in all sides.
%%%
%%% Author : B. K. SHREYAMSHA KUMAR 
%%% Created on 15-10-2011.
%%% Updated on 15-10-2011.

hwsize=(wsize-1)/2; %%% Half window size excluding centre pixel.

[p,q]=size(x); 
xout_ext=zeros(p+wsize-1,q+wsize-1); 
xout_ext(hwsize+1:p+hwsize,hwsize+1:q+hwsize)=x;

%%% Row-wise periodic extension.
xout_ext(1:hwsize,:)=xout_ext(wsize:-1:hwsize+2,:); 
xout_ext(p+hwsize+1:p+wsize-1,:)=xout_ext(p+hwsize-1:-1:p,:); 

%%% Column-wise periodic extension.
xout_ext(:,1:hwsize)=xout_ext(:,wsize:-1:hwsize+2); 
xout_ext(:,q+hwsize+1:q+wsize-1)=xout_ext(:,q+hwsize-1:-1:q); 