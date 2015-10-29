clear all; 
close all;
clc;

%%

% The treshold is used to detect obstacles. A treshold set to one means
% that everything that is not completely white will be taken as an
% obstacles. A treshold of 0.5 means that everything that is darker than
% "half grey" will be taken as an obstacle
treshold=1;

% Way to the picture
picture_name='X:\programmation_files\brick_masonry\testjpg.jpg';

% Reading the picture
masonry_picture=imread(picture_name);

% Displaying the picture
masonry_picture=imshow(masonry_picture);

% Normalizing the matrix containing the color values
pic_matrix=masonry_picture.CData/(max(max(masonry_picture.CData)));

hold on;

% A-star algorithm function
[interlocking_astar, Optimal_path]=get_interlocking_astar(pic_matrix,treshold);
