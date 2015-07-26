# Project

* Project data analysis

** Description of run_analysis.R

This is a description of the analysis performed to create the final results data set.

***	0.	Read in the test, train, and related data (in txt files) into R workspace. Create a 'tbl_df'
		version of the data sets (for dplyr package, etc.) as well.

		Read in 'features.txt' and 'activity_labels.txt' and create 'tbl_df' version.
		Read in 'train' (x_train, y_train, subject_train) data and create 'tbl_df' version.
		Read in 'test' (x_test, y_test, subject_test) data and create 'tbl_df' version.
		
		Some of the variables in the data sets are renamed for readability (see code for specifics).
		Also, an 'index' variable is added to facilitate merging of the data sets below.

*** 1.	Merges the training and the test sets to create one data set.

		1a. Convert the original 'activity number' to the corresponding 'activity label' for y_test
			data set. (NOTE: This step is essentially step #3 from the assignment -- 3. Uses descrip-
			tive activity names to name the activities in the data set.)
		1b. Merge the test subject and the test activity data sets.
		1c. Merge the previous (1b) data set with the actual test (x_test) data.
		
		Perform the same steps for the train data sets.

		1d. Convert the original 'activity number' to the corresponding 'activity label' for y_train
			data set. (NOTE: This step is essentially step #3 from the assignment -- 3. Uses descrip-
			tive activity names to name the activities in the data set.)
		1e. Merge the train subject and the train activity data sets.
		1f. Merge the previous (1e) data set with the actual train (x_train) data.
		
		1g. The test and train data sets are merged into one overall test and train data set.

***	2.	Extracts only the measurements on the mean and standard deviation for each measurement.

		2a. Find the feature variable names with the substring 'mean()' or 'std()' in the variable
			name. Also, create a new 'revised' feature variable. 'Clean' the feature names by
			eliminating non-alphanumeric characters. This result is the revised variable name.
		2b. Subset the overall test and train data to include only those variables that meet the
			criteria in step 2a.

***	3.	Uses descriptive activity names to name the activities in the data set. (See steps #1a and
		1d.)

***	4.	Appropriately labels the data set with descriptive variable names.

		The resulting data set has 68 variables - two grouping variables (one variable for the 6
		activities and the other variable for the 30 subjects) and 66 variables (33 'mean' variables
		and 33 'std' variables).

		Rename the 'V'-named (nob-grouping) variables to their corresponding revised (cleaned) feature
		names.
		
		The mean is calculated for the 66 variables and then renamed by wrapping the variable's text
		name in 'mean(variable name here)'.

***	5.	From the data set in step 4, creates a second, independent tidy data set with the average of
		each variable for each activity and each subject.
		
		The intermediate data sets are removed.