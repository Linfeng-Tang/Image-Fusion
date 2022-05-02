clear all
clc

% load timecost timecost
% method={'DCHWT','FPDE','GTF','FusionGAN','Structure-Aware','MWGAN'};
% method={'GTF', 'LatLrr', 'WLS', 'DenseFuse', 'VggML', 'FusionGAN', 'IFCNN', 'ResNet-ZCA', 'PMGI', 'STMFusionNet1'};
method = {'GTF', 'MDLatLrr', 'DenseFuse', 'NestFuse', 'FusionGAN', 'GANMcC', 'IFCNN',  'PMGI', 'U2Fusion','STDFusionNet'};
% rows = ['A', 'B', 'C', 'D' , 'E', 'F', 'G', 'H', 'I', 'J'];
begin_col='A';
end_col='J';
imagepairs=1:end_col-begin_col+1;
% metric={'EN','SF','SD','PSNR','MSE','MI','VIF','AG','CC','SCD','Qabf','Nabf','SSIM','MS_SSIM','FMI_pixel','FMI_dct', 'FMI_w'};
metric={'EN','SF','MI','VIF'};
Sheet='Sheet4';
begin_row=[2,14,26,38,50,62];
end_row=begin_row+length(method)-1;

RES=zeros(length(method),length(imagepairs),length(metric));


sl=1;sp=8;
% file_name = 'metric\Index_TNO.xlsx';
file_name = 'metric\Index_RoadScene_sort.xlsx';
for i = 1:length(metric)
    method_name = cell2mat(metric(i));
    [metric_, method_] = xlsread(file_name, method_name);
    color=[34/255   139/255   34/255   ; 
              1      215/255      0     ;
              1         0         1     ; 
              0         1         1     ; 
             0.5        0        0.5    ; 
              0.5        1        0     ;
              1         1         0     ;
              1        0          0.5   ;
              1        0.5        0     ;
              1         0         0     ];
     linestyle={'-*', '-o', '-x', '-s', '-d', '-hexagram', '-^',  '-v',  '-+', '-p'};
     marker={'*','o','x','s','d','hexagram','^', 'v', '+','p'};
     metric_ = metric_';
     metric_ = sort(metric_,2);
     imagepairs = 1:size(metric_, 2);
     x=imagepairs;
     for j=1:length(method_)
        f(j)=plot(x,metric_(j,:),linestyle{j},'LineWidth',sl,'Color',color(j,:),'MarkerEdgeColor',color(j,:),'MarkerSize',sp);
        hold on
        mean_val(j,i)=roundn(mean(metric_(j,:)),-4);
        leg{j}=strcat(method{j},': ',num2str(mean_val(j,i)));
     end
    hold off
    dy=max(max(metric_(:,:)))-min(min(metric_(:,:)));
    ymin=roundn(min(min(metric_(:,:)))-0.05*dy,-2);
    ymax=roundn(max(max(metric_(:,:)))+0.05*dy,-2);
    axis([0 length(x)+10 ymin ymax]);
  
    title(char(metric(i)),'FontName','Arial','fontsize',17,'FontWeight','bold');
%     L=legend(leg);
%     set(L,'FontName','Arial','Fontsize',15, 'Location','North');
    xlabel('Image pairs','FontName','Arial', 'fontsize',17);
    ylabel('Values of the metric','FontName','Arial', 'fontsize',17);
    set(gca,'FontName','Arial','FontSize',15);
    
    hold on
    %»­Ïß
    x2=length(imagepairs)/2+1;
