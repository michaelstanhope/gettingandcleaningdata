## Read the metric descriptions
features <- read.table("features.txt", col.names=c("featureNumber","featureName"))

## Read the activity ID to activity Name mapping
activityTypes <- read.table("activity_labels.txt", col.names=c("activityNumber","activityName"))

## Read the subject numbers for the test and train data sets
testSubjects <- read.table("test/subject_test.txt", col.names=c("subjectID"))
trainSubjects <- read.table("train/subject_train.txt", col.names=c("subjectID"))

## Read the activity numbers for the test and train data sets
testActivities <- read.table("test/Y_test.txt", col.names=c("activity"))
trainActivities <- read.table("train/Y_train.txt", col.names=c("activity"))

## Read the test and train metric values
testData <- read.table("test/X_test.txt", col.names=features$featureName)
trainData <- read.table("train/X_train.txt", col.names=features$featureName)

## Function to convery activity IDs to activity names
getActivity <- function(activityNum = 1) {
    gsub("_", " ", tolower(activityTypes[activityNum, "activityName"]))
}

## Find metric descriptions containing mean() or std()
usedFeatures <- subset(features, grepl("mean\\(\\)|std\\(\\)",featureName))

## Combine subject id, activity id and metrics; filter on mean() and std() metrics
testDataTrimmed <- cbind(testSubjects,testActivities,testData[,usedFeatures$featureNumber])
trainDataTrimmed <- cbind(trainSubjects,trainActivities,trainData[,usedFeatures$featureNumber])

## Combine the test and train data sets
combinedData <- rbind(testDataTrimmed, trainDataTrimmed)
combinedData$activity <- getActivity(combinedData$activity)

## Make the metric names lowercase and remove underscores
names(combinedData) <-gsub("\\.","",tolower(names(combinedData)))

## Write the tidied, unsummarised data
write.table(combinedData, file="tidy1.txt", row.names=FALSE)

## Note that melt and dcast require the reshape package
dataMelt <- melt(combinedData, id=c("subjectid","activity"))
summarisedData <- dcast(dataMelt, subjectid + activity ~ variable, mean)

## Write the tidied, summarised data 
write.table(summarisedData, file="tidy2.txt", row.names=FALSE)
