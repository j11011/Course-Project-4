
## Getting and Cleaning Data Course Project

This is my submit to the Peer-graded Assignment: Getting and Cleaning Data Course Project, the R script `run_analysis.R`makes the next things:
* Downloads and unzips the requeried files to do the excersice from the provided url (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
* Reads and merges the test and train files.
* Filters the measurements(data_x) we only have the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities(data_y) in the data set.
* Appropriately labels the data set with descriptive variable names.
* Creates a second tidy data set with the average of each variable for each activity and each subject this dataset is saved in the file `data_tidy.txt`.

A full description of the data used is available at the site http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The `run_analysis.R` was done and used using R version 3.4.2 in Windows 10 64 bits and it uses the library dplyr.
