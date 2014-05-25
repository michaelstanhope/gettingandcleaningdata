## Code Book

### Raw Data

The raw data is contained in the UCI HAR Dataset directory. See the README.txt file within that directory for a full description of these files.

### Tidy Data Files

There are 2 files produced by running run_analysis.R on the UCI HAR Dataset. In each file, the units of all numeric variables are normalized and bounded within [-1,1].

#### tidy1.txt
The first tidy data set in the project description. The test and training data sets from the raw data are merged and combined with subject and activity data (see the code book). The granularity is the same as the raw data i.e. one feature vector from the training or test raw data sets (see the README.txt file from within the UCI HAR Dataset for more information). A subset of metrics from the raw data are included in this tidy set. See below for variable definitions.

#### tidy2.txt
The second tidy data set in the project description. Metrics from the first tidy data set are averaged by activity and subject. See below for variable definitions.

### Data Cleaning Steps

The following steps were taken to clean the data:
* Append each of the raw data sets (test and train) with the correspoinding activty and subject IDs
* Combine theses 2 resultant sets
* Remove numeric variables that did not measure mean() or std() 
* Tidy the variable names by making them lowercase and removing punctuation (note that I kept abbreviations due to potentially very long variable names)
* Replace activity IDs with activity descriptions

The result of the above steps was written to tidy1.txt. These results were then averaged by activty and subject then written to tidy2.txt.

See the comments in run_analysis.R for more details.

### Variebles used in tidy1.txt and tidy2.txt

1	subjectid: ID of the subject (person performing activities) in the experiment

2	activity: Description of the activity understaken by the subject

3	tbodyaccmeanx: Time domain  body  accelerometer  reading  in the  x  dimension  (mean)

4	tbodyaccmeany: Time domain  body  accelerometer  reading  in the  y  dimension  (mean)

5	tbodyaccmeanz: Time domain  body  accelerometer  reading  in the  z  dimension  (mean)

6	tbodyaccstdx: Time domain  body  accelerometer  reading  in the  x  dimension  (standard deviation)

7	tbodyaccstdy: Time domain  body  accelerometer  reading  in the  y  dimension  (standard deviation)

8	tbodyaccstdz: Time domain  body  accelerometer  reading  in the  z  dimension  (standard deviation)

9	tgravityaccmeanx: Time domain  gravity  accelerometer  reading  in the  x  dimension  (mean)

10	tgravityaccmeany: Time domain  gravity  accelerometer  reading  in the  y  dimension  (mean)

11	tgravityaccmeanz: Time domain  gravity  accelerometer  reading  in the  z  dimension  (mean)

12	tgravityaccstdx: Time domain  gravity  accelerometer  reading  in the  x  dimension  (standard deviation)

13	tgravityaccstdy: Time domain  gravity  accelerometer  reading  in the  y  dimension  (standard deviation)

14	tgravityaccstdz: Time domain  gravity  accelerometer  reading  in the  z  dimension  (standard deviation)

15	tbodyaccjerkmeanx: Time domain  body  accelerometer  jerk  reading  in the  x  dimension  (mean)

16	tbodyaccjerkmeany: Time domain  body  accelerometer  jerk  reading  in the  y  dimension  (mean)

17	tbodyaccjerkmeanz: Time domain  body  accelerometer  jerk  reading  in the  z  dimension  (mean)

18	tbodyaccjerkstdx: Time domain  body  accelerometer  jerk  reading  in the  x  dimension  (standard deviation)

19	tbodyaccjerkstdy: Time domain  body  accelerometer  jerk  reading  in the  y  dimension  (standard deviation)

20	tbodyaccjerkstdz: Time domain  body  accelerometer  jerk  reading  in the  z  dimension  (standard deviation)

21	tbodygyromeanx: Time domain  body  gyroscope  reading  in the  x  dimension  (mean)

22	tbodygyromeany: Time domain  body  gyroscope  reading  in the  y  dimension  (mean)

23	tbodygyromeanz: Time domain  body  gyroscope  reading  in the  z  dimension  (mean)

24	tbodygyrostdx: Time domain  body  gyroscope  reading  in the  x  dimension  (standard deviation)

25	tbodygyrostdy: Time domain  body  gyroscope  reading  in the  y  dimension  (standard deviation)

26	tbodygyrostdz: Time domain  body  gyroscope  reading  in the  z  dimension  (standard deviation)

27	tbodygyrojerkmeanx: Time domain  body  gyroscope  jerk  reading  in the  x  dimension  (mean)

28	tbodygyrojerkmeany: Time domain  body  gyroscope  jerk  reading  in the  y  dimension  (mean)

