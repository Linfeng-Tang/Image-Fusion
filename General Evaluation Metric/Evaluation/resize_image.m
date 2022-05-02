clc
clear all

source_dir = 'D:\Graduate\Comparison\Comparison_IAFusion\Dataset\RoadScene_VI';
save_dir = 'D:\Graduate\Comparison\Comparison_IAFusion\Dataset\RoadScene_vi1';
if exist(save_dir,'dir')==0.
	 mkdir(save_dir);
end
fileFolder=fullfile(source_dir);
dirOutput=dir(fullfile(source_dir,'*.bmp'));
fileNames = {dirOutput.name};
[m, num] = size(fileNames);
for i = 1:num
    fileName_source = fullfile(source_dir, fileNames{i})
    save_name = fullfile(save_dir, fileNames{i});
    source_image = imread(fileName_source);
    [h, w, c]=size(source_image)
    if c > 1
        source_image = rgb2gray(source_image);
    end
    save_image = source_image(1:floor(h/4) *4, 1:floor(w/4)*4);
    [h1, w1]=size(save_image)
    imwrite(save_image, save_name)
end
