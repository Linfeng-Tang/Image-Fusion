clc
clear all
easy = 1; %% easy=1 用于测试：EN, SF,SD,PSNR,MSE, MI, VIF, AG, CC, SCD, Qabf等指标； easy=0 用于测试：Nabf, SSIM, MS_SSIM, FMI_pixel, FMI_dct, FMI_w等指标
source_image_name1 = '..\Image\Source-Image\TNO\ir\01.png';
source_image_name2 = '..\Image\Source-Image\TNO\vi\01.png';
fused_image_name = '..\Image\Algorithm\SeAFusion_TNO\01.png';

ir_image = imread(source_image_name1);
vi_image = imread(source_image_name2);
fused_image   = imread(fused_image_name);
if size(ir_image, 3)>2
    ir_image = rgb2gray(ir_image);
end

if size(vi_image, 3)>2
    vi_image = rgb2gray(vi_image);
end

if size(fused_image, 3)>2
    fused_image = rgb2gray(fused_image);
end

[m, n] = size(fused_image);
        %     fused_image = fused_image(7:m-6, 7:n-6);
ir_size = size(ir_image);
vi_size = size(vi_image);
fusion_size = size(fused_image);
if length(ir_size) < 3 && length(vi_size) < 3
    [EN, SF,SD,PSNR,MSE, MI, VIF, AG, CC, SCD, Qabf, Nabf, SSIM, MS_SSIM, FMI_pixel, FMI_dct, FMI_w] = analysis_Reference(fused_image,ir_image,vi_image, easy);
    if easy == 1
        fprintf('EN = %.4f\n', EN)
        fprintf('MI = %.4f\n', MI)
        fprintf('SD = %.4f\n', SD)
        fprintf('SF = %.4f\n', SF)
        fprintf('MSE = %.4f\n', MSE)
        fprintf('PSNR = %.4f\n', PSNR)        
        fprintf('VIF = %.4f\n', VIF)
        fprintf('AG = %.4f\n', AG)
        fprintf('SCD = %.4f\n', SCD)
        fprintf('CC = %.4f\n', CC)
        fprintf('Qabf = %.4f\n', Qabf)
    else
        fprintf('Nabf = %.4f\n', Nabf)
        fprintf('SSIM = %.4f\n', SSIM)
        fprintf('MS_SSIM = %.4f\n', MS_SSIM)
        fprintf('FMI_pixel = %.4f\n', FMI_pixel)
        fprintf('FMI_dct = %.4f\n', FMI_dct)
        fprintf('FMI_w = %.4f\n', FMI_w)
    end
else
    disp('unsucessful!')
    disp( fileName_Fusion)
end