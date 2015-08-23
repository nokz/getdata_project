# Code Book

## Introduction

The tidy data set was created from raw data collected from accelerometer and gyroscope from the Samsung Galaxy S smartphone. The experiment was carried out by 30 subjects performing six activities while wearing a smartphone on their waist. The tidy data set contains an average of variables measured by the smartphone for each activity and each subject. 

## The Data

The raw test and training data was merged into one large data set. Measurements on the mean and standard deviation were extracted from the merged data set. 
Activity IDs were replaced with the descriptive activity names for clear understanding of the data. The feature names were expanded to provide descriptive variable names (E.g. `freq` to `frequency`). The features that were in columns are stacked in the a single column named feature. The average of the measurments of each feature for each activity and each subject were calculated and placed in a column named `average`. 

Chose to include meanFrequency (`meanFreq()`) measurements in the tidy data because it is a weighted *average* of the frequency components. 
Alternatively, chose to exclude measurements in `angle()` that refer to mean because the resulting measurment for these are angles. 

I chose to create the final tidy data set in a narrow form as per this [discussion](https://class.coursera.org/getdata-031/forum/thread?thread_id=113). 
Having the columns: `subject`, `activity`, `feature` and `mean`, each variable is in one column, and each measurement is in a different row creating a tidy data set. 

### Features

* Acceleration features measured by the accelerometer. 
* Gyroscope features measured by the gyroscope. 
* -mean(): mean value. 
* -standardDeviation(): standard deviation. 
* -meanFrequency(): Weighted average of the frequency components to obtain a mean frequency. 
* -XYZ: 3-axial signals in the X, Y and Z directions.

## Variables

**subject**

* ID number for the subject ranging from 1 to 30. 
    
**activity**

* The activity that the subject performed:
    1. WALKING
    2. WALKING_UPSTAIRS
    3. WALKING_DOWNSTAIRS
    4. SITTING
    5. STANDING
    6. LAYING

**feature**

* The feature from the accelerometer and gyroscope that was measured. 
    1. timeBodyAcceleration-mean()-X
    2. timeBodyAcceleration-mean()-Y
    3. timeBodyAcceleration-mean()-Z
    4. timeBodyAcceleration-standardDeviation()-X
    5. timeBodyAcceleration-standardDeviation()-Y
    6. timeBodyAcceleration-standardDeviation()-Z
    7. timeGravityAcceleration-mean()-X
    8. timeGravityAcceleration-mean()-Y
    9. timeGravityAcceleration-mean()-Z
    10. timeGravityAcceleration-standardDeviation()-X
    11. timeGravityAcceleration-standardDeviation()-Y
    12. timeGravityAcceleration-standardDeviation()-Z
    13. timeBodyAccelerationJerk-mean()-X
    14. timeBodyAccelerationJerk-mean()-Y
    15. timeBodyAccelerationJerk-mean()-Z
    16. timeBodyAccelerationJerk-standardDeviation()-X
    17. timeBodyAccelerationJerk-standardDeviation()-Y
    18. timeBodyAccelerationJerk-standardDeviation()-Z
    19. timeBodyGyroscope-mean()-X
    20. timeBodyGyroscope-mean()-Y
    21. timeBodyGyroscope-mean()-Z
    22. timeBodyGyroscope-standardDeviation()-X
    23. timeBodyGyroscope-standardDeviation()-Y
    24. timeBodyGyroscope-standardDeviation()-Z
    25. timeBodyGyroscopeJerk-mean()-X
    26. timeBodyGyroscopeJerk-mean()-Y
    27. timeBodyGyroscopeJerk-mean()-Z
    28. timeBodyGyroscopeJerk-standardDeviation()-X
    29. timeBodyGyroscopeJerk-standardDeviation()-Y
    30. timeBodyGyroscopeJerk-standardDeviation()-Z
    31. timeBodyAccelerationMagnitude-mean()
    32. timeBodyAccelerationMagnitude-standardDeviation()
    33. timeGravityAccelerationMagnitude-mean()
    34. timeGravityAccelerationMagnitude-standardDeviation()
    35. timeBodyAccelerationJerkMagnitude-mean()
    36. timeBodyAccelerationJerkMagnitude-standardDeviation()
    37. timeBodyGyroscopeMagnitude-mean()
    38. timeBodyGyroscopeMagnitude-standardDeviation()
    39. timeBodyGyroscopeJerkMagnitude-mean()
    40. timeBodyGyroscopeJerkMagnitude-standardDeviation()
    41. frequencyBodyAcceleration-mean()-X
    42. frequencyBodyAcceleration-mean()-Y
    43. frequencyBodyAcceleration-mean()-Z
    44. frequencyBodyAcceleration-standardDeviation()-X
    45. frequencyBodyAcceleration-standardDeviation()-Y
    46. frequencyBodyAcceleration-standardDeviation()-Z
    47. frequencyBodyAcceleration-meanFrequency()-X
    48. frequencyBodyAcceleration-meanFrequency()-Y
    49. frequencyBodyAcceleration-meanFrequency()-Z
    50. frequencyBodyAccelerationJerk-mean()-X
    51. frequencyBodyAccelerationJerk-mean()-Y
    52. frequencyBodyAccelerationJerk-mean()-Z
    53. frequencyBodyAccelerationJerk-standardDeviation()-X
    54. frequencyBodyAccelerationJerk-standardDeviation()-Y
    55. frequencyBodyAccelerationJerk-standardDeviation()-Z
    56. frequencyBodyAccelerationJerk-meanFrequency()-X
    57. frequencyBodyAccelerationJerk-meanFrequency()-Y
    58. frequencyBodyAccelerationJerk-meanFrequency()-Z
    59. frequencyBodyGyroscope-mean()-X
    60. frequencyBodyGyroscope-mean()-Y
    61. frequencyBodyGyroscope-mean()-Z
    62. frequencyBodyGyroscope-standardDeviation()-X
    63. frequencyBodyGyroscope-standardDeviation()-Y
    64. frequencyBodyGyroscope-standardDeviation()-Z
    65. frequencyBodyGyroscope-meanFrequency()-X
    66. frequencyBodyGyroscope-meanFrequency()-Y
    67. frequencyBodyGyroscope-meanFrequency()-Z
    68. frequencyBodyAccelerationMagnitude-mean()
    69. frequencyBodyAccelerationMagnitude-standardDeviation()
    70. frequencyBodyAccelerationMagnitude-meanFrequency()
    71. frequencyBodyBodyAccelerationJerkMagnitude-mean()
    72. frequencyBodyBodyAccelerationJerkMagnitude-standardDeviation()
    73. frequencyBodyBodyAccelerationJerkMagnitude-meanFrequency()
    74. frequencyBodyBodyGyroscopeMagnitude-mean()
    75. frequencyBodyBodyGyroscopeMagnitude-standardDeviation()
    76. frequencyBodyBodyGyroscopeMagnitude-meanFrequency()
    77. frequencyBodyBodyGyroscopeJerkMagnitude-mean()
    78. frequencyBodyBodyGyroscopeJerkMagnitude-standardDeviation()
    79. frequencyBodyBodyGyroscopeJerkMagnitude-meanFrequency()

**average**

* Average of each feature for each activity and each subject in Hz. 