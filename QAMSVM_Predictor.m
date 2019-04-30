%Categorize new signals and check if categorization is good
%Run QAMSVM first to train the AI and define categoryClassifier

%Image 1
img = imread(fullfile('New Signals','16QAM_245.jpg'));
[labelIdx, score] = predict(categoryClassifier,img);

disp('Classifying image 16QAM_245.jpg')
x = categoryClassifier.Labels(labelIdx)

if isequal(x{1},'16QAM')
    disp('True, this signal is a 16QAM')
else
    disp('Error, this signal is not a 16QAM')
end

%Image 2
img = imread(fullfile('New Signals','16QAM_287.jpg'));
[labelIdx, score] = predict(categoryClassifier,img);

disp('Classifying image 16QAM_287.jpg')
x = categoryClassifier.Labels(labelIdx)
if isequal(x{1},'16QAM')
    disp('True, this signal is a 16QAM')
else
    disp('Error, this signal is not a 16QAM')
end

%Image 3
img = imread(fullfile('New Signals','32QAM_164.jpg'));
[labelIdx, score] = predict(categoryClassifier,img);
disp('Classifying image 32QAM_164.jpg')
x = categoryClassifier.Labels(labelIdx)
if isequal(x{1},'32QAM')
    disp('True, this signal is a 32QAM')
else
    disp('Error, this signal is not a 32QAM')
end

%Image 4
img = imread(fullfile('New Signals','32QAM_213.jpg'));
[labelIdx, score] = predict(categoryClassifier,img);
disp('Classifying image 32QAM_213.jpg')
x = categoryClassifier.Labels(labelIdx)
if isequal(x{1},'32QAM')
    disp('True, this signal is a 32QAM')
else
    disp('Error, this signal is not a 32QAM')
end

%Image 5
img = imread(fullfile('New Signals','64QAM_155.jpg'));
[labelIdx, score] = predict(categoryClassifier,img);
disp('Classifying image 64QAM_155.jpg')
x = categoryClassifier.Labels(labelIdx)
if isequal(x{1},'64QAM')
    disp('True, this signal is a 64QAM')
else
    disp('Error, this signal is not a 64QAM')
end

%Image 6
img = imread(fullfile('New Signals','64QAM_187.jpg'));
[labelIdx, score] = predict(categoryClassifier,img);
disp('Classifying image 164QAM_187.jpg')
x = categoryClassifier.Labels(labelIdx)
if isequal(x{1},'64QAM')
    disp('True, this signal is a 64QAM')
else
    disp('Error, this signal is not a 64QAM')
end
