%Categorize new signals and check if categorization is good
%Run QAMCNN_Trainer first to train the AI and define categoryClassifier

%Set up directory
dir = fullfile('New Signals');
predictSet = imageDatastore(dir,   'IncludeSubfolders', true, 'LabelSource', 'foldernames');

%Image 1
disp('Classifying image 16QAM_245.jpg')
x = classify(net, readimage(predictSet, 1))
if x == '16QAM'
    disp('True, this signal is a 16QAM')
else
    disp('Error, this signal is not a 16QAM')
end
%Image 2
disp('Classifying image 16QAM_287.jpg')
x = classify(net, readimage(predictSet, 2))
if x == '16QAM'
    disp('True, this signal is a 16QAM')
else
    disp('Error, this signal is not a 16QAM')
end
%Image 3
disp('Classifying image 32QAM_164.jpg')
x = classify(net, readimage(predictSet, 3))
if x == '32QAM'
    disp('True, this signal is a 32QAM')
else
    disp('Error, this signal is not a 32QAM')
end
%Image 4
disp('Classifying image 32QAM_213.jpg')
x = classify(net, readimage(predictSet, 4))
if x == '32QAM'
    disp('True, this signal is a 32QAM')
else
    disp('Error, this signal is not a 32QAM')
end
%Image 5
disp('Classifying image 64QAM_155.jpg')
x = classify(net, readimage(predictSet, 5))
if x == '64QAM'
    disp('True, this signal is a 64QAM')
else
    disp('Error, this signal is not a 64QAM')
end
%Image 6
disp('Classifying image 64QAM_187.jpg')
x = classify(net, readimage(predictSet, 6))
if x == '64QAM'
    disp('True, this signal is a 64QAM')
else
    disp('Error, this signal is not a 64QAM')
end