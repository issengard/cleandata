---
title: "Codebook"
---
##Data Set Information
<p>The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.</p>
<p>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (**WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING**) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. </p>
<p>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.</p>
##Attribute Information:
For each record in the dataset it is provided: 
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

##Citation Request:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

##run_Analysis.R
###Getting Data
This script automatically downloads and extracts the UCI HAR Datasets into the working directory.
###Transforming Data
<p>run_Analysis.R performs the following transformations:</p>
1. Loads *"activity_labels.txt"* with proper column names, also loads *"features.txt"* and remove the parentheses in features names to make them more readable.
2. Loads and merges the **"/train"** DBs via *cbind* with the proper column names into **train**.
3. Loads and merges the **"/test"** DBs via *cbind* with the proper column names into **test**.
4. Merges *train* and *test* elements into **merged**. Saves *merged* into *"merged.txt"* and removes *train* and *test*.
5. Extracts only the measurements on the *mean* and *standard deviation* for each measurement.
6. Uses descriptive activity names to name the activities in the data set and saves progress into *"merged.txt".
7. Put all variable names in lowercase and replace names with more descriptive ones.
8. Check the structure of  the merged database and save it to *"merged.txt"*.
9. Creates a new database with the average of each variable for each activity and each subject.Save the new database into **"tidy.txt"**.

##Variable names
```{r, results='asis',echo=FALSE}
knitr::kable(namevars)
```
<p>The naming structure adopted was:</p>
<p>**{f|t}.{body|gravity}.{acc|gyro}.{magnitude|mean|sd}**</p>
<p>where:</p>
<p>f= frequency</p>
<p>t= time</p>
<p>acc= accelerometer</p>
<p>gyro= gyroscope</p>
<p>mean= average value</p>
<p>sd= standard deviation</p>