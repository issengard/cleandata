#Codebook
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
|Variable                        |Original Name                 |
|:-------------------------------|:-----------------------------|
|activity                        |activity                      |
|subject                         |subject                       |
|tbodyacc.mean.x                 |tBodyAcc.mean.X               |
|tbodyacc.mean.y                 |tBodyAcc.mean.Y               |
|tbodyacc.mean.z                 |tBodyAcc.mean.Z               |
|tbodyacc.sd.x                   |tBodyAcc.std.X                |
|tbodyacc.sd.y                   |tBodyAcc.std.Y                |
|tbodyacc.sd.z                   |tBodyAcc.std.Z                |
|tgravityacc.mean.x              |tGravityAcc.mean.X            |
|tgravityacc.mean.y              |tGravityAcc.mean.Y            |
|tgravityacc.mean.z              |tGravityAcc.mean.Z            |
|tgravityacc.sd.x                |tGravityAcc.std.X             |
|tgravityacc.sd.y                |tGravityAcc.std.Y             |
|tgravityacc.sd.z                |tGravityAcc.std.Z             |
|tbodyaccjerk.mean.x             |tBodyAccJerk.mean.X           |
|tbodyaccjerk.mean.y             |tBodyAccJerk.mean.Y           |
|tbodyaccjerk.mean.z             |tBodyAccJerk.mean.Z           |
|tbodyaccjerk.sd.x               |tBodyAccJerk.std.X            |
|tbodyaccjerk.sd.y               |tBodyAccJerk.std.Y            |
|tbodyaccjerk.sd.z               |tBodyAccJerk.std.Z            |
|tbodygyro.mean.x                |tBodyGyro.mean.X              |
|tbodygyro.mean.y                |tBodyGyro.mean.Y              |
|tbodygyro.mean.z                |tBodyGyro.mean.Z              |
|tbodygyro.sd.x                  |tBodyGyro.std.X               |
|tbodygyro.sd.y                  |tBodyGyro.std.Y               |
|tbodygyro.sd.z                  |tBodyGyro.std.Z               |
|tbodygyrojerk.mean.x            |tBodyGyroJerk.mean.X          |
|tbodygyrojerk.mean.y            |tBodyGyroJerk.mean.Y          |
|tbodygyrojerk.mean.z            |tBodyGyroJerk.mean.Z          |
|tbodygyrojerk.sd.x              |tBodyGyroJerk.std.X           |
|tbodygyrojerk.sd.y              |tBodyGyroJerk.std.Y           |
|tbodygyrojerk.sd.z              |tBodyGyroJerk.std.Z           |
|tbodyaccmagnitude.mean          |tBodyAccMag.mean              |
|tbodyaccmagnitude.sd            |tBodyAccMag.std               |
|tgravityaccmagnitude.mean       |tGravityAccMag.mean           |
|tgravityaccmagnitude.sd         |tGravityAccMag.std            |
|tbodyaccjerkmagnitude.mean      |tBodyAccJerkMag.mean          |
|tbodyaccjerkmagnitude.sd        |tBodyAccJerkMag.std           |
|tbodygyromagnitude.mean         |tBodyGyroMag.mean             |
|tbodygyromagnitude.sd           |tBodyGyroMag.std              |
|tbodygyrojerkmagnitude.mean     |tBodyGyroJerkMag.mean         |
|tbodygyrojerkmagnitude.sd       |tBodyGyroJerkMag.std          |
|fbodyacc.mean.x                 |fBodyAcc.mean.X               |
|fbodyacc.mean.y                 |fBodyAcc.mean.Y               |
|fbodyacc.mean.z                 |fBodyAcc.mean.Z               |
|fbodyacc.sd.x                   |fBodyAcc.std.X                |
|fbodyacc.sd.y                   |fBodyAcc.std.Y                |
|fbodyacc.sd.z                   |fBodyAcc.std.Z                |
|fbodyacc.meanfreq.x             |fBodyAcc.meanFreq.X           |
|fbodyacc.meanfreq.y             |fBodyAcc.meanFreq.Y           |
|fbodyacc.meanfreq.z             |fBodyAcc.meanFreq.Z           |
|fbodyaccjerk.mean.x             |fBodyAccJerk.mean.X           |
|fbodyaccjerk.mean.y             |fBodyAccJerk.mean.Y           |
|fbodyaccjerk.mean.z             |fBodyAccJerk.mean.Z           |
|fbodyaccjerk.sd.x               |fBodyAccJerk.std.X            |
|fbodyaccjerk.sd.y               |fBodyAccJerk.std.Y            |
|fbodyaccjerk.sd.z               |fBodyAccJerk.std.Z            |
|fbodyaccjerk.meanfreq.x         |fBodyAccJerk.meanFreq.X       |
|fbodyaccjerk.meanfreq.y         |fBodyAccJerk.meanFreq.Y       |
|fbodyaccjerk.meanfreq.z         |fBodyAccJerk.meanFreq.Z       |
|fbodygyro.mean.x                |fBodyGyro.mean.X              |
|fbodygyro.mean.y                |fBodyGyro.mean.Y              |
|fbodygyro.mean.z                |fBodyGyro.mean.Z              |
|fbodygyro.sd.x                  |fBodyGyro.std.X               |
|fbodygyro.sd.y                  |fBodyGyro.std.Y               |
|fbodygyro.sd.z                  |fBodyGyro.std.Z               |
|fbodygyro.meanfreq.x            |fBodyGyro.meanFreq.X          |
|fbodygyro.meanfreq.y            |fBodyGyro.meanFreq.Y          |
|fbodygyro.meanfreq.z            |fBodyGyro.meanFreq.Z          |
|fbodyaccmagnitude.mean          |fBodyAccMag.mean              |
|fbodyaccmagnitude.sd            |fBodyAccMag.std               |
|fbodyaccmagnitude.meanfreq      |fBodyAccMag.meanFreq          |
|fbodyaccjerkmagnitude.mean      |fBodyBodyAccJerkMag.mean      |
|fbodyaccjerkmagnitude.sd        |fBodyBodyAccJerkMag.std       |
|fbodyaccjerkmagnitude.meanfreq  |fBodyBodyAccJerkMag.meanFreq  |
|fbodygyromagnitude.mean         |fBodyBodyGyroMag.mean         |
|fbodygyromagnitude.sd           |fBodyBodyGyroMag.std          |
|fbodygyromagnitude.meanfreq     |fBodyBodyGyroMag.meanFreq     |
|fbodygyrojerkmagnitude.mean     |fBodyBodyGyroJerkMag.mean     |
|fbodygyrojerkmagnitude.sd       |fBodyBodyGyroJerkMag.std      |
|fbodygyrojerkmagnitude.meanfreq |fBodyBodyGyroJerkMag.meanFreq |

<p>The naming structure adopted was:</p>
<p>**{f|t}{body|gravity}{acc|gyro}.{magnitude|mean|sd}.{x|y|x}**</p>
<p>where:</p>
<p>f= frequency</p>
<p>t= time</p>
<p>acc= accelerometer</p>
<p>gyro= gyroscope</p>
<p>mean= average value</p>
<p>sd= standard deviation</p>
