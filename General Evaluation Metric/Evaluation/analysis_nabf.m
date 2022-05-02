function [NABF]=analysis_nabf(f,I1,I2)
% function [QABF,LABF,NABF,NABF1]=objective_fusion_perform_fn(f,I1,I2)
% 
%%% objective_fusion_perform_fn: Computes the Objective Fusion Performance Parameters proposed by Petrovic
%%% and modified Fusion Artifacts (NABF) measure proposed by B. K. Shreyamsha Kumar
%%% 
%%% Inputs: 
%%% xrcw -> fused image
%%% x -> source images, x{1}, x{2}
%%%
%%% Outputs:
%%% QABF -> Total information transferred from source images to fused image measure proposed by Petrovic
%%% LABF -> Total loss of information measure proposed by Petrovic
%%% NABF1 -> Fusion Artifacts measure proposed by Petrovic
%%% NABF -> Modified Fusion Artifacts measure proposed by B. K. Shreyamsha Kumar
%%%
%%% Author : B. K. SHREYAMSHA KUMAR 
%%% Created on 28-10-2011.
%%% Updated on 08-11-2011.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Petrovic Metrics %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Parameters for Petrovic Metrics Computation.
Td=2;       
wt_min=0.001;
P=1;        
Lg=1.5;     
Nrg=0.9999; 
kg=19;      
sigmag=0.5; 
Nra=0.9995; 
ka=22;      
sigmaa=0.5; 

xrcw = (f);
x1 = (I1);
x2 = (I2);

%%% Edge Strength & Orientation.
[gvA,ghA]=sobel_fn(x1);
gA=sqrt(ghA.^2+gvA.^2);

[gvB,ghB]=sobel_fn(x2);
gB=sqrt(ghB.^2+gvB.^2);

[gvF,ghF]=sobel_fn(xrcw);
gF=sqrt(ghF.^2+gvF.^2);

%%% Relative Edge Strength & Orientation.
[p,q]=size(xrcw);
for ii=1:p
   for jj=1:q
      if(gA(ii,jj)==0 | gF(ii,jj)==0)
         gAF(ii,jj)=0;
      elseif(gA(ii,jj)>gF(ii,jj))
         gAF(ii,jj)=gF(ii,jj)/gA(ii,jj);
      else
         gAF(ii,jj)=gA(ii,jj)/gF(ii,jj);
      end
      if(gB(ii,jj)==0 | gF(ii,jj)==0)
         gBF(ii,jj)=0;      
      elseif(gB(ii,jj)>gF(ii,jj))
         gBF(ii,jj)=gF(ii,jj)/gB(ii,jj);
      else
         gBF(ii,jj)=gB(ii,jj)/gF(ii,jj);
      end
      if(gvA(ii,jj)==0 & ghA(ii,jj)==0)
         aA(ii,jj)=0;
      else
         aA(ii,jj)=atan(gvA(ii,jj)/ghA(ii,jj));
      end      
      if(gvB(ii,jj)==0 & ghB(ii,jj)==0)
         aB(ii,jj)=0;
      else
         aB(ii,jj)=atan(gvB(ii,jj)/ghB(ii,jj));
      end
      if(gvF(ii,jj)==0 & ghF(ii,jj)==0)
         aF(ii,jj)=0;
      else
         aF(ii,jj)=atan(gvF(ii,jj)/ghF(ii,jj));
      end      
   end
end
aAF=abs(abs(aA-aF)-pi/2)*2/pi;
aBF=abs(abs(aB-aF)-pi/2)*2/pi;


%%% Edge Preservation Coefficient.
QgAF=Nrg./(1+exp(-kg*(gAF-sigmag)));
QaAF=Nra./(1+exp(-ka*(aAF-sigmaa)));
QAF=sqrt(QgAF.*QaAF);
QgBF=Nrg./(1+exp(-kg*(gBF-sigmag)));
QaBF=Nra./(1+exp(-ka*(aBF-sigmaa)));
QBF=sqrt(QgBF.*QaBF);

%%% Total Fusion Performance (QABF).
wtA=wt_min*ones(p,q);
wtB=wt_min*ones(p,q);
cA=ones(p,q); cB=ones(p,q);
for ii=1:p
   for jj=1:q
      if(gA(ii,jj)>=Td)
         wtA(ii,jj)=cA(ii,jj)*gA(ii,jj)^Lg;
      end
      if(gB(ii,jj)>=Td)
         wtB(ii,jj)=cB(ii,jj)*gB(ii,jj)^Lg;
      end
   end
end
wt_sum=sum(sum(wtA+wtB));
QAF_wtsum=sum(sum(QAF.*wtA))/wt_sum;  %% Information Contributions of A.
QBF_wtsum=sum(sum(QBF.*wtB))/wt_sum;  %% Information Contributions of B.
QABF=QAF_wtsum+QBF_wtsum;   %% QABF=sum(sum(QAF.*wtA+QBF.*wtB))/wt_sum -> Total Fusion Performance.

%%% Fusion Gain (QdeltaABF).
Qdelta=abs(QAF-QBF);
QCinfo=(QAF+QBF-Qdelta)/2;
QdeltaAF=QAF-QCinfo;
QdeltaBF=QBF-QCinfo;
QdeltaAF_wtsum=sum(sum(QdeltaAF.*wtA))/wt_sum;
QdeltaBF_wtsum=sum(sum(QdeltaBF.*wtB))/wt_sum;
QdeltaABF=QdeltaAF_wtsum+QdeltaBF_wtsum;   %% Total Fusion Gain.
QCinfo_wtsum=sum(sum(QCinfo.*(wtA+wtB)))/wt_sum;
QABF11=QdeltaABF+QCinfo_wtsum;              %% Total Fusion Performance.

%%% Fusion Loss (LABF).
rr=zeros(p,q);
for ii=1:p
   for jj=1:q
      if(gF(ii,jj)<=gA(ii,jj) | gF(ii,jj)<=gB(ii,jj))
         rr(ii,jj)=1;
      else
         rr(ii,jj)=0;
      end
   end
end
LABF=sum(sum(rr.*((1-QAF).*wtA+(1-QBF).*wtB)))/wt_sum;

%%% Fusion Artifacts (NABF) by Petrovic.
for ii=1:p
   for jj=1:q
      if(gF(ii,jj)>gA(ii,jj) & gF(ii,jj)>gB(ii,jj))
         na1(ii,jj)=2-QAF(ii,jj)-QBF(ii,jj);
      else
         na1(ii,jj)=0;         
      end
   end
end
NABF1=sum(sum(na1.*(wtA+wtB)))/wt_sum;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Fusion Artifacts (NABF) changed by B. K. Shreyamsha Kumar .
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for ii=1:p
   for jj=1:q
      if(gF(ii,jj)>gA(ii,jj) & gF(ii,jj)>gB(ii,jj))
         na(ii,jj)=1;
      else
         na(ii,jj)=0;         
      end
   end
end
NABF=sum(sum(na.*((1-QAF).*wtA+(1-QBF).*wtB)))/wt_sum;

QABF+LABF+NABF1;
QABF+LABF+NABF;