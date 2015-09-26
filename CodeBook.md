#CodeBook.md
Describes the variables, the data, and any transformations


## Transformations that occur in run_analysis.R
1. get list mean and std measurements
2. get subset of training and test data and combine into one set
3. add column names
4. get training and test codes and combine
5. add labels to the codes
6. combine training and test subjects
7. combine and name activity and subjects
8. combine with measure
9. average of each variable for each activity and each subject


## Column names of tidy_dataset that is created, each measurement is the mean of that group
subject.id                      
activity                        
tBodyAcc-mean()-X              
tBodyAcc-mean()-Y               
tBodyAcc-mean()-Z               
tBodyAcc-std()-X               
tBodyAcc-std()-Y                
tBodyAcc-std()-Z                
tGravityAcc-mean()-X           
tGravityAcc-mean()-Y            
tGravityAcc-mean()-Z            
tGravityAcc-std()-X            
tGravityAcc-std()-Y             
tGravityAcc-std()-Z             
tBodyAccJerk-mean()-X          
tBodyAccJerk-mean()-Y           
tBodyAccJerk-mean()-Z           
tBodyAccJerk-std()-X           
tBodyAccJerk-std()-Y            
tBodyAccJerk-std()-Z            
tBodyGyro-mean()-X             
tBodyGyro-mean()-Y              
tBodyGyro-mean()-Z              
tBodyGyro-std()-X              
tBodyGyro-std()-Y               
tBodyGyro-std()-Z               
tBodyGyroJerk-mean()-X         
tBodyGyroJerk-mean()-Y          
tBodyGyroJerk-mean()-Z          
tBodyGyroJerk-std()-X          
tBodyGyroJerk-std()-Y           
tBodyGyroJerk-std()-Z           
tBodyAccMag-mean()             
tBodyAccMag-std()               
tGravityAccMag-mean()           
tGravityAccMag-std()           
tBodyAccJerkMag-mean()          
tBodyAccJerkMag-std()           
tBodyGyroMag-mean()            
tBodyGyroMag-std()              
tBodyGyroJerkMag-mean()         
tBodyGyroJerkMag-std()         
fBodyAcc-mean()-X               
fBodyAcc-mean()-Y               
fBodyAcc-mean()-Z              
fBodyAcc-std()-X                
fBodyAcc-std()-Y                
fBodyAcc-std()-Z               
fBodyAcc-meanFreq()-X           
fBodyAcc-meanFreq()-Y           
fBodyAcc-meanFreq()-Z          
fBodyAccJerk-mean()-X           
fBodyAccJerk-mean()-Y           
fBodyAccJerk-mean()-Z          
fBodyAccJerk-std()-X            
fBodyAccJerk-std()-Y            
fBodyAccJerk-std()-Z           
fBodyAccJerk-meanFreq()-X       
fBodyAccJerk-meanFreq()-Y       
fBodyAccJerk-meanFreq()-Z      
fBodyGyro-mean()-X              
fBodyGyro-mean()-Y              
fBodyGyro-mean()-Z             
fBodyGyro-std()-X               
fBodyGyro-std()-Y               
fBodyGyro-std()-Z              
fBodyGyro-meanFreq()-X          
fBodyGyro-meanFreq()-Y          
fBodyGyro-meanFreq()-Z         
fBodyAccMag-mean()              
fBodyAccMag-std()               
fBodyAccMag-meanFreq()         
fBodyBodyAccJerkMag-mean()      
fBodyBodyAccJerkMag-std()       
fBodyBodyAccJerkMag-meanFreq() 
fBodyBodyGyroMag-mean()         
fBodyBodyGyroMag-std()          
fBodyBodyGyroMag-meanFreq()    
fBodyBodyGyroJerkMag-mean()     
fBodyBodyGyroJerkMag-std()      
fBodyBodyGyroJerkMag-meanFreq()