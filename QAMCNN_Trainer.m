%QAM Signal Classification - Deep Learning SVM
%Below link for help understanding multi-class CNN classification
%https://www.mathworks.com/help/deeplearning/examples/create-simple-deep-learning-network-for-classification.html

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

%Check size of images
%img = readimage(dataSet,23);
%size(img)
%Get 656 875 3

%Define CNN architecture
layers = [
    imageInputLayer([656 875 3])
    
    convolution2dLayer(3,8,'Padding','same')
    batchNormalizationLayer
    reluLayer
    
    maxPooling2dLayer(2,'Stride',2)
    
    convolution2dLayer(3,16,'Padding','same')
    batchNormalizationLayer
    reluLayer
    
    maxPooling2dLayer(2,'Stride',2)
    
    convolution2dLayer(3,32,'Padding','same')
    batchNormalizationLayer
    reluLayer
    
    fullyConnectedLayer(3)
    softmaxLayer
    classificationLayer];

%Specify training options
options = trainingOptions('sgdm', ...
    'InitialLearnRate',0.01, ...
    'MaxEpochs',4, ...
    'Shuffle','every-epoch', ...
    'ValidationData',testSet, ...
    'ValidationFrequency',30, ...
    'Verbose',false, ...
    'Plots','training-progress');

%Train network
net = trainNetwork(trainingSet,layers,options);

%Determine accuracy
YPred = classify(net,testSet);
YValidation = testSet.Labels;

accuracy = sum(YPred == YValidation)/numel(YValidation)

%To record run time
toc