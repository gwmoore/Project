###################################################################################################
# Read in 'features.txt' and 'activity_labels.txt'

features <- read.delim("~/Coursera/Data Science Specialization Track - Johns Hopkins Bloomberg School of Public Health/Course #3 - Getting and Cleaning Data/Project/UCI HAR Dataset/features.txt",
                      sep = "", header = FALSE)

activity_labels <- read.delim("~/Coursera/Data Science Specialization Track - Johns Hopkins Bloomberg School of Public Health/Course #3 - Getting and Cleaning Data/Project/UCI HAR Dataset/activity_labels.txt",
                      sep = "", header = FALSE)
###################################################################################################
# Read in 'train' associated data

x_train <- read.delim("~/Coursera/Data Science Specialization Track - Johns Hopkins Bloomberg School of Public Health/Course #3 - Getting and Cleaning Data/Project/UCI HAR Dataset/train/x_train.txt",
                                sep = "", header = FALSE)

y_train <- read.delim("~/Coursera/Data Science Specialization Track - Johns Hopkins Bloomberg School of Public Health/Course #3 - Getting and Cleaning Data/Project/UCI HAR Dataset/train/y_train.txt",
                      sep = "", header = FALSE)

subject_train <- read.delim("~/Coursera/Data Science Specialization Track - Johns Hopkins Bloomberg School of Public Health/Course #3 - Getting and Cleaning Data/Project/UCI HAR Dataset/train/subject_train.txt",
                      sep = "", header = FALSE)
###################################################################################################
# Read in 'test' associated data

x_test <- read.delim("~/Coursera/Data Science Specialization Track - Johns Hopkins Bloomberg School of Public Health/Course #3 - Getting and Cleaning Data/Project/UCI HAR Dataset/test/x_test.txt",
                     sep = "", header = FALSE)

y_test <- read.delim("~/Coursera/Data Science Specialization Track - Johns Hopkins Bloomberg School of Public Health/Course #3 - Getting and Cleaning Data/Project/UCI HAR Dataset/test/y_test.txt",
                     sep = "", header = FALSE)

subject_test <- read.delim("~/Coursera/Data Science Specialization Track - Johns Hopkins Bloomberg School of Public Health/Course #3 - Getting and Cleaning Data/Project/UCI HAR Dataset/test/subject_test.txt",
                     sep = "", header = FALSE)
###################################################################################################
###################################################################################################
# Convert data sets to tbl class and rename the variables (except x_test and x_train)

# a) features

features[, 2] <- as.character(features[, 2])

tbl_features <- tbl_df(features) %>%
  rename(feature_number = V1, feature = V2)
###################################################################################################
# b) activity_labels

activity_labels[, 2] <- as.character(activity_labels[, 2])

tbl_activity_labels <- tbl_df(activity_labels) %>%
  rename(activity_number = V1, activity_label = V2)
###################################################################################################
# c) subject_test

# add variable 'index' for future merge

tbl_subject_test <- tbl_df(subject_test) %>%
  rename(subject_number = V1) %>%
  mutate(index = 1:nrow(subject_test)) %>%
  select(index, subject_number)
###################################################################################################
# d) subject_train

# add variable 'index' for future merge

tbl_subject_train <- tbl_df(subject_train) %>%
  rename(subject_number = V1) %>%
  mutate(index = 1:nrow(subject_train)) %>%
  select(index, subject_number)
###################################################################################################
# e) x_test

# add variable 'index' for future merge

tbl_x_test <- tbl_df(x_test) %>%
  mutate(index = 1:nrow(x_test)) %>%
  select(index, num_range("V", 1:ncol(x_test)))
###################################################################################################
# f) x_train

# add variable 'index' for future merge

tbl_x_train <- tbl_df(x_train) %>%
  mutate(index = 1:nrow(x_train)) %>%
  select(index, num_range("V", 1:ncol(x_train)))
###################################################################################################
# g) y_test

# add variable 'index' for future merge

tbl_y_test <- tbl_df(y_test) %>%
  rename(activity_number = V1) %>%
  mutate(index = 1:nrow(y_test)) %>%
  select(index, activity_number)
###################################################################################################
# h) y_train

# add variable 'index' for future merge

tbl_y_train <- tbl_df(y_train) %>%
  rename(activity_number = V1) %>%
  mutate(index = 1:nrow(y_train)) %>%
  select(index, activity_number)
