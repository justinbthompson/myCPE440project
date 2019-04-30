%QAM Signal Classification
%This script uses CNN for feature extraction but SVM for classification
%Below link was guide
%https://www.mathworks.com/help/vision/examples/image-category-classification-using-deep-learning.html

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

%Load pretrained network. Let's use resnet50
%Note, Deep Learning Toolbox™ Model for ResNet-50 Network needs to be
%installed.
net = resnet50();

%Inspect the first layer, which defines the input dimensions
firstlayer = net.Layers(1)
%Inspect the last layer, which is the classification layer
lastlayer = net.Layers(end)
%View number of layers
numlayers = numel(net.Layers(end).ClassNames)


%resnet can only process RGB 224x224 images. Use these lines to convert to
%RGB and to resize. (All my images are color but will include regardless)
imageSize = net.Layers(1).InputSize;
augmentedTrainingSet = augmentedImageDatastore(imageSize, trainingSet, 'ColorPreprocessing', 'gray2rgb');
augmentedTestSet = augmentedImageDatastore(imageSize, testSet, 'ColorPreprocessing', 'gray2rgb');

%Extract training features
%Get the network weights for the second convolutional layer
w1 = net.Layers(2).Weights;
% Scale and resize the weights for visualization
w1 = mat2gray(w1);
w1 = imresize(w1,5); 
% Display a montage of network weights. There are 96 individual sets of
% weights in the first layer.
%figure
%montage(w1)
%title('First convolutional layer weights')


featureLayer = 'fc1000';
trainingFeatures = activations(net, augmentedTrainingSet, featureLayer, ...
    'MiniBatchSize', 32, 'OutputAs', 'columns');
%Train the CNN
%Get training labels from the trainingSet
trainingLabels = trainingSet.Labels;
% Train multiclass SVM classifier using a fast linear solver, and set
% 'ObservationsIn' to 'columns' to match the arrangement used for training
% features.
classifier = fitcecoc(trainingFeatures, trainingLabels, ...
    'Learners', 'Linear', 'Coding', 'onevsall', 'ObservationsIn', 'columns');

%Evaluate Classifier
% Extract test features using the CNN
testFeatures = activations(net, augmentedTestSet, featureLayer, ...
    'MiniBatchSize', 32, 'OutputAs', 'columns');
% Pass CNN image features to trained classifier
predictedLabels = predict(classifier, testFeatures, 'ObservationsIn', 'columns');
% Get the known labels
testLabels = testSet.Labels;
% Tabulate the results using a confusion matrix.
confMat = confusionmat(testLabels, predictedLabels);
% Convert confusion matrix into percentage form
confMat = bsxfun(@rdivide,confMat,sum(confMat,2))
% Display the mean accuracy
mean(diag(confMat))

toc