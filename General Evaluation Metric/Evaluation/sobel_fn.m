function [gv gh]=sobel_fn(x)

%%% sobel_fn: Computes the vertical & horizontal edges of x using sobel operator.
%%% 
%%% [gv gh]=sobel_fn(x) 
%%%
%%% Author : B. K. SHREYAMSHA KUMAR 
%%% Created on 28-10-2011.
%%% Updated on 28-10-2011.


vtemp=[-1 0 1;-2 0 2;-1 0 1]/8;
htemp=[-1 -2 -1;-0 0 0;1 2 1]/8;

[a b]=size(htemp);
x_ext=per_extn_im_fn(x,a);
[p,q]=size(x_ext);
for ii=2:p-1
   for jj=2:q-1
      gv(ii-1,jj-1)=sum(sum(x_ext(ii-1:ii+1,jj-1:jj+1).*vtemp));
      gh(ii-1,jj-1)=sum(sum(x_ext(ii-1:ii+1,jj-1:jj+1).*htemp));
   end
end