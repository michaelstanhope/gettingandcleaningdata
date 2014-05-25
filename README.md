## Introduction

This repository contains the code for the course project of the Getting and Cleaning Data course. The project involves cleaning and tidying data collected from accelerometers on smartphones. The data was collected while subjects performed various activities such as walking upstairs, walking downstairs and sitting. 

## Files in this repository

This directory contains the following files / directories:

#### UCI HAR Dataset
A directory containing the data collected from the accelerometers from the Samsung Galaxy S smartphone, upon which the assignment is based. A full description is available at the site where the data was obtained (see the URL below). Also see the README.txt file within the directory.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

#### run_analysis.R
The script used to process the raw data and output the two tidy data sets below.

#### tidy1.txt
The first tidy data set in the project description. The test and training data sets from the raw data are merged and combined with subject and activity data (see the code book). The granularity is the same as the raw data (see the README.txt file from within the UCI HAR Dataset for more information). A subset of metrics from the raw data are included in this tidy set.

#### tidy2.txt
The second tidy data set in the project description. Metrics from the first tidy data set are averaged by activity and subject.

#### CodeBook.md
A code book describing the variables, the data and the transformations that was performed to clean up the above data.

#### makeCodeBook.R
A little script that I wrote to help generate variable descriptions for the code book.

#### README.md