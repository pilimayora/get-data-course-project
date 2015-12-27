# Getting and Cleaning Data - Course Project

This repository hosts the R code and documentation files for the Data Science's track course "Getting and Cleaning data", available in Coursera.

The dataset being used is: [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Files

The code downloads the zip file provided by the course staff in the current working directory, and unzips its contents in the same directory.

`CodeBook.md` describes the variables, the data, and any transformations or work that was performed to clean up the data.

`run_analysis.R` contains all the code to:

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The output of the 5th step is called `output.txt`, and is uploaded in the course project's form.