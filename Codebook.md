Coursera - Getting and Cleaning Data P2P Project - Codebook
===========================================================

This code book describes variables, data, and transformations performed to
clean the [Samsung accelerometer data](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones),
to extract mean and standard deviation measurements.

To extract the mean and standard deviation features the following regex was applied:
````
-(mean|std)[(] 
````

## Input data sets

Both the training and test data contain 68 variables:
- subject - identifier for the subject who executed the experiment
- label - label describing the type of activity
- 66 additional variables described below

The features in this data are from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These are time domain signals (prefix-ed with 't' to denote time) were captured at a constant rate of 50 Hz. 
They were filtered using a median filter and 3rd order low pass Butterworth filter with a corner frequency 
of 20 Hz to remove noise. The acceleration signal was separated into body and gravity acceleration signals 
(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
Body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). The magnitude of these three-dimensional signals were calculated 
using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).
Fast Fourier Transform (FFT) was applied to these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. ( 'f' is used to indicate frequency domain signals).
These signals were used to estimate variables of the feature vector for each pattern: 
*(XYZ is used to denote 3-axial signals in the X, Y and Z directions)*

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The mean and standard deviation were estimated from these signals.

## Tidy data set

Tidy data set contains the same variables as the merged data with renamed variables:
- dashes and parentheses removed from variable names
- variable names converted to camel case
- variable names are descriptive, so nothing needed to be done
- not duplicated - the variable names are unique, so nothing had to be done

## Tidy dataset Units

All columns except ```subjectID```,```activity``` contains numeric values expressed as floats.
```subjectID``` contains a progressive integer. 
```activity``` contains string enumeration composed of the following elements:
- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

## Variables in merge and tidy data sets

 Raw data set | Tidy data set 
--------------|-------------- 
subject | human subject identifier
label |  activity label 
tBodyAcc-mean()-X | tBodyAccMeanX
tBodyAcc-mean()-Y | tBodyAccMeanY
tBodyAcc-mean()-Z | tBodyAccMeanZ
tBodyAcc-std()-X | tBodyAccStdX
tBodyAcc-std()-Y | tBodyAccStdY
tBodyAcc-std()-Z | tBodyAccStdZ
tGravityAcc-mean()-X | tGravityAccMeanX
tGravityAcc-mean()-Y | tGravityAccMeanY
tGravityAcc-mean()-Z | tGravityAccMeanZ
tGravityAcc-std()-X | tGravityAccStdX
tGravityAcc-std()-Y | tGravityAccStdY
tGravityAcc-std()-Z | tGravityAccStdZ
tBodyAccJerk-mean()-X | tBodyAccJerkMeanX
tBodyAccJerk-mean()-Y | tBodyAccJerkMeanY
tBodyAccJerk-mean()-Z | tBodyAccJerkMeanZ
tBodyAccJerk-std()-X | tBodyAccJerkStdX
tBodyAccJerk-std()-Y | tBodyAccJerkStdY
tBodyAccJerk-std()-Z | tBodyAccJerkStdZ
tBodyGyro-mean()-X | tBodyGyroMeanX
tBodyGyro-mean()-Y | tBodyGyroMeanY
tBodyGyro-mean()-Z | tBodyGyroMeanZ
tBodyGyro-std()-X | tBodyGyroStdX
tBodyGyro-std()-Y | tBodyGyroStdY
tBodyGyro-std()-Z | tBodyGyroStdZ
tBodyGyroJerk-mean()-X | tBodyGyroJerkMeanX
tBodyGyroJerk-mean()-Y | tBodyGyroJerkMeanY
tBodyGyroJerk-mean()-Z | tBodyGyroJerkMeanZ
tBodyGyroJerk-std()-X | tBodyGyroJerkStdX
tBodyGyroJerk-std()-Y | tBodyGyroJerkStdY
tBodyGyroJerk-std()-Z | tBodyGyroJerkStdZ
tBodyAccMag-mean() | tBodyAccMagMean
tBodyAccMag-std() | tBodyAccMagStd
tGravityAccMag-mean() | tGravityAccMagMean
tGravityAccMag-std() | tGravityAccMagStd
tBodyAccJerkMag-mean() | tBodyAccJerkMagMean
tBodyAccJerkMag-std() | tBodyAccJerkMagStd
tBodyGyroMag-mean() | tBodyGyroMagMean
tBodyGyroMag-std() | tBodyGyroMagStd
tBodyGyroJerkMag-mean() | tBodyGyroJerkMagMean
tBodyGyroJerkMag-std() | tBodyGyroJerkMagStd
fBodyAcc-mean()-X | fBodyAccMeanX
fBodyAcc-mean()-Y | fBodyAccMeanY
fBodyAcc-mean()-Z | fBodyAccMeanZ
fBodyAcc-std()-X | fBodyAccStdX
fBodyAcc-std()-Y | fBodyAccStdY
fBodyAcc-std()-Z | fBodyAccStdZ
fBodyAccJerk-mean()-X | fBodyAccJerkMeanX
fBodyAccJerk-mean()-Y | fBodyAccJerkMeanY
fBodyAccJerk-mean()-Z | fBodyAccJerkMeanZ
fBodyAccJerk-std()-X | fBodyAccJerkStdX
fBodyAccJerk-std()-Y | fBodyAccJerkStdY
fBodyAccJerk-std()-Z | fBodyAccJerkStdZ
fBodyGyro-mean()-X | fBodyGyroMeanX
fBodyGyro-mean()-Y | fBodyGyroMeanY
fBodyGyro-mean()-Z | fBodyGyroMeanZ
fBodyGyro-std()-X | fBodyGyroStdX
fBodyGyro-std()-Y | fBodyGyroStdY
fBodyGyro-std()-Z | fBodyGyroStdZ
fBodyAccMag-mean() | fBodyAccMagMean
fBodyAccMag-std() | fBodyAccMagStd
fBodyBodyAccJerkMag-mean() | fBodyAccJerkMagMean
fBodyBodyAccJerkMag-std() | fBodyAccJerkMagStd
fBodyBodyGyroMag-mean() | fBodyGyroMagMean
fBodyBodyGyroMag-std() | fBodyGyroMagStd
fBodyBodyGyroJerkMag-mean() | fBodyGyroJerkMagMean
fBodyBodyGyroJerkMag-std() | fBodyGyroJerkMagStd