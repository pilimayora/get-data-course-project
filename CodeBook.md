# Code Book

This code book summarizes the resulting data fields in `output.txt`.

## Identifiers

* `subject` - The ID of the test subject
* `activity_name` - The type of activity performed when the corresponding measurements were taken

## Measurements

(All agreggated averages)

* `tBodyAcc.mean...X`
* `tBodyAcc.mean...Y`
* `tBodyAcc.mean...Z`
* `tGravityAcc.mean...X`
* `tGravityAcc.mean...Y`
* `tGravityAcc.mean...Z`
* `tBodyAccJerk.mean...X`
* `tBodyAccJerk.mean...Y`
* `tBodyAccJerk.mean...Z`
* `tBodyGyro.mean...X`
* `tBodyGyro.mean...Y`
* `tBodyGyro.mean...Z`
* `tBodyGyroJerk.mean...X`
* `tBodyGyroJerk.mean...Y`
* `tBodyGyroJerk.mean...Z`
* `tBodyAccMag.mean..`
* `tGravityAccMag.mean..`
* `tBodyAccJerkMag.mean..`
* `tBodyGyroMag.mean..`
* `tBodyGyroJerkMag.mean..`
* `fBodyAcc.mean...X`
* `fBodyAcc.mean...Y`
* `fBodyAcc.mean...Z`
* `fBodyAccJerk.mean...X`
* `fBodyAccJerk.mean...Y`
* `fBodyAccJerk.mean...Z`
* `fBodyGyro.mean...X`
* `fBodyGyro.mean...Y`
* `fBodyGyro.mean...Z`
* `fBodyAccMag.mean..`
* `fBodyBodyAccJerkMag.mean..`
* `fBodyBodyGyroMag.mean..`
* `fBodyBodyGyroJerkMag.mean..`
* `tBodyAcc.std...X`
* `tBodyAcc.std...Y`
* `tBodyAcc.std...Z`
* `tGravityAcc.std...X`
* `tGravityAcc.std...Y`
* `tGravityAcc.std...Z`
* `tBodyAccJerk.std...X`
* `tBodyAccJerk.std...Y`
* `tBodyAccJerk.std...Z`
* `tBodyGyro.std...X`
* `tBodyGyro.std...Y`
* `tBodyGyro.std...Z`
* `tBodyGyroJerk.std...X`
* `tBodyGyroJerk.std...Y`
* `tBodyGyroJerk.std...Z`
* `tBodyAccMag.std..`
* `tGravityAccMag.std..`
* `tBodyAccJerkMag.std..`
* `tBodyGyroMag.std..`
* `tBodyGyroJerkMag.std..`
* `fBodyAcc.std...X`
* `fBodyAcc.std...Y`
* `fBodyAcc.std...Z`
* `fBodyAccJerk.std...X`
* `fBodyAccJerk.std...Y`
* `fBodyAccJerk.std...Z`
* `fBodyGyro.std...X`
* `fBodyGyro.std...Y`
* `fBodyGyro.std...Z`
* `fBodyAccMag.std..`
* `fBodyBodyAccJerkMag.std..`
* `fBodyBodyGyroMag.std..`
* `fBodyBodyGyroJerkMag.std..`

## Activity Labels

* `WALKING` (value `1`): subject was walking during the test
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test
* `SITTING` (value `4`): subject was sitting during the test
* `STANDING` (value `5`): subject was standing during the test
* `LAYING` (value `6`): subject was laying down during the test

## Resulting Values

The values for every cell have been calculated based on:

1. Merging the training and the test sets to create one data set.
2. Extracting only the measurements on the mean and standard deviation for each measurement. 
3. Calculating the averages of each variable for each activity and each subject.