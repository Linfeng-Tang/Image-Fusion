% process text
% propose images
clc;
clear all;
source_file = 'D:\Graduate\Comparison\Comparison_IAFusion\test_Modify\test_name\TNO.xlsx';
source_dir = 'D:\Graduate\Comparison\Comparison_IAFusion\Dataset\New_Test_vi';
save_dir = 'D:\Graduate\Comparison\Comparison_IAFusion\Dataset\PIAFusion\TNO\vi';
if exist(save_dir,'dir')==0.
	 mkdir(save_dir);
end
[NUM,TXT,RAW]=xlsread(source_file);
for i=1:size(NUM, 1)
    if NUM(i) < 10 
        image_name = fullfile(source_dir, strcat('0', num2str(NUM(i)), '.bmp'));
        save_name = fullfile(save_dir, strcat('0', num2str(NUM(i)), '.png'));
    elseif NUM(i)>10 & NUM(i) <100
        image_name = fullfile(source_dir, strcat(num2str(NUM(i)), '.bmp'));
        save_name = fullfile(save_dir, strcat(num2str(NUM(i)), '.png'));
    elseif NUM(i)>100 
        image_name = fullfile(source_dir, strcat(num2str(NUM(i)), '.bmp'));
        save_name = fullfile(save_dir, strcat(num2str(NUM(i)), '.png'));
    end
%     image_name = fullfile(source_dir, cell2mat(TXT(i)));
%     save_name = fullfile(save_dir, cell2mat(TXT(i)));
    image = imread(image_name);
    [h, w, c] = size(image);
    if c > 1
        image = rgb2gray(image);
    end
    h1 = floor(h / 4) * 4;
    w1 = floor(w / 4) * 4;
    image = image(1:h1, 1:w1);
    imwrite(image, save_name);
    disp(save_name)
end
   