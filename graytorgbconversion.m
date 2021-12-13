

clc;
clear all;
close all;

        
        path='F:\MM\abnormal\'; 
         
        images=dir(strcat(path,'*.png'));
        
        display(path);
    for k=1:numel(images)
        file_name=images(k).name;
        image_name=strcat(path,file_name);
        I = imread(image_name); 
        display(file_name);
        %I=imresize(I,[227 227]);
        rgbImage = cat(3, I, I, I);
        fullfilename=fullfile(path,file_name);
        imwrite(rgbImage,fullfilename);
    end
    
   
