clc;
clear all;
close all;

        
        path='F:\MM\normal\'; 
         
        images=dir(strcat(path,'*.png'));
        
        display(path);
    for k=1:numel(images)
        file_name=images(k).name;
        image_name=strcat(path,file_name);
        I = imread(image_name); 
        display(file_name);
        I=imresize(I,[227 227]);
        fullfilename=fullfile(path,file_name);
        imwrite(I,fullfilename);
    end
    
   