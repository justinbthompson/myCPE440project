# myCPE440project
Project for CPE 440 Introduction to AI Engineering

The goal of this project is to classify 16QAM, 32QAM, and 64QAM electrical signals using MATLAB and AI tools.

The goal is to classify the signals with both a machine learning SVM application and a deep learning CNN application.

As I was going through Matlab tutorials to build these codes, I also found one that uses CNN and SVM in combination. For this application, which I have listed as QAMCNNSVMCombo_, the CNN extracts the features of the pictures and the SVM classifies them. It allows the a less computationally expensive (and therefore quicker) SVM, but it reduces accuracy.

My CNN, SVM, and CNNSVMCombo codes each have a trainer code and a predictor Code. Running the trainer code trains the AI, and the predictor code classifies six new signals in the 'New Signals' folder.

### Summary of results:


### Contents of this Repo:

* New Signals Folder - six new images to classify
* Project Data Folder - 900 images supplied by Professor Yao
* SVM_Data_Files Folder - saved outputs of the SVM trainer since it takes a significant time to run
* QAMCNNSVMCombo_Predictor.m             
* QAMCNNSVMCombo_Predictor_Results.pdf   
* QAMCNNSVMCombo_Trainer.m               
* QAMCNNSVMCombo_Training_Results.pdf 
* QAMCNNSVMCombo_Predictor.m             
* QAMCNNSVMCombo_Predictor_Results.pdf   
* QAMCNNSVMCombo_Trainer.m               
* QAMCNNSVMCombo_Training_Results.pdf 

