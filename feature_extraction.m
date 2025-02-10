%% 0: Clean up
clear all
clc
close all
%% 1: Set file path, importing data, and FFT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Specify the location of the libsvm/matlab folder and import data %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%=============================================================================
%FEATURE1
%Healthy data
%% 0: Clean up
clear all
clc
close all
w2 = 0.2;
w3 = 0.8;
%% 1: Set file path, importing data, and FFT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Specify the location of the libsvm/matlab folder and import data %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%=============================================================================
%FEATURE1
%Healthy data
healthydatafolder='G:\My Drive\Courses\Industry AI\Industry AI - Group Project\Homework 3\Data\Training\Healthy';
filepattern=fullfile(healthydatafolder, '*.txt');
textfiles=dir(filepattern);
healthydata=zeros(length(textfiles),2);
for i=1:length(textfiles)
healthyfileName=textfiles(i).name;
filename=fullfile(textfiles(i).folder,healthyfileName);
NS1=readmatrix(filename);
[healthydata(i,1),healthydata(i,2),f1,a1]=fFTonsignal(NS1,15,30);
end
%---------------------------------------------
%Faulty data - Unbalanced 1
faultydatafolder1='G:\My Drive\Courses\Industry AI\Industry AI - Group Project\Homework 3\Data\Training\Faulty\Unbalance 1';
filepattern=fullfile(faultydatafolder1, '*.txt');
textfiles=dir(filepattern);
faultydata1=zeros(length(textfiles),2);
for i=1:length(textfiles)
faultyfileName1=textfiles(i).name;
filename=fullfile(textfiles(i).folder,faultyfileName1);
U1=readmatrix(filename);
[faultydata1(i,1),faultydata1(i,2),f1,a1]=fFTonsignal(U1,15,30);
end
%---------------------------------------------
%Faulty data - Unbalanced 2
faultydatafolder2='G:\My Drive\Courses\Industry AI\Industry AI - Group Project\Homework 3\Data\Training\Faulty\Unbalance 2';
filepattern=fullfile(faultydatafolder2, '*.txt');
textfiles=dir(filepattern);
faultydata2=zeros(length(textfiles),2);
for i=1:length(textfiles)
faultyfileName2=textfiles(i).name;
filename=fullfile(textfiles(i).folder,faultyfileName2);
U2=readmatrix(filename);
[faultydata2(i,1),faultydata2(i,2),f1,a1]=fFTonsignal(U2,15,30);
end
healthy1 = healthydata(:,1)/0.0128;
faulty11 = faultydata1(:,1)/0.0128;
faulty21 = faultydata2(:,1)/0.0128;
F1 = [healthy1;faulty11;faulty21];
%======================================================================
%FEATURE2
%Healthy data
healthydatafolder='G:\My Drive\Courses\Industry AI\Industry AI - Group Project\Homework 3\Data\Training\Healthy';
filepattern=fullfile(healthydatafolder, '*.txt');
textfiles=dir(filepattern);
healthydata=zeros(length(textfiles),2);
for i=1:length(textfiles)
healthyfileName=textfiles(i).name;
filename=fullfile(textfiles(i).folder,healthyfileName);
NS1=readmatrix(filename);
[healthydata(i,1),healthydata(i,2),f1,a1]=fFTonsignal(NS1,39,41);
end
%---------------------------------------------
%Faulty data - Unbalanced 1
faultydatafolder1='G:\My Drive\Courses\Industry AI\Industry AI - Group Project\Homework 3\Data\Training\Faulty\Unbalance 1';
filepattern=fullfile(faultydatafolder1, '*.txt');
textfiles=dir(filepattern);
faultydata1=zeros(length(textfiles),2);
for i=1:length(textfiles)
faultyfileName1=textfiles(i).name;
filename=fullfile(textfiles(i).folder,faultyfileName1);
U1=readmatrix(filename);
[faultydata1(i,1),faultydata1(i,2),f1,a1]=fFTonsignal(U1,39,41);
end
%---------------------------------------------
%Faulty data - Unbalanced 2
faultydatafolder2='G:\My Drive\Courses\Industry AI\Industry AI - Group Project\Homework 3\Data\Training\Faulty\Unbalance 2';
filepattern=fullfile(faultydatafolder2, '*.txt');
textfiles=dir(filepattern);
faultydata2=zeros(length(textfiles),2);
for i=1:length(textfiles)
faultyfileName2=textfiles(i).name;
filename=fullfile(textfiles(i).folder,faultyfileName2);
U2=readmatrix(filename);
[faultydata2(i,1),faultydata2(i,2),f1,a1]=fFTonsignal(U2,39,41);
end
healthy2 = healthydata(:,1)/5.4711e-04*w2;
faulty12 = faultydata1(:,1)/5.4711e-04*w2;
faulty22 = faultydata2(:,1)/5.4711e-04*w2;
F2 = [healthy2;faulty12;faulty22];
%===================================================================================================
%FEATURE3
%Healthy data
healthydatafolder='G:\My Drive\Courses\Industry AI\Industry AI - Group Project\Homework 3\Data\Training\Healthy';
filepattern=fullfile(healthydatafolder, '*.txt');
textfiles=dir(filepattern);
healthydata=zeros(length(textfiles),2);
for i=1:length(textfiles)
healthyfileName=textfiles(i).name;
filename=fullfile(textfiles(i).folder,healthyfileName);
NS1=readmatrix(filename);
[healthydata(i,1),healthydata(i,2),f1,a1]=fFTonsignal(NS1,41,43);
end
%---------------------------------------------
%Faulty data - Unbalanced 1
faultydatafolder1='G:\My Drive\Courses\Industry AI\Industry AI - Group Project\Homework 3\Data\Training\Faulty\Unbalance 1';
filepattern=fullfile(faultydatafolder1, '*.txt');
textfiles=dir(filepattern);
faultydata1=zeros(length(textfiles),2);
for i=1:length(textfiles)
faultyfileName1=textfiles(i).name;
filename=fullfile(textfiles(i).folder,faultyfileName1);
U1=readmatrix(filename);
[faultydata1(i,1),faultydata1(i,2),f1,a1]=fFTonsignal(U1,41,43);
end
%---------------------------------------------
%Faulty data - Unbalanced 2
faultydatafolder2='G:\My Drive\Courses\Industry AI\Industry AI - Group Project\Homework 3\Data\Training\Faulty\Unbalance 2';
filepattern=fullfile(faultydatafolder2, '*.txt');
textfiles=dir(filepattern);
faultydata2=zeros(length(textfiles),2);
for i=1:length(textfiles)
faultyfileName2=textfiles(i).name;
filename=fullfile(textfiles(i).folder,faultyfileName2);
U2=readmatrix(filename);
[faultydata2(i,1),faultydata2(i,2),f1,a1]=fFTonsignal(U2,41,43);
end
healthy3 = healthydata(:,1)/0.0048*w3;
faulty13 = faultydata1(:,1)/0.0048*w3;
faulty23 = faultydata2(:,1)/0.0048*w3;
F3 = [healthy3;faulty13;faulty23];
M = [F1 F2 F3];
%======================================================================
%======================================================================
% TEST - FEATURE1
%Test data
testdatafolder='G:\My Drive\Courses\Industry AI\Industry AI - Group Project\Homework 3\Data\Testing';
filepattern=fullfile(testdatafolder, '*.txt');
textfiles=dir(filepattern);
testdata=zeros(length(textfiles),2);
for i=1:length(textfiles)
healthyfileName=textfiles(i).name;
filename=fullfile(textfiles(i).folder,healthyfileName);
T1=readmatrix(filename);
[testdata(i,1),testdata(i,2),f1,a1]=fFTonsignal(T1,15,30);
end
%---------------------------------------------
test1 = testdata(:,1)/0.0128;
%======================================================================
% TEST - FEATURE2
%Test data
testdatafolder='G:\My Drive\Courses\Industry AI\Industry AI - Group Project\Homework 3\Data\Testing';
filepattern=fullfile(testdatafolder, '*.txt');
textfiles=dir(filepattern);
testdata=zeros(length(textfiles),2);
for i=1:length(textfiles)
healthyfileName=textfiles(i).name;
filename=fullfile(textfiles(i).folder,healthyfileName);
T2=readmatrix(filename);
[testdata(i,1),testdata(i,2),f1,a1]=fFTonsignal(T2,39,41);
end
%---------------------------------------------
test2 = testdata(:,1)/4.2408e-04*w2;
%======================================================================
% TEST - FEATURE3
%Test data
testdatafolder='G:\My Drive\Courses\Industry AI\Industry AI - Group Project\Homework 3\Data\Testing';
filepattern=fullfile(testdatafolder, '*.txt');
textfiles=dir(filepattern);
testdata=zeros(length(textfiles),2);
for i=1:length(textfiles)
healthyfileName=textfiles(i).name;
filename=fullfile(textfiles(i).folder,healthyfileName);
T2=readmatrix(filename);
[testdata(i,1),testdata(i,2),f1,a1]=fFTonsignal(T2,41,43);
end
%---------------------------------------------
test3 = testdata(:,1)/0.0048*w3;
T = [test1 test2 test3];
%========================================================================
outputfile1 = 'trainingDataFeatures.txt'
fileID = fopen(outputfile1,'w');
fprintf(fileID,'%6.7f \t %6.7f \t %6.7f \n',M');
outputfile2 = 'testingDataFeatures.txt'
fileID = fopen(outputfile2,'w');
fprintf(fileID,'%6.7f \t %6.7f \t %6.7f \n',T');
FFT