clear all
clc

Format='*.png';

folder1='D:\Graduate\Personal_Paper\zhanghao\survey\2\医学图像融合\source_data\color\Test_ir';
folder2='D:\Graduate\Comparison\Comparison_IAFusion\Dataset\MSRS\vi_show';
folderf='D:\Graduate\Comparison\Comparison_IAFusion\DRF\DRF_Results_MSRS_show';
save_dir = 'D:\Graduate\Comparison\Comparison_IAFusion\DRF\DRF_Results_MSRS_all_RGB';   
if exist(save_dir,'dir')==0.
    mkdir(save_dir);
end
filepath2=dir(fullfile(folder2,Format));
filepathf=dir(fullfile(folderf,Format));

L=length(filepath2);
for pic=1:L
    img2=im2double(imread(fullfile(folder2,filepath2(pic).name)));
    imgf_y=im2double(imread(fullfile(folderf,filepathf(pic).name)));
%     imshow(imgf_y)
    [~, ~, c]= size(imgf_y);
    if c > 1
        imgf_y = rgb2gray(imgf_y);
    end
    imgf_y = double(imgf_y);
    save_name = fullfile(save_dir,filepathf(pic).name)
    [height,width,channel]=size(img2);
%     imshow(img2)
    if channel==3
        ycbcr2 = rgb2ycbcr(img2);
        cb2=ycbcr2(:,:,2);
        cr2=ycbcr2(:,:,3);
    end
    cbf = cb2;
    crf = cr2;
    if exist('cbf') && exist('crf')
        imgf_ycbcr(:,:,1)=imgf_y;
        imgf_ycbcr(:,:,2)=cbf;
        imgf_ycbcr(:,:,3)=crf;
        imgf=uint8(YCbCr2rgb(imgf_ycbcr) * 255.0);
    end
%     imshow(imgf)
    imwrite(imgf,save_name);
    clear imgf_ycbcr cb1 cb2 cf1 cf2 cbf crf
    
end