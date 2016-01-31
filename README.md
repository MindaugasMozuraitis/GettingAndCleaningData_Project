# GettingAndCleaningData_Project
This repository contains R script, code book and datasets required for the Getting and Cleaning Data course project.

# run_analysis.R 
* loads the required R packages 
* downloads the original datasets on a dektop, if the data folder does not yet exist
* merges the training and the test sets to create one data set
* extracts only the measurements on the mean and standard deviation for each measurement
* adds descriptive activity names to name the activities in the data set
* appropriately labels the data set with descriptive variable names.
* creates a new tidy dataset "full_tidy_data.csv" (attached)
* from the new tidy dataset, creates a second, independent tidy data set with the average of each variable for each activity and each subject "aggregated_tidy_data.csv".
* saves all the new .csv files in the original data folder

# CodeBook.md
* describes the variables, the data, and any other work that was performed to clean up the data




