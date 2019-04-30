%QAM Signal Classification - Machine Learning SVM
%Below link for help understanding multi-class SVM classification
%https://www.mathworks.com/help/vision/ref/trainimagecategoryclassifier.html

%To record run time
tic

%Set up file path
dir = fullfile('Project Data');
%Load images
dataSet = imageDatastore(dir,   'IncludeSubfolders', true, 'LabelSource', 'foldernames');
%Split between training and test sets. Split 50/50
[trainingSet,testSet] = splitEachLabel(dataSet,.5,'randomize');

%countEachLabel to see that you have an equal set of data
countEachLabel(trainingSet)
countEachLabel(testSet)

%Uses Matlab bagOfFeatures to automatically make criteria to classify the images
%Requires Computer Vision Toolbox
bag = bagOfFeatures(trainingSet);

%Need to train the SVM 
categoryClassifier = trainImageCategoryClassifier(trainingSet,bag);

%Evaluate classifier with test images
confMatrix = evaluate(categoryClassifier,testSet)
%Find accuracy of classifier
mean(diag(confMatrix))

%To record runtime
toc
