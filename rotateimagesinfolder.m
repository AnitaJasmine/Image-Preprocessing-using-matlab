clc;
clear all;
close all;

       %path name of the folder which has images        
        path = 'F:\images1\'; 
        images=dir(strcat(path,'*.png'));
        
        display(path);
    for k=1:numel(images)
        file_name=images(k).name;
        image_name=strcat(path,file_name);
        I = imread(image_name);
              
        
        display(file_name);
        [R, C ,CH]=size(I);
        if CH>1
             I=rgb2gray(I);
        end

        p=file_name;
         index1=strfind(p,'.png');
        fname=p(1:(index1-1));
        
        
        I=imresize(I,[256 256]);
        i45=imrotate(I,45);   
        I1=imresize(i45,[256 256]);         
        pngFileName = strcat(fname, ' 45', '.png');
        fullfilename=fullfile(path,pngFileName);
        imwrite(I1,fullfilename);
        
        i90=imrotate(I,90);
        I2=imresize(i90,[256 256]);
        pngFileName = strcat(fname, ' 90', '.png');
        fullfilename=fullfile(path,pngFileName);
        imwrite(I2,fullfilename);
        
        i235=imrotate(I,235);
        I3=imresize(i235,[256 256]);
        pngFileName = strcat(fname, ' 235', '.png');
        fullfilename=fullfile(path,pngFileName);
        imwrite(I3,fullfilename);
        
        i280=imrotate(I,280);
        I4=imresize(i280,[256 256]);
        pngFileName = strcat(fname, ' 280', '.png');
        fullfilename=fullfile(path,pngFileName);
        imwrite(I4,fullfilename);
        
        i200=imrotate(I,280);
	I3=imresize(i200,[256 256]);
        pngFileName = strcat(fname, ' 200', '.png');
        fullfilename=fullfile(path,pngFileName);
        imwrite(I4,fullfilename);

    end
    