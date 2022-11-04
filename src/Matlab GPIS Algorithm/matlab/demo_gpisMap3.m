%
% GPisMap - Online Continuous Mapping using Gaussian Process Implicit Surfaces
% https://github.com/leebhoram/GPisMap
%
% This program is free software; you can redistribute it and/or modify
% it under the terms of the GNU General Public License v3 as published by
% the Free Software Foundation.
%
% This program is distributed in the hope that it will be useful, but WITHOUT
% ANY WARRANTY; without even the implied warranty of any FITNESS FOR A
% PARTICULAR PURPOSE. See the GNU General Public License v3 for more details.
%
% You should have received a copy of the GNU General Public License v3
% along with this program; if not, you can access it online at
% http://www.gnu.org/licenses/gpl-3.0.html.
%
% Authors: Bhoram Lee <bhoram.lee@gmail.com>
%

close all
clearvars

addpath('./plot_scripts');
addpath('../mex');
mexGPisMap3('reset')

% The original dataset downloadable at http://rll.berkeley.edu/bigbird/
% The following data are sampled and prepared by the authors for the test
depthpath = '../data/3D/bigbird_detergent/masked_depth';
poses = single(load('../data/3D/bigbird_detergent/pose/posesInOrder.txt'));

% input sequence
FrameNums = [93:3:359 3:3:90];  % numel : 120
CamIDs = repmat([1 2 3 4 3 2],1,30);
%numel(FrameNums)

% test 3D volume grid -> Not Necessary for my own testing
%[xg, yg, zg ] = meshgrid(-1.4:0.01:0.98, -1.5:0.01:1.5,-0.5:0.01:0.3);
%[xg, yg, zg ] = meshgrid(-1.4:0.01:0.6, -0.7:0.01:1.5,-0.4:0.01:1.6);

%Bottle
%[xg, yg, zg ] = meshgrid(-0.3:0.01:0.9, -0.9:0.01:1.8, -0.1:0.01:1);

%Single Bottle
%[xg, yg, zg ] = meshgrid(-0.2:0.01:0.6, 0:0.01:0.9, 0.7:0.01:0.8);

%IRL Listerine
%[xg, yg, zg ] = meshgrid(-0.6:0.02:0.6, 0.65:0.02:0.85, 0.3:0.02:0.5);
[xg, yg, zg ] = meshgrid(-0.9:0.01:0.9, 0.8:0.01:1.5, 0.15:0.01:0.8);

xtest1 = single([xg(:)'; yg(:)'; zg(:)']);
    
count = 0;
camCount = 0;
%for k=1:3:numel(FrameNums) % This goes through roughly 40 steps
%for k=1:13
for k = 1
    frmNo = FrameNums(k);
    count = count + 1;
    %count = 4;
    camCount = camCount + 1;
    %camCount = 4;
%     if(camCount > 5)
%         camCount = 1;
%     end
%     if k == 2
%         k = 3;
%         count = 3;
%     end 
    camID = CamIDs(camCount);

    %D = imread(fullfile(depthpath,sprintf('frame%d_cam%d.png',frmNo,camID)));
    %D = imread(fullfile(depthpath,sprintf('frame%d_cam%d.png',93,1))); %just testing specific photos dw
    %D = imread(fullfile(depthpath,sprintf('frame%d_cam%d.png',8,1)));
    
    %D = imread(fullfile(depthpath,sprintf('frame%d.png',k)));  
    D = imread(fullfile(depthpath,sprintf('163.png')));
    
    %D = imread(fullfile(depthpath,sprintf('%d.png',78))); 
    %D = imread(fullfile(depthpath,sprintf('small_frame%d.png',k)));  
    
    %D = imread(fullfile(depthpath,sprintf('78_16_grayscale_alpha.png'))); 
    D = single(D)*single(0.0001); % 10 mm to meter

    T = reshape(poses(count,:),4,4);
    R = T(1:3,1:3);     %May change depending on the robot used
    t = T(4,1:3)';      %May change depending on the robot used

    mexGPisMap3('setCamera',camID,'bigbird'); % See mex/mexGPisMap3.cpp for camera calibration info
    mexGPisMap3('update',D,[t' reshape(R,1,[])]);    

    close all;
    if  1 % k == k_last
        visualize_gpisMap3
    end

    % paus if needed
    % disp('press a button to continue');
    % pause;

end

% clear resources
mexGPisMap3('reset')
