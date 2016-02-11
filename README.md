# Getting and Cleaning Data Course Project
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 
You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 
1) a tidy data set as described below, 
2) a link to a Github repository with your script for performing the analysis, and 
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.
##run_Analysis.R
This script was made and tested under Windows 10 and RStudio Version 0.99.878 with a Intel Core I3 laptop. The script was not tested under Mac or Linux.
run_Analysis.R perform the following actions:
* Downloads and extracts the UCI HAR Dataset.
* Merges the elements of the Train Dataset and the Test Dataset in the "merged" dataset.
* Selects only the features that contain data from the mean and standard deviation in the merged dataset.
* Replaces the activities IDs with descritive activity names.
* Puts all names in lowercase.
* Modifies variable names to make them more readable.
* Saves the merged database in the "merged.txt" file.
* Creates a new tidy dataset with the averages of each activity and each subject.
* Saves the new dataset in "tidy.txt"

For more Information please read Codebook.md
