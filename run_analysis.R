# getdata course project

library(dplyr)

# Load the data
activities <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE, stringsAsFactors = FALSE)
features <- read.table("UCI HAR Dataset/features.txt", header = FALSE, stringsAsFactors = FALSE)

# Test data
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE, stringsAsFactors = FALSE)
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE, stringsAsFactors = FALSE)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE, stringsAsFactors = FALSE)

# Training data
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE, stringsAsFactors = FALSE)
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE, stringsAsFactors = FALSE)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE, stringsAsFactors = FALSE)

#Add column names to X data frames
names(x_test) <- features$V2
names(x_train) <- features$V2

names(subjectTest)[1] <- "subject"
names(subjectTrain)[1] <- "subject"

names(y_test)[1] <- "activity"
names(y_train)[1] <- "activity"


# Combine test data together
testData <- cbind(subjectTest, y_test)
testData <- cbind(testData, x_test)

#Combine train data together
trainData <- cbind(subjectTrain, y_train)
trainData <- cbind(trainData, x_train)

# Merge together
mergedData <- rbind(testData, trainData)
