# CodeBook

* Project data description

Below is the README.txt from the UCI Human Activity Recognition (HAR) Using Smartphones Data website.

Here are the data:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

------------------------------------------------------------------------------------------------------
* Project data analysis

The resulting data set has 68 variables - two grouping variables (one variable 'activity_label' for
the 6 activities and the other variable 'subject_number' for the 30 subjects) and 66 variables
(33 'mean' variables and 33 'std' variables). The revised feature name is listed below in the column
labeled "rev_feature".

"feature_number" "feature" 						"rev_feature"			"variable description"

	1 			"tBodyAcc-mean()-X" 			"tBodyAccMeanX"			(see below)
	2 			"tBodyAcc-mean()-Y" 			"tBodyAccMeanY"
	3 			"tBodyAcc-mean()-Z" 			"tBodyAccMeanZ"
	4 			"tBodyAcc-std()-X" 				"tBodyAccStdX"
	5 			"tBodyAcc-std()-Y" 				"tBodyAccStdY"
	6 			"tBodyAcc-std()-Z" 				"tBodyAccStdZ"
	41 			"tGravityAcc-mean()-X" 			"tGravityAccMeanX"
	42 			"tGravityAcc-mean()-Y" 			"tGravityAccMeanY"
	43 			"tGravityAcc-mean()-Z" 			"tGravityAccMeanZ"
	44 			"tGravityAcc-std()-X" 			"tGravityAccStdX"
	45 			"tGravityAcc-std()-Y" 			"tGravityAccStdY"
	46 			"tGravityAcc-std()-Z" 			"tGravityAccStdZ"
	81 			"tBodyAccJerk-mean()-X" 		"tBodyAccJerkMeanX"
	82 			"tBodyAccJerk-mean()-Y" 		"tBodyAccJerkMeanY"
	83 			"tBodyAccJerk-mean()-Z" 		"tBodyAccJerkMeanZ"
	84 			"tBodyAccJerk-std()-X" 			"tBodyAccJerkStdX"
	85 			"tBodyAccJerk-std()-Y" 			"tBodyAccJerkStdY"
	86 			"tBodyAccJerk-std()-Z" 			"tBodyAccJerkStdZ"
	121 		"tBodyGyro-mean()-X" 			"tBodyGyroMeanX"
	122 		"tBodyGyro-mean()-Y" 			"tBodyGyroMeanY"
	123 		"tBodyGyro-mean()-Z" 			"tBodyGyroMeanZ"
	124 		"tBodyGyro-std()-X" 			"tBodyGyroStdX"
	125 		"tBodyGyro-std()-Y" 			"tBodyGyroStdY"
	126 		"tBodyGyro-std()-Z" 			"tBodyGyroStdZ"
	161 		"tBodyGyroJerk-mean()-X" 		"tBodyGyroJerkMeanX"
	162 		"tBodyGyroJerk-mean()-Y" 		"tBodyGyroJerkMeanY"
	163 		"tBodyGyroJerk-mean()-Z" 		"tBodyGyroJerkMeanZ"
	164 		"tBodyGyroJerk-std()-X" 		"tBodyGyroJerkStdX"
	165 		"tBodyGyroJerk-std()-Y" 		"tBodyGyroJerkStdY"
	166 		"tBodyGyroJerk-std()-Z" 		"tBodyGyroJerkStdZ"
	201 		"tBodyAccMag-mean()" 			"tBodyAccMagMean"
	202 		"tBodyAccMag-std()" 			"tBodyAccMagStd"
	214 		"tGravityAccMag-mean()" 		"tGravityAccMagMean"
	215 		"tGravityAccMag-std()" 			"tGravityAccMagStd"
	227 		"tBodyAccJerkMag-mean()" 		"tBodyAccJerkMagMean"
	228 		"tBodyAccJerkMag-std()" 		"tBodyAccJerkMagStd"
	240 		"tBodyGyroMag-mean()" 			"tBodyGyroMagMean"
	241 		"tBodyGyroMag-std()" 			"tBodyGyroMagStd"
	253 		"tBodyGyroJerkMag-mean()" 		"tBodyGyroJerkMagMean"
	254 		"tBodyGyroJerkMag-std()" 		"tBodyGyroJerkMagStd"
	266 		"fBodyAcc-mean()-X" 			"fBodyAccMeanX"
	267 		"fBodyAcc-mean()-Y" 			"fBodyAccMeanY"
	268 		"fBodyAcc-mean()-Z" 			"fBodyAccMeanZ"
	269 		"fBodyAcc-std()-X" 				"fBodyAccStdX"
	270 		"fBodyAcc-std()-Y" 				"fBodyAccStdY"
	271 		"fBodyAcc-std()-Z" 				"fBodyAccStdZ"
	345 		"fBodyAccJerk-mean()-X" 		"fBodyAccJerkMeanX"
	346 		"fBodyAccJerk-mean()-Y" 		"fBodyAccJerkMeanY"
	347 		"fBodyAccJerk-mean()-Z" 		"fBodyAccJerkMeanZ"
	348 		"fBodyAccJerk-std()-X" 			"fBodyAccJerkStdX"
	349 		"fBodyAccJerk-std()-Y" 			"fBodyAccJerkStdY"
	350 		"fBodyAccJerk-std()-Z" 			"fBodyAccJerkStdZ"
	424 		"fBodyGyro-mean()-X" 			"fBodyGyroMeanX"
	425 		"fBodyGyro-mean()-Y" 			"fBodyGyroMeanY"
	426 		"fBodyGyro-mean()-Z" 			"fBodyGyroMeanZ"
	427 		"fBodyGyro-std()-X" 			"fBodyGyroStdX"
	428 		"fBodyGyro-std()-Y" 			"fBodyGyroStdY"
	429 		"fBodyGyro-std()-Z" 			"fBodyGyroStdZ"
	503 		"fBodyAccMag-mean()" 			"fBodyAccMagMean"
	504 		"fBodyAccMag-std()" 			"fBodyAccMagStd"
	516 		"fBodyBodyAccJerkMag-mean()" 	"fBodyBodyAccJerkMagMean"
	517 		"fBodyBodyAccJerkMag-std()" 	"fBodyBodyAccJerkMagStd"
	529 		"fBodyBodyGyroMag-mean()" 		"fBodyBodyGyroMagMean"
	530 		"fBodyBodyGyroMag-std()" 		"fBodyBodyGyroMagStd"
	542 		"fBodyBodyGyroJerkMag-mean()" 	"fBodyBodyGyroJerkMagMean"
	543 		"fBodyBodyGyroJerkMag-std()" 	"fBodyBodyGyroJerkMagStd"
	


from the UCI HAR wbsite, a description of the features:

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
