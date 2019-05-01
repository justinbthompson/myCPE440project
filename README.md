# myCPE440project
Project for CPE 440 Introduction to AI Engineering, taught by Prof. Yao at Stevens Institute of Technology
<br />I pledge my honor that I have abided by the Stevens Honor System -Justin Thompson

https://github.com/justinbthompson/myCPE440project

The goal of this project is to classify 16QAM, 32QAM, and 64QAM electrical signals using MATLAB and AI tools. Most code is taken directly from MathWorks tutorials.

Both a machine learning SVM application and a deep learning CNN application are to be used.

As I was going through MathWorks tutorials to build these codes, I also found one that uses CNN and SVM in combination. For this application, which I have listed as QAMCNNSVMCombo_, the CNN extracts the features of the pictures and the SVM classifies them. It allows the a less computationally expensive (and therefore quicker) SVM, but it reduces accuracy.

My CNN, SVM, and CNNSVMCombo codes each have a trainer code and a predictor Code. Running the trainer code trains the AI, and the predictor code classifies six new signals in the 'New Signals' folder.

### Summary of results:

The CNN, SVM, and CNNSVMCombo models all accurately classified the six new signals after they were trained.

For total accuracy using evaluation tools, the CNN model and the SVM model both reported accuracies of 100%. The CNNSVMCombo, however, only reported an accuracy of 99.11%.

As a trade off for the reduced accuracy, the CNNSVMCombo was the quickest AI to train, taking only 76.61 seconds.
The strictly CNN model was the next quickest, taking 9 minutes and 3 seconds.
The SVM model took a large amount of time to train, taking 26.4 minutes while running on a powerful laptop.

Given the large training time of the SVM model and the imperfect accuracy of the CNNSVMCombo model, I would recommend the CNN model as the best solution to classify QAM signals.

### Contents:

* New Signals Folder - six new images to classify
* Project Data Folder - 900 images supplied by Professor Yao
* SVM_Data_Files Folder - saved outputs of the SVM trainer since it takes a significant time to run
* CPE440 Project Justin Thompson.pdf - project summary and presentation
* QAMCNNSVMCombo_Predictor.m - script to classify six new signals using the CNNSVMCombo model             
* QAMCNNSVMCombo_Predictor_Results.pdf - results of classifying six new signals using the CNNSVMCombo model
* QAMCNNSVMCombo_Trainer.m - script to train CNNSVMCombo model           
* QAMCNNSVMCombo_Training_Results.pdf - results of CNNSVMCombo training, includes evaluation and runtime
* QAMCNN_Predictor.m - script to classify six new signals using the CNN model       
* QAMCNN_Predictor_Results.pdf - results of classifying six new signals using the CNN model
* QAMCNN_Trainer.m - script to train CNN model 
* QAMCNN_Trainer_ProgressReport.jpg - graphical progress report of building CNN model
* QAMCNN_Training_Results.pdf - results of CNN training, includes evaluation and runtime
* QAMSVM_Predictor.m - script to classify six new signals using the SVM model             
* QAMSVM_Predictor_Results.pdf - results of classifying six new signals using the SVM model
* QAMSVM_Trainer.m - script to train SVM model                
* QAMSVM_Training_Results.pdf - results of SVM training, includes evaluation and runtime
* README.md
