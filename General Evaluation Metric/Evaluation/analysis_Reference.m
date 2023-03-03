function [EN, SF, SD, PSNR, MSE, MI, VIF, AG, CC, SCD, Qabf, Nabf, SSIM, MS_SSIM, FMI_pixel, FMI_dct, FMI_w] = analysis_Reference(img_f,img1,img2, easy)
    % 输入的img_f, img1, and img2 均是Uint8型，
    % 计算EN和MI是需要使用uint8的数据，其他指标均转换成float型的数据，
    % 计算MSE和PSNR时数据归一化到[0-1]，其他指标计算时数据的范围均是[0-255]
    grey_level = 256;
    [s1,s2] = size(img1);
    img1_int = img1;
    img2_int = img2;
    img_f_int = img_f;
    img1_float = im2double(img1) * 255.0;
    img2_float = im2double(img2) * 255.0;
    img_f_float = im2double(img_f) * 255.0;
    imgSeq = zeros(s1, s2, 2);
    imgSeq(:, :, 1) = img1_float;
    imgSeq(:, :, 2) = img2_float;
    if easy ==1
        %EN
        EN = entropy(img_f_int);        
        %MI
        MI = MI_evaluation(img1_int, img2_int, img_f_int, grey_level);        
        %PSNR
        PSNR = PSNR_evaluation(img1_float, img2_float, img_f_float);
        %MSE
        MSE = MSE_evaluation(img1_float, img2_float, img_f_float);
        %SF
        SF = SF_evaluation(img_f_float);
        %SD
        SD = SD_evaluation(img_f_float);
        %VIF
        VIF = vifp_mscale(img1_float, img_f_float) + vifp_mscale(img2_float, img_f_float);
        %AG
        AG = AG_evaluation(img_f_float);
        %CC
        CC = CC_evaluation(img1_float, img2_float, img_f_float);
        %SCD
        SCD = analysis_SCD(img1_float, img2_float, img_f_float);        %Qabf
        Qabf = analysis_Qabf(img1_float, img2_float, img_f_float);
        Nabf = 1;
        SSIM = 1;
        MS_SSIM = 1;
        FMI_pixel = 1;
        FMI_dct = 1;
        FMI_w = 1; 
    else
        %EN
        EN = 1;

        %SF
        SF = 1;
        %SD
        SD = 1; 
        %PSNR
        PSNR =1; 
        %MSE
        MSE = 1; 
        %MI
        MI = 1; 
        %VIF
        VIF = 1; 
        %AG
        AG = 1; 
        %CC
        CC = 1; 
        %SCD
        SCD = 1; 
        %Qabf
        Qabf = 1;
        % %Nabf
        Nabf = analysis_nabf(img1_float, img2_float, img_f_float);
        % SSIM_a
        SSIM1 = ssim(img_f_float,img1_float);
        SSIM2 = ssim(img_f_float,img2_float);
        SSIM = 0.5 * SSIM1 + 0.5 * SSIM2;
%         SSIM = mef_ssim(imgSeq, img_f);
        %MS_SSIM
        [MS_SSIM,t1,t2]= analysis_ms_ssim(imgSeq, img_f_float);
        %FMI
        FMI_pixel = analysis_fmi(img1_float, img2_float, img_f_float);
        FMI_dct = analysis_fmi(img1_float, img2_float, img_f_float,'dct');
        FMI_w = analysis_fmi(img1_float, img2_float, img_f_float,'wavelet');
    end
end
