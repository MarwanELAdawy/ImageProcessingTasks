i = imread('Filters.png');
mask = medfilt2(rgb2gray(i),[30,30]);
figure , imshow(edge(mask));