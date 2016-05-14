## Load libraries

library(dplyr)
library(reshape2)

## Download data set

filename <- "dataset.zip"
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 

if (!file.exists(filename)){ 
    download.file(fileURL, "./dataset.zip") 
}  

## Unzip data set

if (!file.exists("UCI HAR Dataset")) {
    unzip(filename)
}

## Read activity labels and features data

activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt") 
features <- read.table("./UCI HAR Dataset/features.txt") 
features[,2] <- as.character(features[,2])

## Extract mean and std features

featuresWanted <- grep(".*(mean()|std())", features[,2]) 


## Load training and test data

train <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresWanted]
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")

test <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresWanted]
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt") 
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt") 


## Rename columns
trainActivities <- rename(trainActivities, activity = V1)
trainSubjects <- rename(trainSubjects, subject = V1)

testActivities <- rename(testActivities, activity = V1)
testSubjects <- rename(testSubjects, subject = V1)


## Merge data sets

train <- bind_cols(trainSubjects, trainActivities, train)
test <- bind_cols(testSubjects, testActivities, test)
allData <- bind_rows(train, test)

## Rename merged data set columns to match features

featurenames <- features[featuresWanted,2]
featurenames <- gsub('-mean', 'Mean', featurenames) 
featurenames <- gsub('-std', 'StandardDeviation', featurenames) 
featurenames <- gsub('[-()]', '', featurenames) 
featurenames <- tolower(featurenames)

colnames(allData) <- c("subject", "activity", featurenames)


## Change activities and subjects into factors 
allData$activity <- factor(allData$activity, levels = activityLabels[,1], labels = activityLabels[,2]) 
allData$subject <- as.factor(allData$subject) 


## Create new tidy dataset with average values

allData <- group_by(allData, subject, activity)
allData <- mutate_each(allData, funs(mean))
allData <- unique(allData)
write.table(allData, "./tidy.txt", quote = FALSE)

