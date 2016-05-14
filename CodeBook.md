# Code Book
==================================================================
##Human Activity Recognition Using Smartphones Dataset
###"tidy.txt" Dataset
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

###For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

###Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a column in the text file.

###Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

A set of variables were estimated from these signals, but only the following variables were selected for the "tidy.txt" data set: 

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency

Accordingly, the columns of the data set were named based on the features and values. 

The data set is grouped by the following columns:

## Factor Columns:
==================================================================

* subject - The ID of the test subject. Has values from 1-30
* activity - The type of activity performed when the corresponding measurements were taken. Has the following labels:
• WALKING: subject was walking during the test
• WALKING_UPSTAIRS: subject was walking up a staircase during the test
• WALKING_DOWNSTAIRS: subject was walking down a staircase during the test
• SITTING: subject was sitting during the test
• STANDING: subject was standing during the test
• LAYING: subject was laying down during the test

The average value of each variable for each activity and each subject is calculated and stored in the following columns:

## Integer Columns:
==================================================================

* tbodyaccmeanx
* tbodyaccmeany
* tbodyaccmeanz
* tbodyaccstandarddeviationx
* tbodyaccstandarddeviationy
* tbodyaccstandarddeviationz
* tgravityaccmeanx
* tgravityaccmeany
* tgravityaccmeanz
* tgravityaccstandarddeviationx
* tgravityaccstandarddeviationy
* tgravityaccstandarddeviationz
* tbodyaccjerkmeanx
* tbodyaccjerkmeany
* tbodyaccjerkmeanz
* tbodyaccjerkstandarddeviationx
* tbodyaccjerkstandarddeviationy
* tbodyaccjerkstandarddeviationz
* tbodygyromeanx
* tbodygyromeany
* tbodygyromeanz
* tbodygyrostandarddeviationx
* tbodygyrostandarddeviationy
* tbodygyrostandarddeviationz
* tbodygyrojerkmeanx
* tbodygyrojerkmeany
* tbodygyrojerkmeanz
* tbodygyrojerkstandarddeviationx
* tbodygyrojerkstandarddeviationy
* tbodygyrojerkstandarddeviationz
* tbodyaccmagmean
* tbodyaccmagstandarddeviation
* tgravityaccmagmean
* tgravityaccmagstandarddeviation
* tbodyaccjerkmagmean
* tbodyaccjerkmagstandarddeviation
* tbodygyromagmean
* tbodygyromagstandarddeviation
* tbodygyrojerkmagmean
* tbodygyrojerkmagstandarddeviation
* fbodyaccmeanx
* fbodyaccmeany
* fbodyaccmeanz
* fbodyaccstandarddeviationx
* fbodyaccstandarddeviationy
* fbodyaccstandarddeviationz
* fbodyaccmeanfreqx
* fbodyaccmeanfreqy
* fbodyaccmeanfreqz
* fbodyaccjerkmeanx
* fbodyaccjerkmeany
* fbodyaccjerkmeanz
* fbodyaccjerkstandarddeviationx
* fbodyaccjerkstandarddeviationy
* fbodyaccjerkstandarddeviationz
* fbodyaccjerkmeanfreqx
* fbodyaccjerkmeanfreqy
* fbodyaccjerkmeanfreqz
* fbodygyromeanx
* fbodygyromeany
* fbodygyromeanz
* fbodygyrostandarddeviationx
* fbodygyrostandarddeviationy
* fbodygyrostandarddeviationz
* fbodygyromeanfreqx
* fbodygyromeanfreqy
* fbodygyromeanfreqz
* fbodyaccmagmean
* fbodyaccmagstandarddeviation
* fbodyaccmagmeanfreq
* fbodybodyaccjerkmagmean
* fbodybodyaccjerkmagstandarddeviation
* fbodybodyaccjerkmagmeanfreq
* fbodybodygyromagmean
* fbodybodygyromagstandarddeviation
* fbodybodygyromagmeanfreq
* fbodybodygyrojerkmagmean
* fbodybodygyrojerkmagstandarddeviation
* fbodybodygyrojerkmagmeanfreq