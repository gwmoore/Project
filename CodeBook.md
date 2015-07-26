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
DITEN - Universit‡ degli Studi di Genova.
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

* Project data analysis

This is a description of the analysis performed to create the final results data set.

**  1	Merges the training and the test sets to create one data set.

**	2	Extracts only the measurements on the mean and standard deviation for each measurement.

"feature_number" "feature" 						"rev_feature"

	1 			"tBodyAcc-mean()-X" 			"tBodyAccMeanX"
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
543 "fBodyBodyGyroJerkMag-std()" "fBodyBodyGyroJerkMagStd"

**	3	Uses descriptive activity names to name the activities in the data set.

**	4	Appropriately labels the data set with descriptive variable names.

**	5	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
