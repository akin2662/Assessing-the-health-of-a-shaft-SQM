clear
clc
%load training data A and train model
A = load('trainingDataFeatures.txt');
labels = {'H', 'I1', 'I2'}; % Repeat each label 20 times
sD = som_data_struct(A);
sD = som_label(sD,'add',[1:20],labels(1));
sD = som_label(sD,'add',[21:40],labels(2));
sD = som_label(sD,'add',[41:60],labels(3));
sMap = som_make(sD);
sMap = som_autolabel(sMap,sD,'vote');
%% Visualize the maps
som_show(sMap);
% U-matrix with labels
figure;
som_show(sMap,'umat','all','empty','Labels');
som_show_add('label',sMap,'Textsize',8,'TextColor','r','Subplot',2)
%% See the hit points for different categories
colormap(1-gray)
som_show(sMap,'umat','all','empty','Labels');
% Add labels to the map
som_show_add('label',sMap,'Textsize',8,'TextColor','r','Subplot',2)
% samples for test
h1 = som_hits(sMap,sD.data(10,:)); % data from H
h2 = som_hits(sMap,sD.data(30,:)); % data from I1
h3 = som_hits(sMap,sD.data(50,:)); % data from i2
% diagnosis result
h1_label = sMap.labels(h1==1);
h2_label = sMap.labels(h2==1);
h3_label = sMap.labels(h3==1);
% Load and classify testing dataset B
B = load('testingDataFeatures.txt'); % Load new data B
bmus = som_bmus(sMap, B);
B_labels = cell(length(bmus), 1);
for i = 1:length(bmus)
if isempty(sMap.labels{bmus(i)})
distances = som_eucdist2(sMap.codebook(bmus(i),:), sMap.codebook);
[~, closest_bmu_idx] = min(distances(~cellfun('isempty', sMap.labels)));
B_labels{i} = sMap.labels{closest_bmu_idx};
else
B_labels{i} = sMap.labels{bmus(i)};
end
end
B_true_labels = [repmat({'H'}, 10, 1); repmat({'I1'}, 10, 1); repmat({'I2'}, 10, 1)];
figure;
confusionchart(B_true_labels, B_labels);
title('Confusion Matrix for Dataset B Classification');
nH = zeros(prod(sMap.topol.msize), 1);
nI1 = zeros(prod(sMap.topol.msize), 1);
nI2 = zeros(prod(sMap.topol.msize), 1);
for i = 1:length(bmus)
if bmus(i) > 0 && bmus(i) <= prod(sMap.topol.msize)
switch B_labels{i}
case 'H'
nH(bmus(i)) = nH(bmus(i)) + 1;
case 'I1'
nI1(bmus(i)) = nI1(bmus(i)) + 1;
case 'I2'
nI2(bmus(i)) = nI2(bmus(i)) + 1;
end
end
end
figure;
som_show(sMap, 'umat', 'all', 'empty', 'Labels');
som_show_add('hit', nH, 'MarkerColor', 'r', 'Subplot', 2);
som_show_add('hit', nI1, 'MarkerColor', 'g', 'Subplot', 2);
som_show_add('hit', nI2, 'MarkerColor', 'b', 'Subplot', 2);