# getdata course project

library(plyr)
library(dplyr)
library(reshape2)

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

#Add column names to data frames
names(x_test) <- features$V2
names(x_train) <- features$V2

names(subjectTest)[1] <- "subject"
names(subjectTrain)[1] <- "subject"

names(y_test)[1] <- "activity"
names(y_train)[1] <- "activity"

names(activities) <- c("id", "activity")

# bind_rows removes duplicate column names

# Combine test data together
testData <- bind_cols(subjectTest, y_test)
testData <- bind_cols(testData, x_test)

#Combine train data together
trainData <- bind_cols(subjectTrain, y_train)
trainData <- bind_cols(trainData, x_train)

# Merge together
mergedData <- bind_rows(testData, trainData)

#my_names <- names(mergedData)
# Match all cases of std and mean
#my_names[grep("subject|activity|mean|std", my_names, ignore.case = TRUE)]
# No Angle means
#my_names[grep("subject|activity|mean|std", my_names)]

# Merge test and train data sets but only the subject, activity and measurements of mean and standard deviation. 
mergedData <- subset(mergedData, select = names(mergedData)[grep("subject|activity|mean|std", names(mergedData))])

# Activity IDs with activity name
mergedData$activity <- mapvalues(mergedData$activity, activities$id, activities$activity)

# Use descriptive variable names. 
names(mergedData) <- gsub("tBody", "timeBody", names(mergedData))
names(mergedData) <- gsub("Acc", "Acceleration", names(mergedData))
names(mergedData) <- gsub("tGravity", "timeGravity", names(mergedData))
names(mergedData) <- gsub("Mag", "Magnitude", names(mergedData))
names(mergedData) <- gsub("fBody", "frequencyBody", names(mergedData))
names(mergedData) <- gsub("Gyro", "Gyroscope", names(mergedData))
names(mergedData) <- gsub("Freq", "Frequency", names(mergedData))
names(mergedData) <- gsub("std", "standardDeviation", names(mergedData))

tidy <- melt(mergedData, id=c("subject","activity"))

# Rename our columns
names(tidy) <- c("subject", "activity", "feature", "signal")

meanTidy <- tidy %>% group_by(subject, activity, feature) %>% summarise_each(funs(mean))
names(meanTidy) <- c("subject", "activity", "feature", "mean")


