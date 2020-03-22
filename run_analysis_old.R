# Download the data for project to local folder
# Unzip the data set to local folder "./data/UCI HAR Dataset"

# Load dplyr package
library(dplyr)

# Read activity_label.txt to activity_labels and assign with meaningful column names
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt",
                              header = FALSE,
                              col.names = c("activity_id", "activity_name"))

# Read features.txt to features and assign with meaningful column names
features <- read.table("./data/UCI HAR Dataset/features.txt",
                       header = FALSE,
                       col.names = c("feature_id", "feature_name"))

# Handle train data sets

# Read subject_train.txt to subject_train and asign with meaningful column name
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt",
                            header = FALSE,
                            col.names = "subject_id")

# Read y_train.txt to ytrain_actvid and assign with meaningful column name
ytrain_actvid <- read.table("./data/UCI HAR Dataset/train/y_train.txt",
                            header = FALSE,
                            col.names = "activity_id")

# Read X_train.txt to xtrain_data and assign meaningful column names as "feature_name"
# in features table
xtrain_data <- read.table("./data/UCI HAR Dataset/train/X_train.txt",
                          header = FALSE,
                          col.names = features[, 2])

# Bind all columns for tables subject_train, ytrain_actvid and xtrain_data, and
# assign to new tabel name "xtrain_bind_data"
xtrain_bind_data <- cbind(subject_train, ytrain_actvid, xtrain_data)

# Handle test data sets

# Read subject_test.txt to subject_test and asign with meaningful column name
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt",
                           header = FALSE,
                           col.names = "subject_id")

# Read y_test.txt to ytest_actvid and assign with meaningful column name
ytest_actvid <- read.table("./data/UCI HAR Dataset/test/y_test.txt",
                           header = FALSE,
                           col.names = "activity_id")

# Read X_test.txt to xtest_data and assign meaningful column names as "feature_name"
# in features table
xtest_data <- read.table("./data/UCI HAR Dataset/test/X_test.txt",
                         header = FALSE,
                         col.names = features[, 2])

# Bind all columns for tables subject_test, ytest_actvid and xtest_data, and
# assign to new tabel name "xtest_bind_data"
xtest_bind_data <- cbind(subject_test, ytest_actvid, xtest_data)
