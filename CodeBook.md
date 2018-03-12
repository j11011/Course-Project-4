## CodeBook

This is the code book for the dataset contained in the file `data_tidy.txt`

### Identifiers

* Subject: This is the id of the subject.
* Activity: This is the activity perfomed when the meseurements were taken the activities can be the following:
  * `LAYING`
  * `SITTING`
  * `STANDING`
  * `WALKING` 
  * `WALKING_DOWNSTAIRS` 
  * `WALKING_UPSTAIRS`

## Measurements

The measurements are the average of each variable for each activity and each subject, The time domain signals (begin with TimeDomain ) were captured at a constant rate of 50 Hz, then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Below is a list of the measurements in the dataset:

* `TimeDomainBodyAccelerometer-MeanValue()-X`
* `TimeDomainBodyAccelerometer-MeanValue()-Y`
* `TimeDomainBodyAccelerometer-MeanValue()-Z`
* `TimeDomainBodyAccelerometer-StandardDeviation()-X`
* `TimeDomainBodyAccelerometer-StandardDeviation()-Y`
* `TimeDomainBodyAccelerometer-StandardDeviation()-Z`
* `TimeDomainGravityAccelerometer-MeanValue()-X`
* `TimeDomainGravityAccelerometer-MeanValue()-Y`
* `TimeDomainGravityAccelerometer-MeanValue()-Z`
* `TimeDomainGravityAccelerometer-StandardDeviation()-X`
* `TimeDomainGravityAccelerometer-StandardDeviation()-Y`
* `TimeDomainGravityAccelerometer-StandardDeviation()-Z`
* `TimeDomainBodyAccelerometerJerk-MeanValue()-X`
* `TimeDomainBodyAccelerometerJerk-MeanValue()-Y`
* `TimeDomainBodyAccelerometerJerk-MeanValue()-Z`
* `TimeDomainBodyAccelerometerJerk-StandardDeviation()-X`
* `TimeDomainBodyAccelerometerJerk-StandardDeviation()-Y`
* `TimeDomainBodyAccelerometerJerk-StandardDeviation()-Z`
* `TimeDomainBodyGyroscope-MeanValue()-X`
* `TimeDomainBodyGyroscope-MeanValue()-Y`
* `TimeDomainBodyGyroscope-MeanValue()-Z`
* `TimeDomainBodyGyroscope-StandardDeviation()-X`
* `TimeDomainBodyGyroscope-StandardDeviation()-Y`
* `TimeDomainBodyGyroscope-StandardDeviation()-Z`
* `TimeDomainBodyGyroscopeJerk-MeanValue()-X`
* `TimeDomainBodyGyroscopeJerk-MeanValue()-Y`
* `TimeDomainBodyGyroscopeJerk-MeanValue()-Z`
* `TimeDomainBodyGyroscopeJerk-StandardDeviation()-X`
* `TimeDomainBodyGyroscopeJerk-StandardDeviation()-Y`
* `TimeDomainBodyGyroscopeJerk-StandardDeviation()-Z`
* `TimeDomainBodyAccelerometerMagnitude-MeanValue()`
* `TimeDomainBodyAccelerometerMagnitude-StandardDeviation()`
* `TimeDomainGravityAccelerometerMagnitude-MeanValue()`
* `TimeDomainGravityAccelerometerMagnitude-StandardDeviation()`
* `TimeDomainBodyAccelerometerJerkMagnitude-MeanValue()`
* `TimeDomainBodyAccelerometerJerkMagnitude-StandardDeviation()`
* `TimeDomainBodyGyroscopeMagnitude-MeanValue()`
* `TimeDomainBodyGyroscopeMagnitude-StandardDeviation()`
* `TimeDomainBodyGyroscopeJerkMagnitude-MeanValue()`
* `TimeDomainBodyGyroscopeJerkMagnitude-StandardDeviation()`
* `FrequencyBodyAccelerometer-MeanValue()-X`
* `FrequencyBodyAccelerometer-MeanValue()-Y`
* `FrequencyBodyAccelerometer-MeanValue()-Z`
* `FrequencyBodyAccelerometer-StandardDeviation()-X`
* `FrequencyBodyAccelerometer-StandardDeviation()-Y`
* `FrequencyBodyAccelerometer-StandardDeviation()-Z`
* `FrequencyBodyAccelerometerJerk-MeanValue()-X`
* `FrequencyBodyAccelerometerJerk-MeanValue()-Y`
* `FrequencyBodyAccelerometerJerk-MeanValue()-Z`
* `FrequencyBodyAccelerometerJerk-StandardDeviation()-X`
* `FrequencyBodyAccelerometerJerk-StandardDeviation()-Y`
* `FrequencyBodyAccelerometerJerk-StandardDeviation()-Z`
* `FrequencyBodyGyroscope-MeanValue()-X`
* `FrequencyBodyGyroscope-MeanValue()-Y`
* `FrequencyBodyGyroscope-MeanValue()-Z`
* `FrequencyBodyGyroscope-StandardDeviation()-X`
* `FrequencyBodyGyroscope-StandardDeviation()-Y`
* `FrequencyBodyGyroscope-StandardDeviation()-Z`
* `FrequencyBodyAccelerometerMagnitude-MeanValue()`
* `FrequencyBodyAccelerometerMagnitude-StandardDeviation()`
* `FrequencyBodyBodyAccelerometerJerkMagnitude-MeanValue()`
* `FrequencyBodyBodyAccelerometerJerkMagnitude-StandardDeviation()`
* `FrequencyBodyBodyGyroscopeMagnitude-MeanValue()`
* `FrequencyBodyBodyGyroscopeMagnitude-StandardDeviation()`
* `FrequencyBodyBodyGyroscopeJerkMagnitude-MeanValue()`
* `FrequencyBodyBodyGyroscopeJerkMagnitude-StandardDeviation()`



### Transformations 

The dataset was derived from the dataset contained in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip the transformations done where 
* Merging the training and the test sets to create one data set.
* Extracting only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names from activity_labels.txt to name the activities in the data set
* Appropriately labels the data set with descriptive variable names from features.txt.
