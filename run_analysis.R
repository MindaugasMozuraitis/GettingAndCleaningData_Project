#Loading all the required packages
library(downloader)
library(dplyr)

# Doanloading and unzippin the files into a working directory, if it does not yet exist.
if(!file.exists("~/Desktop/UCI HAR Dataset")) {
  setwd("~/Desktop")
  url1 = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download(url1, dest="~/Desktop/samsung_data.zip", mode="wb") 
  unzip ("samsung_data.zip", exdir = "~/Desktop")
}

# Reading in and merging the training and test datasets
train_data = read.table("~/Desktop/UCI HAR Dataset/train/X_train.txt", sep="")
test_data = read.table("~/Desktop/UCI HAR Dataset/test/X_test.txt", sep="")
full_data = rbind(train_data, test_data)

# Obtainig variable names from features.txt file
var_names = read.table("~/Desktop/UCI HAR Dataset/features.txt", sep="")

# Adding meaningfull variable names to the full dataset
names(full_data) = var_names[,2]

# Extracts only the variabe names that represent measurements on the mean and standard deviation for each measure
relevant_variables = c(grep("mean[()]", var_names[,2], value=T), grep("std[()]", var_names[,2], value=T))

# Extracts only the variables that represent measurements on the mean and standard deviation for each measure
full_data_means_stds = full_data[,relevant_variables]

# Cleaning up the variable names:
clean_variable_names1 = sub("()","", relevant_variables, fixed=T)
clean_variable_names = gsub("-","_", clean_variable_names1)
names(full_data_means_stds) = clean_variable_names

# Retrieving and merging meaningful activity labels 
train_data_activities = read.table("~/Desktop/UCI HAR Dataset/train/Y_train.txt", sep="")
test_data_activities = read.table("~/Desktop/UCI HAR Dataset/test/Y_test.txt", sep="")
full_data_activities = rbind(train_data_activities, test_data_activities)

activity_labels = read.table("~/Desktop/UCI HAR Dataset/activity_labels.txt", sep="")
full_data_act_labels = left_join(full_data_activities, activity_labels, by="V1")

# Retrieving subject ids 
train_data_subs = read.table("~/Desktop/UCI HAR Dataset/train/subject_train.txt", sep="")
test_data_subs = read.table("~/Desktop/UCI HAR Dataset/test/subject_test.txt", sep="")
full_data_subs = rbind(train_data_subs, test_data_subs)

# Adding subject ids and activity labels to the full dataset
full_tidy_data = mutate(full_data_means_stds, SubjectId = full_data_subs[,1],
                              Activity = full_data_act_labels[,2])
write.table(full_tidy_data,"~/Desktop/UCI HAR Dataset/full_tidy_data.txt", sep="\t",row.names=F)

# Creating a new independent tidy data set with the average of each variable for each activity and each subject.
grouped_data = group_by(full_tidy_data, SubjectId, Activity)
aggr_data = summarise_each(grouped_data, funs(mean))
write.table(aggr_full_data,"~/Desktop/UCI HAR Dataset/aggregated_tidy_data.txt", sep="\t",row.names=F)

