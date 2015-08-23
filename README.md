# Getting and Cleaning Data Course Project

## Introduction

This repository contains the Getting and Cleaning Data Course Project. The [Code Book](./CodeBook.md) describes 
the variables, and the data that `run_analysis.R` creates. 
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

## Using the script

You can view the data in R with the object `meanTidy`. This object has the four variables: subject, activity and mean 
as per the [Code Book](./CodeBook.md). 

Alternatively, you can read the created text file with the command `read.table("tidy.txt", sep=" ", header = TRUE)`.
