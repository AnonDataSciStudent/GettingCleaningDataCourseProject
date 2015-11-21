# Please refer to README.md for information about usage and purpose of this script.

# Prerequisites:
# install.packages("dplyr")
# download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="UCI HAR Dataset.zip")
# unzip(zipfile="UCI HAR Dataset.zip")

# Load the dplyr library:
library(dplyr)

# Read in all three parts of the training dataset:
train_activities <- read.table(file=file.path("UCI HAR Dataset", "train", "y_train.txt"), header=FALSE, colClasses="character", nrows=7352)
train_subjects <- read.table(file=file.path("UCI HAR Dataset", "train", "subject_train.txt"), header=FALSE, colClasses="character", nrows=7352)
train_features <- read.table(file=file.path("UCI HAR Dataset", "train", "X_train.txt"), header=FALSE, colClasses=rep("numeric", times=561), nrows=7352)

# Read in all three parts of the testing dataset:
test_activities <- read.table(file=file.path("UCI HAR Dataset", "test", "y_test.txt"), header=FALSE, colClasses="character", nrows=2947)
test_subjects <- read.table(file=file.path("UCI HAR Dataset", "test", "subject_test.txt"), header=FALSE, colClasses="character", nrows=2947)
test_features <- read.table(file=file.path("UCI HAR Dataset", "test", "X_test.txt"), header=FALSE, colClasses=rep("numeric", times=561), nrows=2947)

# Combine the parts of both datasets into one data frame tbl:
combined_dft <- tbl_df(rbind(cbind(train_activities, train_subjects, train_features), cbind(test_activities, test_subjects, test_features)))

# Clean up:
rm(train_activities, train_subjects, train_features, test_activities, test_subjects, test_features)

# Read in the feature names:
feature_labels <- read.table(file=file.path("UCI HAR Dataset", "features.txt"), header=FALSE, colClasses=rep("character", times=2), col.names=c("Index", "Feature"), nrows=561)

# Correct those feature names accidentally containing "BodyBody" instead of "Body":
feature_labels$Feature <- gsub("BodyBody", "Body", feature_labels$Feature, ignore.case=FALSE)

# Use the feature names to assign column names:
# (Note that make.unique is used to create unique names, which is necessary for
# the dplyr select function. This will slightly change the duplicate names, but
# none of these duplicates will be selected below, so this won't affect the end
# result. See also note below.)
colnames(combined_dft) <- c("Activity", "Subject", make.unique(feature_labels$Feature))

# Read in the activity names:
activity_labels <- read.table(file=file.path("UCI HAR Dataset", "activity_labels.txt"), header=FALSE, colClasses=rep("character", times=2), col.names=c("Index", "Activity"), nrows=6)

# Use the activity names to turn the Activity column into a factor with nice labels:
combined_dft$Activity <- factor(x=combined_dft$Activity, levels=activity_labels$Index, labels=activity_labels$Activity, ordered=FALSE)

# Turn the Subject column into a factor as well:
combined_dft$Subject <- factor(x=combined_dft$Subject, levels=as.character(1:30), labels=as.character(1:30), ordered=FALSE)

# Clean up:
rm(feature_labels, activity_labels)

# Select only those features with either "mean()" or "std()" in their names,
# and order the result by activity and subject:
# (This step could also be done as:
#   combined_dft <- combined_dft[, grepl("(Activity|Subject|(mean|std)\\(\\))", colnames(combined_dft), ignore.case=FALSE)]
#   combined_dft <- arrange(combined_dft, Activity, Subject)
# Note that in this case the make.unique function above would not have been
# necessary.)
combined_dft <- select(combined_dft, Activity, Subject, matches("(mean|std)\\(\\)", ignore.case=FALSE)) %>% arrange(Activity, Subject)

# Write the result to disk:
write.table(combined_dft, file="combined.txt", row.names=FALSE)

# Create a second data frame tbl, containing the means of all selected features
# for each combination of activity and subject:
means_dft <- group_by(combined_dft, Activity, Subject) %>% summarise_each(funs(mean))

# Write the result to disk:
write.table(means_dft, file="means.txt", row.names=FALSE)
