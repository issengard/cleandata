##Here are the data for the project:
url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(url,"data.zip")

unzip("data.zip")


##You should create one R script called run_analysis.R that does the following.
##Merges the training and the test sets to create one data set.

#Exploring Data#
list.files()

#Loads labels DB
labels=read.table("UCI HAR Dataset/activity_labels.txt",header=F,col.names=c("id","activity"))

#Loads features DB
features=read.table("UCI HAR Dataset/features.txt",header=F)

#Cleans parentheses from features DB
features$V2=gsub("\\(|\\)","",features$V2)

#Training#
list.files("UCI HAR Dataset/train")

#Loads the training labels DB
train = read.table("UCI HAR Dataset/train/Y_train.txt",col.names = "id")

#Appends the training subjects DB
train = cbind(train,read.table("UCI HAR Dataset/train/subject_train.txt",
                               col.names = "subject"))

#Appends the training set DB
train = cbind(train,read.table("UCI HAR Dataset/train/X_train.txt",
                               col.names = features[,2]))

#Testing#
list.files("UCI HAR Dataset/test")

#Loads the test labels DB
test = read.table("UCI HAR Dataset/test/y_test.txt",col.names ="id")

#Appends the test subjects DB
test = cbind(test,read.table("UCI HAR Dataset/test/subject_test.txt",
                             col.names = "subject"))

#Appends the test set DB
test = cbind(test,read.table("UCI HAR Dataset/test/X_test.txt",
                             col.names = features[,2]))

#Merging Training and Test#
merged = rbind(train,test)

#Saving Progress
write.csv(merged,"merged.csv",row.names = F)
rm(test,train)

##Extracts only the measurements on the mean and standard deviation for each measurement.
merged = merged[,grepl("mean|std|subject|id",colnames(merged))]

##Uses descriptive activity names to name the activities in the data set.
library(dplyr)

merged = merge(merged,labels,by="id")

merged = merged[,c(82,2:81)]

#Saving progress
write.table(merged,"merged.txt",row.names = F)

##Appropriately labels the data set with descriptive variable names.
#Puts all names and activities in lowercase
names(merged) = tolower(names(merged))

merged$activity = tolower(as.character(merged$activity))

#replaces "_" separator with "."
merged$activity = gsub("_",".",merged$activity)

#modifies variable names
names(merged) = gsub("std","sd",names(merged))

names(merged) = gsub("mag","magnitude",names(merged))

names(merged) = gsub("acc","accelerometer",names(merged))

names(merged) = gsub("gyro","gyroscope",names(merged))

names(merged) = gsub("^t","time",names(merged))

names(merged) = gsub("^f","frequency",names(merged))

names(merged) = gsub("bodybody","body",names(merged))

#Check the structure of cleaned DB
str(merged)

#Saving progress
write.table(merged,"merged.txt",row.names = F)

##From the data set in step 4, creates a second, independent tidy data set
##with the average of each variable for each activity and each subject.
library(plyr)

tidy = aggregate(.~subject + activity, merged, mean)

tidy = tidy[order(tidy$subject,tidy$activity),]

write.table(tidy,"tidy.txt",row.names = F)

