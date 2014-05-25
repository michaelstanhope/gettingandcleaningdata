## Little script to help create the codebook

getDescription <- function(metricName){
    prefix <- substr(metricName, 1, 1)
    suffix <- substr(metricName, nchar(metricName), nchar(metricName))
    description <- ""
    if(prefix == "t") description <- paste(description, "Time domain")
    if(prefix == "f") description <- paste(description, "Frequency domain")
    if(grepl("body",metricName)) description <- paste(description, " body")
    if(grepl("gravity",metricName)) description <- paste(description, " gravity")
    if(grepl("acc",metricName)) description <- paste(description, " accelerometer")
    if(grepl("gyro",metricName)) description <- paste(description, " gyroscope")
    if(grepl("jerk",metricName)) description <- paste(description, " jerk")
    description <- paste(description, " reading")
    if(suffix %in% c("x","y","z")) description <- paste(description, " in the ", suffix, " dimension") 
    if(grepl("mean",metricName)) description <- paste(description, " (mean)")
    if(grepl("std",metricName)) description <- paste(description, " (standard deviation)")
    description
}

goodnames <- names(summarisedData)

gooddescription <- ""
for (i in 1:68)
{
    gooddescription[i] <- getDescription(goodnames[i])
}

result <- cbind(goodnames, gooddescription)