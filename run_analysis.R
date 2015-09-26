setwd("/Users/boc/Dropbox/Coursera/GettingCleaningData/HumanActivityRecognitionUsingSmartphones")

#You should create one R script called run_analysis.R that does the following. 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#get list mean and std measurements
measurement_names <- read.table("UCI HAR Dataset/features.txt")
mean_std_measures <- grep("std|mean", measurement_names$V2)

#get subset of training and test data and combine into one set
training_data_all <- read.table("UCI HAR Dataset/train/X_train.txt")
training_data <- training_data_all[,mean_std_measures]
test_data_all <- read.table("UCI HAR Dataset/test/X_test.txt")
test_data <- test_data_all[,mean_std_measures]
combined_data <- rbind(training_data, test_data)

#add column names
colnames(combined_data) <- measurement_names[mean_std_measures, 2]

#get training and test codes and combine
training_codes <- read.table("UCI HAR Dataset/train/y_train.txt")
test_codes <- read.table("UCI HAR Dataset/test/y_test.txt")
codes_combined <- rbind(training_codes, test_codes)

#add labels to the codes
labels <- read.table("UCI HAR Dataset/activity_labels.txt")
codes_combined$activity <- factor(codes_combined$V1, levels = labels$V1, labels = labels$V2)

#combine training and test subjects
training_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
test_subjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
subjects_combined <- rbind(training_subjects, test_subjects)

#Combine and name activity and subjects
activities_subjects_combined <- cbind(codes_combined$activity, subjects_combined)
colnames(activities_subjects_combined) <- c("subject.id", "activity")

#combine with measure
data <- cbind(activities_subjects_combined, combined_data)

#average of each variable for each activity and each subject
tidy_data <- aggregate(data[,3:81], by = list(data$subject.id, data$activity), FUN = mean)
colnames(tidy_data)[1:2] <- c("subject.id", "activity")
write.table(tidy_data, file="tidy_dataset.txt", row.names = FALSE)

#colnames(tidy_data)
