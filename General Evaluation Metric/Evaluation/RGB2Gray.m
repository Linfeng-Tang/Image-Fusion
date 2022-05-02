fileFolder=fullfile('D:\Desktop\RoadScene\TNO_vi_select');
dirOutput=dir(fullfile(fileFolder,'*.bmp'));
fileNames = {dirOutput.name};
[m, num] = size(fileNames);
ir_dir = 'D:\Desktop\RoadScene\TNO_vi_select\';
vi_dir = 'D:\Graduate\Method-Comparison\New_Test_vi\';
% Fused_dir = 'F:\Graduate\Method-Comparison\';
%     Fused_dir = 'F:\Graduate\Desktop\RoadScene\';
Fused_dir = 'D:\Desktop\RoadScene\TNO_vi_select\';
 if exist(Fused_dir,'dir')==0
	mkdir(Fused_dir);
 end
for i = 1:num
%         disp('---------------------------Analysis---------------------------');

	fileName_source_ir = strcat(ir_dir, fileNames{i});
    fileName_Fusion = strcat(Fused_dir, fileNames{i});
    image_ir = imread(fileName_source_ir);
    if size(image_ir, 3)>2
        fused_image = rgb2gray(image_ir);
    else
        fused_image = image_ir;
    end
    imwrite(fused_image, fileName_Fusion)
end