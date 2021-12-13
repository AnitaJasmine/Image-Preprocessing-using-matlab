

clc;
clear all;
close all;

        
        path='F:\Imagefoldername\'; 
         
        images=dir(strcat(path,'*.png'));
        
        display(path);
    for k=1:numel(images)
        file_name=images(k).name;
        image_name=strcat(path,file_name);
        I = imread(image_name); 
        [R, C ,CH]=size(I);
        if CH>1
             grayi=rgb2gray(I);
        
        else
            grayi=I;
        end
        
        display(file_name);
             
        fullfilename=fullfile(path,file_name);
        imwrite(grayi,fullfilename);
    end
    
   
