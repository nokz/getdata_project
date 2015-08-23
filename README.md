# Getting and Cleaning Data Course Project

## Introduction

This repository contains the Getting and Cleaning Data Course Project. The [Code Book](./CodeBook.md) describes 
the variables, and the data that `run_analysis.R` creates. `run_analysis.R` merges the training and test data, takes only 
the measurements on the mean and standard deviation, use descriptive variables for activities and features, and creates a
tidy data set with the average for each variable for each activity and each subject. 

## Tidy Data Explanation

I chose to create the final tidy data set in a narrow form as per this [discussion](https://class.coursera.org/getdata-031/forum/thread?thread_id=113). 
Having the columns: `subject`, `activity`, `feature` and `mean`, each variable is in one column, and each measurement is in a different row creating a tidy data set. 

### Measurements
Chose to include meanFrequency (`meanFreq()`) measurements in the tidy data because it is a weighted *average* of the frequency components. 
Alternatively, chose to exclude measurements in `angle()` that refer to mean because the resulting measurment for these are angles. 

## Requirements

### Required Libraries
1. plyr
2. dplyr
3. reshape2

Please install these libraries before running the script with `install.packages`. E.g. `install.packages("plyr")`

### Download the Data
1. Download the raw data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Extract the zip file to the same directory as `run_analysis.R`. 

The extracted directory `UCI HAR Dataset` must be in the same directory as `run_analysis.R`. 

## Running the Script
The script can be run from RStudio or R console. 

1. Set your working directory with `setwd("filepath")` where `filepath` is the directory where `run_analysis` 
   and `UCI HAR Dataset` are stored. 
2. Run the script with `source("run_analysis.R")`.
3. The script creates a text file: `tidy.txt` which contains the final tidy data. 

**Important:** `run_analysis.R` and the folder `UCI HAR Dataset` must be in the same directory. 

## Using the script

You can view the data in R with the object `meanTidy`. This object has the four variables: subject, activity and mean 
as per the [Code Book](./CodeBook.md). 

## Final Data Set 

The script **outputs** the final tidy data set called `tidy.txt` to the working directory. 

The text file from the submission page or the created with the script can be read into RStudio with the command 
`read.table("tidy.txt", sep=" ", header = TRUE)`.
