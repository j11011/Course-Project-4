library(dplyr)

#create folder
dir.create("./UCIdata")

#download file to folder
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",destfile="./UCIdata/data.zip")

#unzip file
unzip(zipfile="./UCIdata/data.zip",exdir="./UCIdata")

file_path="UCIdata/UCI HAR Dataset/"

### 1


#read test files
test_x=read.table(paste0(file_path,"test/X_test.txt"),header = FALSE)
test_y=read.table(paste0(file_path,"test/y_test.txt"),header = FALSE)
test_subjects=read.table(paste0(file_path,"test/subject_test.txt"),header = FALSE)

#read train files
train_x=read.table(paste0(file_path,"train/X_train.txt"),header = FALSE)
train_y=read.table(paste0(file_path,"train/y_train.txt"),header = FALSE)
train_subjects=read.table(paste0(file_path,"train/subject_train.txt"),header = FALSE)

#merge train and test data
data_x=rbind(train_x,test_x)
data_y=rbind(train_y,test_y)
data_subjects=rbind(train_subjects,test_subjects)

#merge x,y and subject data
names(data_y)="data_y"
names(data_subjects)="data_subjects"

data_features=read.table(paste0(file_path,"features.txt"),header = FALSE)
names(data_x)=data_features$V2
data_full= cbind(data_x,data_y,data_subjects)

### 2

#subset to get mean and std
data_features_mean_std=grep("-mean\\(|-std\\(", data_features$V2,value = T)
data_full_mean_std=data_full[,c(data_features_mean_std,"data_subjects","data_y")]

#### 3

#replace data_y with activity labels
activity_labels = read.table(paste0(file_path,"activity_labels.txt"),header = FALSE)

data_full_mean_std_labels=merge(data_full_mean_std,activity_labels,by.x="data_y",by.y="V1")
#dropping data_y as numeric
data_full_mean_std_labels$data_y=NULL

#renaming column V2 to activity
data_full_mean_std_labels=rename(data_full_mean_std_labels , "Activity"="V2")


##### 4

#rename  
data_full_mean_std_labels=rename(data_full_mean_std_labels , "Subject"="data_subjects")
names(data_full_mean_std_labels)<-gsub("^f", "Frequency", names(data_full_mean_std_labels))
names(data_full_mean_std_labels)<-gsub("^t", "TimeDomain", names(data_full_mean_std_labels))
names(data_full_mean_std_labels)<-gsub("Acc", "Accelerometer", names(data_full_mean_std_labels))
names(data_full_mean_std_labels)<-gsub("Gyro", "Gyroscope", names(data_full_mean_std_labels))
names(data_full_mean_std_labels)<-gsub("Mag", "Magnitude", names(data_full_mean_std_labels))
names(data_full_mean_std_labels) <- gsub('-mean',"-MeanValue",names(data_full_mean_std_labels))
names(data_full_mean_std_labels) <- gsub('-std',"-StandardDeviation",names(data_full_mean_std_labels))

##### 5

#  independent tidy data set with the average of each variable for each activity and each subject.

data_tidy<-aggregate(. ~Subject + Activity, data_full_mean_std_labels, mean)


write.table(data_tidy, file = "data_tidy.txt",row.name=FALSE)






