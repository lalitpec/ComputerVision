
%% Run this to demo stereo disparity extraction

function demo(im1, im2)

addpath 'msseg';

mins = 1;  %almost every time
maxs = 20; %depends on imagery
hs = 10;   %almost every time
hr = 7;    %almost every time
M = 30;    %almost every time

%i1 = imread('corridor_l_original.tiff');  %right image
%i2 = imread('corridor_r_original.tiff');  %left image

%-- here's the main call
[d p s l] = total_stereo(im1,im2, hs,hr,M,mins, maxs);

%--  Display stuff
subplot(2,2,1), imshow(d,[]);
subplot(2,2,2), imshow(p,[])
subplot(2,2,3), imshow(s,[]);
subplot(2,2,4), imshow(i1);


