# CourseProject

This is the course project for the "Getting and Cleaning Data" course on Coursera

##The following files are included:

- 'README.md': Describes the available files

- 'CodeBook.md': A code book which describes the resulting data fields in "tidy.txt"

- 'tidy.txt': An updated data set which merges the training and test data sets, and modifies the variables. This is the end result of the 'run_analysis.R' R script

- 'run_analysis.R': An R script which does the following:

* Downloads and unzips the "UCI HAR" dataset if it does not already exist in the working directory
* Reads the activity labels and features data
* Extracts the mean and std features
* Loads the training and test data sets
* Merges the data sets and renames the columns to match the features
* Change activities and subjects into factors, and groups the data set by these factor variables
* Creates a new data set by calculating the average value of each variable for each subject and activity pair, and saving the results in 'tidy.txt'


