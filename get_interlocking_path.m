function [ interlocking ] = get_interlocking_path( optimal_path )
%% %%%%%%%%%%%%%%%%%%%%%% get_interlocking_path %%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% fonction : Function that will compute the interlocking, given an optimal
% path found by the A* algorithm. 
%
% %%%%%% usage %%%%%%
% %% INPUTS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  - optimal_path      : The optimal path (two columns)
%
% %% OUTPUTS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  - interlocking : The interlocking (L_shortestpath/heigth)
%
%
% %% AUTEUR : Martin HOFMANN
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leng=0; % Length initializing
% We iterate on all the coordinates of the path
for i=1:length(optimal_path)-1
    if optimal_path(i,1)==optimal_path(i+1,1) || optimal_path(i,2)==optimal_path(i+1,2)
        leng=leng+1; % If it goes straight, we add 1
    else 
        leng=leng+sqrt(2); % If it goes 45°, we add 1.41
    end
end

% Difference between the highest and lowest point
deltaH=max(optimal_path(:,1))-min(optimal_path(:,1));

% Computation of the interlocking
interlocking=leng/deltaH;


end