29	tbodygyrojerkmeanz: Time domain  body  gyroscope  jerk  reading  in the  z  dimension  (mean)

30	tbodygyrojerkstdx: Time domain  body  gyroscope  jerk  reading  in the  x  dimension  (standard deviation)

31	tbodygyrojerkstdy: Time domain  body  gyroscope  jerk  reading  in the  y  dimension  (standard deviation)

32	tbodygyrojerkstdz: Time domain  body  gyroscope  jerk  reading  in the  z  dimension  (standard deviation)

33	tbodyaccmagmean: Time domain  body  accelerometer  reading  (mean)

34	tbodyaccmagstd: Time domain  body  accelerometer  reading  (standard deviation)

35	tgravityaccmagmean: Time domain  gravity  accelerometer  reading  (mean)

36	tgravityaccmagstd: Time domain  gravity  accelerometer  reading  (standard deviation)

37	tbodyaccjerkmagmean: Time domain  body  accelerometer  jerk  reading  (mean)

38	tbodyaccjerkmagstd: Time domain  body  accelerometer  jerk  reading  (standard deviation)

39	tbodygyromagmean: Time domain  body  gyroscope  reading  (mean)

40	tbodygyromagstd: Time domain  body  gyroscope  reading  (standard deviation)

41	tbodygyrojerkmagmean: Time domain  body  gyroscope  jerk  reading  (mean)

42	tbodygyrojerkmagstd: Time domain  body  gyroscope  jerk  reading  (standard deviation)

43	fbodyaccmeanx: Frequency domain  body  accelerometer  reading  in the  x  dimension  (mean)

44	fbodyaccmeany: Frequency domain  body  accelerometer  reading  in the  y  dimension  (mean)

45	fbodyaccmeanz: Frequency domain  body  accelerometer  reading  in the  z  dimension  (mean)

46	fbodyaccstdx: Frequency domain  body  accelerometer  reading  in the  x  dimension  (standard deviation)

47	fbodyaccstdy: Frequency domain  body  accelerometer  reading  in the  y  dimension  (standard deviation)

48	fbodyaccstdz: Frequency domain  body  accelerometer  reading  in the  z  dimension  (standard deviation)

49	fbodyaccjerkmeanx: Frequency domain  body  accelerometer  jerk  reading  in the  x  dimension  (mean)

50	fbodyaccjerkmeany: Frequency domain  body  accelerometer  jerk  reading  in the  y  dimension  (mean)

51	fbodyaccjerkmeanz: Frequency domain  body  accelerometer  jerk  reading  in the  z  dimension  (mean)

52	fbodyaccjerkstdx: Frequency domain  body  accelerometer  jerk  reading  in the  x  dimension  (standard deviation)

53	fbodyaccjerkstdy: Frequency domain  body  accelerometer  jerk  reading  in the  y  dimension  (standard deviation)

54	fbodyaccjerkstdz: Frequency domain  body  accelerometer  jerk  reading  in the  z  dimension  (standard deviation)

55	fbodygyromeanx: Frequency domain  body  gyroscope  reading  in the  x  dimension  (mean)

56	fbodygyromeany: Frequency domain  body  gyroscope  reading  in the  y  dimension  (mean)

57	fbodygyromeanz: Frequency domain  body  gyroscope  reading  in the  z  dimension  (mean)

58	fbodygyrostdx: Frequency domain  body  gyroscope  reading  in the  x  dimension  (standard deviation)

59	fbodygyrostdy: Frequency domain  body  gyroscope  reading  in the  y  dimension  (standard deviation)

60	fbodygyrostdz: Frequency domain  body  gyroscope  reading  in the  z  dimension  (standard deviation)

61	fbodyaccmagmean: Frequency domain  body  accelerometer  reading  (mean)

62	fbodyaccmagstd: Frequency domain  body  accelerometer  reading  (standard deviation)

63	fbodybodyaccjerkmagmean: Frequency domain  body  accelerometer  jerk  reading  (mean)

64	fbodybodyaccjerkmagstd: Frequency domain  body  accelerometer  jerk  reading  (standard deviation)

65	fbodybodygyromagmean: Frequency domain  body  gyroscope  reading  (mean)

66	fbodybodygyromagstd: Frequency domain  body  gyroscope  reading  (standard deviation)

67	fbodybodygyrojerkmagmean: Frequency domain  body  gyroscope  jerk  reading  (mean)

68	fbodybodygyrojerkmagstd: Frequency domain  body  gyroscope  jerk  reading  (standard deviation)