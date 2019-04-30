%Categorize new signals and check if categorization is good
%Run QAMSVMCNNCombo_Trainer first to train the AI and define categoryClassifier

dir = fullfile('New Signals');
predictSet = imageDatastore(dir,   'IncludeSubfolders', true, 'LabelSource', 'foldernames');

%Image 1
disp('Classifying image 16QAM_245.jpg')
testImage = readimage(predictSet,1);
% Create augmentedImageDatastore to automatically resize the image when
% image features are extracted using activations.
ds = augmentedImageDatastore(imageSize, testImage, 'ColorPreprocessing', 'gray2rgb');
% Extract image features using the CNN
imageFeatures = activations(net, ds, featureLayer, 'OutputAs', 'columns');
% Make a prediction using the classifier
predictedLabel = predict(classifier, imageFeatures, 'ObservationsIn', 'columns')
x = predictedLabel;
if x == '16QAM'
    disp('True, this signal is a 16QAM')
else
    disp('Error, this signal is not a 16QAM')
end

%Image 2
disp('Classifying image 16QAM_287.jpg')
testImage = readimage(predictSet,2);
% Create augmentedImageDatastore to automatically resize the image when
% image features are extracted using activations.
ds = augmentedImageDatastore(imageSize, testImage, 'ColorPreprocessing', 'gray2rgb');
% Extract image features using the CNN
imageFeatures = activations(net, ds, featureLayer, 'OutputAs', 'columns');
% Make a prediction using the classifier
predictedLabel = predict(classifier, imageFeatures, 'ObservationsIn', 'columns')
x = predictedLabel;
if x == '16QAM'
    disp('True, this signal is a 16QAM')
else
    disp('Error, this signal is not a 16QAM')
end

%Image 3
disp('Classifying image 32QAM_164.jpg')
testImage = readimage(predictSet,3);
% Create augmentedImageDatastore to automatically resize the image when
% image features are extracted using activations.
ds = augmentedImageDatastore(imageSize, testImage, 'ColorPreprocessing', 'gray2rgb');
% Extract image features using the CNN
imageFeatures = activations(net, ds, featureLayer, 'OutputAs', 'columns');
% Make a prediction using the classifier
predictedLabel = predict(classifier, imageFeatures, 'ObservationsIn', 'columns')
x = predictedLabel;
if x == '32QAM'
    disp('True, this signal is a 32QAM')
else
    disp('Error, this signal is not a 32QAM')
end

%Image 4
disp('Classifying image 32QAM_213.jpg')
testImage = readimage(predictSet,4);
% Create augmentedImageDatastore to automatically resize the image when
% image features are extracted using activations.
ds = augmentedImageDatastore(imageSize, testImage, 'ColorPreprocessing', 'gray2rgb');
% Extract image features using the CNN
imageFeatures = activations(net, ds, featureLayer, 'OutputAs', 'columns');
% Make a prediction using the classifier
predictedLabel = predict(classifier, imageFeatures, 'ObservationsIn', 'columns')
x = predictedLabel;
if x == '32QAM'
    disp('True, this signal is a 32QAM')
else
    disp('Error, this signal is not a 32QAM')
end

%Image 5
disp('Classifying image 64QAM_155.jpg')
testImage = readimage(predictSet,5);
% Create augmentedImageDatastore to automatically resize the image when
% image features are extracted using activations.
ds = augmentedImageDatastore(imageSize, testImage, 'ColorPreprocessing', 'gray2rgb');
% Extract image features using the CNN
imageFeatures = activations(net, ds, featureLayer, 'OutputAs', 'columns');
% Make a prediction using the classifier
predictedLabel = predict(classifier, imageFeatures, 'ObservationsIn', 'columns')
x = predictedLabel;
if x == '64QAM'
    disp('True, this signal is a 64QAM')
else
    disp('Error, this signal is not a 64QAM')
end

%Image 6
disp('Classifying image 164QAM_187.jpg')
testImage = readimage(predictSet,6);
% Create augmentedImageDatastore to automatically resize the image when
% image features are extracted using activations.
ds = augmentedImageDatastore(imageSize, testImage, 'ColorPreprocessing', 'gray2rgb');
% Extract image features using the CNN
imageFeatures = activations(net, ds, featureLayer, 'OutputAs', 'columns');
% Make a prediction using the classifier
predictedLabel = predict(classifier, imageFeatures, 'ObservationsIn', 'columns')
x = predictedLabel;
if x == '64QAM'
    disp('True, this signal is a 64QAM')
else
    disp('Error, this signal is not a 64QAM')
end
%}