%     x0=[[1,x2,1,x2,1,x2];[1+1,x2+1,1+1,x2+1,1+1,x2+1]];
%     y0=[[max(max(RES(:,:,i)))+0.39*dy,max(max(RES(:,:,i)))+0.39*dy,max(max(RES(:,:,i)))+0.26*dy,max(max(RES(:,:,i)))+0.26*dy,max(max(RES(:,:,i)))+0.13*dy,max(max(RES(:,:,i)))+0.13*dy];
%         [max(max(RES(:,:,i)))+0.39*dy,max(max(RES(:,:,i)))+0.39*dy,max(max(RES(:,:,i)))+0.26*dy,max(max(RES(:,:,i)))+0.26*dy,max(max(RES(:,:,i)))+0.13*dy,max(max(RES(:,:,i)))+0.13*dy]];
%     x0=[[1,x2,1,x2,1,x2,1,x2, 1, x2];[1+1,x2+1,1+1,x2+1,1+1,x2+1,1+1,x2+1, 1+1, x2+1]];
%     y0=[[max(max(metric_(:,:)))+0.53*dy,max(max(metric_(:,:)))+0.53*dy, max(max(metric_(:,:)))+0.43*dy,max(max(metric_(:,:)))+0.43*dy,max(max(metric_(:,:)))+0.33*dy,max(max(metric_(:,:)))+0.33*dy,max(max(metric_(:,:)))+0.23*dy,max(max(metric_(:,:)))+0.23*dy,max(max(metric_(:,:)))+0.13*dy,max(max(metric_(:,:)))+0.13*dy];
%         [max(max(metric_(:,:)))+0.53*dy,max(max(metric_(:,:)))+0.53*dy, max(max(metric_(:,:)))+0.43*dy,max(max(metric_(:,:)))+0.43*dy,max(max(metric_(:,:)))+0.33*dy,max(max(metric_(:,:)))+0.33*dy,max(max(metric_(:,:)))+0.23*dy,max(max(metric_(:,:)))+0.23*dy,max(max(metric_(:,:)))+0.13*dy,max(max(metric_(:,:)))+0.13*dy]];
    x0=[[21, 21, 21, 21, 21, 21, 21, 21, 21, 21];[23, 23, 23, 23, 23, 23, 23, 23, 23, 23]];
    y0=[[min(min(metric_(:,:))) + 0.93*dy, min(min(metric_(:,:))) + 0.83*dy, min(min(metric_(:,:))) + 0.73*dy, min(min(metric_(:,:))) + 0.63*dy, min(min(metric_(:,:))) + 0.53*dy, min(min(metric_(:,:))) + 0.43*dy, min(min(metric_(:,:))) + 0.33*dy, min(min(metric_(:,:))) + 0.23*dy, min(min(metric_(:,:))) + 0.13*dy, min(min(metric_(:,:))) + 0.03*dy];
        [min(min(metric_(:,:))) + 0.93*dy, min(min(metric_(:,:))) + 0.83*dy, min(min(metric_(:,:))) + 0.73*dy, min(min(metric_(:,:))) + 0.63*dy, min(min(metric_(:,:))) + 0.53*dy, min(min(metric_(:,:))) + 0.43*dy, min(min(metric_(:,:))) + 0.33*dy, min(min(metric_(:,:))) + 0.23*dy, min(min(metric_(:,:))) + 0.13*dy, min(min(metric_(:,:))) + 0.03*dy]];
    
    h0=plot(x0,y0);
    hold on
    %»­µã
    x1=[x0(1,:)+1;x0(1,:)+1];
    y1=y0;
    h1=plot(x1,y1);
    
    %legend
    tx=x0(1,:)+2.2;
    ty=y0(1,:);
    for k=1:length(method_)
        set(h0(k),'LineStyle','-','LineWidth',sl,'Color',color(k,:));
        set(h1(k),'Marker',marker{k},'MarkerEdgeColor',color(k,:),'MarkerSize',sp);
        text(tx(k),ty(k),leg{k},'fontsize',12);
    end
    save_dir =  'Metric_RoadScene';
    if exist(save_dir,'dir')==0
        mkdir(save_dir);
    end
    saveas(gcf, strcat(save_dir, '/', method_name), 'epsc')
    hold off
end