###################################################################################################
###################################################################################################
# 1. Merge the training and test sets to create one data set.

# 1a. Convert the original 'activity number' to the corresponding 'activity label' for y_test
# data set. (NOTE: This step is essentially step #3 from the assignment -- 3. Uses descriptive
# activity names to name the activities in the data set.)

tbl_y_test_act <- inner_join(tbl_y_test, tbl_activity_labels, by = "activity_number") %>%
  select(-activity_number)

# 1b. Merge the test subject and the test activity data sets.

tbl_subject_test_act <- inner_join(tbl_subject_test, tbl_y_test_act, by = "index")

# 1c. Merge the previous (1b) data set with the actual test data.

tbl_test <- inner_join(tbl_subject_test_act, tbl_x_test, by = "index") %>%
  select(-index)
###################################################################################################
# Perform the same steps for the train data sets.

# 1d. Convert the original 'activity number' to the corresponding 'activity label' for y_train
# data set. (NOTE: This step is essentially step #3 from the assignment -- 3. Uses descriptive
# activity names to name the activities in the data set.)

tbl_y_train_act <- inner_join(tbl_y_train, tbl_activity_labels, by = "activity_number") %>%
  select(-activity_number)

# 1e. Merge the train subject and the train activity data sets.

tbl_subject_train_act <- inner_join(tbl_subject_train, tbl_y_train_act, by = "index")

# 1f. Merge the previous (1e) data set with the actual train data.

tbl_train <- inner_join(tbl_subject_train_act, tbl_x_train, by = "index") %>%
  select(-index)
###################################################################################################
# final merge -- merging the overall test and train data sets

tbl_test_train <- full_join(tbl_test, tbl_train)
###################################################################################################
###################################################################################################
# 2. Extract only the measurements on the mean and standard deviation for each measurement.

# 2a. Find the feature variable names with the substring 'mean()' or 'std()' in the variable name.
# Also, create a new 'revised' feature variable.

tbl_features_ss <- filter(tbl_features, grepl("(mean|std)[(]", feature, ignore.case = TRUE)) %>%
  mutate(rev_feature = feature)

# 'Clean' the feature names by eliminating non-alphanumeric characters

tbl_features_ss$rev_feature <- gsub("[()]", "", tbl_features_ss$feature, ignore.case = FALSE, perl = TRUE)
tbl_features_ss$rev_feature <- gsub("-mean(-)?", "Mean", tbl_features_ss$rev_feature, ignore.case = FALSE, perl = TRUE)
tbl_features_ss$rev_feature <- gsub("-std(-)?", "Std", tbl_features_ss$rev_feature, ignore.case = FALSE, perl = TRUE)

# 2b. Subset the overall test and train data to include only those variables that meet the criteria
# in step 2a.

tbl_test_train_ss <- select(tbl_test_train, subject_number, activity_label,
                            num_range("V", c(tbl_features_ss$feature_number)))
###################################################################################################
###################################################################################################
# NOTE: For step #3 of the assignment, see steps 1a and 1d above.
###################################################################################################
###################################################################################################
# 4. Appropriately labels the data set with descriptive variable names.

# Rename the 'V' named variables to their corresponding feature names.

colnames(tbl_test_train_ss)[3:ncol(tbl_test_train_ss)] <- tbl_features_ss$rev_feature
###################################################################################################
###################################################################################################
# 5. From the data set in step 4, create a second, independent tidy data set with the average
# of each variable for each activity and each subject.

tbl_test_train_fnl <- group_by(tbl_test_train_ss, activity_label, subject_number) %>%
  summarise_each(funs(mean))
  
# 5a. Rename the non-grouping variables to indicate that the values are the mean.

colnames(tbl_test_train_fnl)[3:ncol(tbl_test_train_fnl)] <- paste("mean(", tbl_features_ss$rev_feature, ")", sep = "")
###################################################################################################
###################################################################################################
###################################################################################################
###################################################################################################
# R code to write results data set to a txt file.

# write.table(tbl_test_train_fnl, file = "~/Coursera/Data Science Specialization Track - Johns Hopkins Bloomberg School of Public Health/Course #3 - Getting and Cleaning Data/Project/tbl_test_train_fnl",
#            row.names = FALSE)