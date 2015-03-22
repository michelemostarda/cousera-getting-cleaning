#
# Getting and Cleaning Data - Getting and Cleaning Data - PA1
#

# load required librares
library(reshape2)

runAnalysis <- function() {

# STEP 1: download required data

zipfile <- 'UCI_HAR_Dataset.zip'
zipurl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
download.file(url = zipurl, destfile = zipfile, method='curl') # 60MB takes some seconds
unzip(zipfile = zipfile)

# STEP 2: laods training and test set, then merge them to create one data set

## Read data into data frames
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt") # Takes some seconds
X_test <- read.table("UCI HAR Dataset/test/X_test.txt") # Takes some seconds
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")

## Add column name for subject files
names(subject_train) <- "subjectID"
names(subject_test) <- "subjectID"

## Set column names
features <- read.table("UCI HAR Dataset/features.txt")
names(X_train) <- features$V2
names(X_test) <- features$V2

## Add column name for label files
names(y_train) <- "activity"
names(y_test) <- "activity"

## creates a complete dataset
train <- cbind(subject_train, y_train, X_train)
test <- cbind(subject_test, y_test, X_test)
combined <- rbind(train, test)

# STEP 3: extracts only measurements on the mean and standard deviation for each measurement

# Get columns with "mean()" or "std()"
mean_or_std_cols <- grepl("mean\\(\\)", names(combined)) | grepl("std\\(\\)", names(combined))

# Preserving subjectID and activity columns
mean_or_std_cols[1:2] <- TRUE

# removes unnecessary columns
combined <- combined[, mean_or_std_cols]

# STEP 4: uses descriptive activity names to name the activities and appropriately labels the data 
#         set with descriptive activity names

## Converts "activity" column from integer to descriptive
combined$activity <- factor(combined$activity, labels=c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

# STEP 5: creates a second, independent tidy data set with the average of each variable for each activity and each subject

# Creates the tidy data set
melted <- melt(combined, id=c("subjectID","activity"))
tidy <- dcast(melted, subjectID+activity ~ variable, mean)

# write the tidy data set to a file
write.csv(tidy, "tidy.csv", row.names=FALSE)

}
