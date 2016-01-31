Original Data Source
==================================================================
# Human Activity Recognition Using Smartphones Dataset
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

Experiment Description
==================================================================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, Reyes-Ortiz et al. captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time (t) and frequency (f) domain.  

The features selected for this dataset come from the accelerometer and gyroscope 3-axial raw signals tAcc_XYZ and tGyro_XYZ. These time domain signals (prefix 't' at the beginning of a variable name to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc_XYZ and tGravityAcc_XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk_XYZ and tBodyGyroJerk_XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc_XYZ, fBodyAccJerk_XYZ, fBodyGyro_XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' at the beginning of a variable name indicates frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: X, Y, and Z in the variable names are used to denote 3-axial signals in the X, Y and Z directions.

# New tidy dataset

For each record in the new tidy dataset (full_tidy_data.csv) it is provided:
======================================
* An identifier of the subject who carried out the experiment
* Activity label
* Mean and standard deviation (std) for each of the following signals: 
    + tBodyAcc_X 
    + tBodyAcc_Y
    + tBodyAcc_Z
    + tGravityAcc_X
    + tGravityAcc_Y
    + tGravityAcc_Z
    + tBodyAccJerk_X
    + tBodyAccJerk_Y
    + tBodyAccJerk_Z
    + tBodyGyro_X
    + tBodyGyro_Y
    + tBodyGyro_Z
    + tBodyGyroJerk_X
    + tBodyGyroJerk_Y
    + tBodyGyroJerk_Z
    + tBodyAccMag
    + tGravityAccMag
    + tBodyAccJerkMag
    + tBodyGyroMag
    + tBodyGyroJerkMag
    + fBodyAcc_X
    + fBodyAcc_Y
    + fBodyAcc_Z
    + fBodyAccJerk_X
    + fBodyAccJerk_Y
    + fBodyAccJerk_Z
    + fBodyGyro_X
    + fBodyGyro_Y
    + fBodyGyro_Z
    + fBodyAccMag
    + fBodyAccJerkMag
    + fBodyGyroMag
    + fBodyGyroJerkMag

Notes: 
======
- Scores are normalized and bounded within [-1,1].

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.