library(dplyr)

# Find current directory
curr_dir <- getwd()

# Download zip and extract files in current dir
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", paste(curr_dir, "/projectfiles.zip", sep=""))
unzip(paste(curr_dir, "/projectfiles.zip", sep=""))

# Vector of activity names (walking, running, etc)
activity_labels <- read.table(paste(curr_dir, "/UCI HAR Dataset/activity_labels.txt", sep=""))

# Vector of feature names (acceleration mean, gyro std dev, etc)
features <- read.table(paste(curr_dir,"/UCI HAR Dataset/features.txt", sep=""))

# Features will become column names for the datasets
set_columns <- make.names(names=features[,2], unique=TRUE, allow_ = TRUE)

# Load all info regarding the test dataset
test_subjects <- read.table(paste(curr_dir, "/UCI HAR Dataset/test/subject_test.txt", sep=""))
colnames(test_subjects) <- c("subject")
test_activities <- read.table(paste(curr_dir, "/UCI HAR Dataset/test/y_test.txt", sep=""))
colnames(test_activities) <- c("activity")
test_set <- read.table(paste(curr_dir,"/UCI HAR Dataset/test/X_test.txt", sep=""))

# Load all info regarding the train dataset
train_subjects <- read.table(paste(curr_dir, "/UCI HAR Dataset/train/subject_train.txt", sep=""))
colnames(train_subjects) <- c("subject")
train_activities <- read.table(paste(curr_dir, "/UCI HAR Dataset/train/y_train.txt", sep=""))
colnames(train_activities) <- c("activity")
train_set <- read.table(paste(curr_dir, "/UCI HAR Dataset/train/X_train.txt", sep=""))

# Set columns of sets
colnames(test_set) <- set_columns
colnames(train_set) <- set_columns

# Add columns with subjects and activities for both datasets
train_set$activity <- train_activities$activity
train_set$subject <- train_subjects$subject
test_set$activity <- test_activities$activity
test_set$subject <- test_subjects$subject

# Combine both databases
merged_sets <- rbind(test_set, train_set)

# Translate activity into a readable name
merged_sets <- merge(merged_sets, activity_labels, by.x="activity", by.y="V1", sort=FALSE)

# Select only the means and standard deviation columns
means_stds <- select(merged_sets, V2, subject, contains(".mean."), contains(".std"))
colnames(means_stds)[1] = "activity_name"

# Make sure both subject and activity columns
# are factors so grouping and summarizing works properly
means_stds$subject <- factor(means_stds$subject)
means_stds$activity_name <- factor(means_stds$activity_name)

# Summarise by subject and activity
grouped_set <- group_by(means_stds, subject, activity_name)
means_summary<-summarise_each(grouped_set,funs(mean))

# Write out to file
write.table(means_summary, paste(curr_dir, "/output.txt", sep=""), row.names = FALSE) 
