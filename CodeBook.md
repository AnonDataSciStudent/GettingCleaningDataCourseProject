# Codebook

This file describes the variables in the two datasets that are created by the run_analysis.R script. For information about study design, summary choices and transformations, please refer to README.md.

## combined_dft

A data frame tbl, consisting of 10299 observations of 68 variables. Each observation represents one experiment record. The first 2 variables are vectors, describing the observed activity and identifying the observed subject. The remaining 66 variables are numbers, whose values have been estimated from the accelerometer and gyroscope triaxial raw signals. Although these raw signals were measured in standard gravity units ("g") and radians per second, all of the estimated values are normalized and bounded within [-1, 1] and are therefore without units. The dataset does not contain NAs.

1. Activity: 6 levels ("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
2. Subject: 30 levels ("1" through "30")
3. tBodyAcc-mean()-X: mean of time domain accelerometer signals for body acceleration, X-axis
4. tBodyAcc-mean()-Y: mean of time domain accelerometer signals for body acceleration, Y-axis
5. tBodyAcc-mean()-Z: mean of time domain accelerometer signals for body acceleration, Z-axis
6. tBodyAcc-std()-X: standard deviation of time domain accelerometer signals for body acceleration, X-axis
7. tBodyAcc-std()-Y: standard deviation of time domain accelerometer signals for body acceleration, Y-axis
8. tBodyAcc-std()-Z: standard deviation of time domain accelerometer signals for body acceleration, Z-axis
9. tGravityAcc-mean()-X: mean of time domain accelerometer signals for gravity acceleration, X-axis
10. tGravityAcc-mean()-Y: mean of time domain accelerometer signals for gravity acceleration, Y-axis
11. tGravityAcc-mean()-Z: mean of time domain accelerometer signals for gravity acceleration, Z-axis
12. tGravityAcc-std()-X: standard deviation of time domain accelerometer signals for gravity acceleration, X-axis
13. tGravityAcc-std()-Y: standard deviation of time domain accelerometer signals for gravity acceleration, Y-axis
14. tGravityAcc-std()-Z: standard deviation of time domain accelerometer signals for gravity acceleration, Z-axis
15. tBodyAccJerk-mean()-X: mean of time domain accelerometer jerk signals for body acceleration, X-axis
16. tBodyAccJerk-mean()-Y: mean of time domain accelerometer jerk signals for body acceleration, Y-axis
17. tBodyAccJerk-mean()-Z: mean of time domain accelerometer jerk signals for body acceleration, Z-axis
18. tBodyAccJerk-std()-X: standard deviation of time domain accelerometer jerk signals for body acceleration, X-axis
19. tBodyAccJerk-std()-Y: standard deviation of time domain accelerometer jerk signals for body acceleration, Y-axis
20. tBodyAccJerk-std()-Z: standard deviation of time domain accelerometer jerk signals for body acceleration, Z-axis
21. tBodyGyro-mean()-X: mean of time domain gyroscope signals for body acceleration, X-axis
22. tBodyGyro-mean()-Y: mean of time domain gyroscope signals for body acceleration, Y-axis
23. tBodyGyro-mean()-Z: mean of time domain gyroscope signals for body acceleration, Z-axis
24. tBodyGyro-std()-X: standard deviation of time domain gyroscope signals for body acceleration, X-axis
25. tBodyGyro-std()-Y: standard deviation of time domain gyroscope signals for body acceleration, Y-axis
26. tBodyGyro-std()-Z: standard deviation of time domain gyroscope signals for body acceleration, Z-axis
27. tBodyGyroJerk-mean()-X: mean of time domain gyroscope jerk signals for body acceleration, X-axis
28. tBodyGyroJerk-mean()-Y: mean of time domain gyroscope jerk signals for body acceleration, Y-axis
29. tBodyGyroJerk-mean()-Z: mean of time domain gyroscope jerk signals for body acceleration, Z-axis
30. tBodyGyroJerk-std()-X: standard deviation of time domain gyroscope jerk signals for body acceleration, X-axis
31. tBodyGyroJerk-std()-Y: standard deviation of time domain gyroscope jerk signals for body acceleration, Y-axis
32. tBodyGyroJerk-std()-Z: standard deviation of time domain gyroscope jerk signals for body acceleration, Z-axis
33. tBodyAccMag-mean(): mean of magnitude of time domain accelerometer signals for body acceleration
34. tBodyAccMag-std(): standard deviation of magnitude of time domain accelerometer signals for body acceleration
35. tGravityAccMag-mean(): mean of magnitude of time domain accelerometer signals for gravity acceleration
36. tGravityAccMag-std(): standard deviation of magnitude of time domain accelerometer signals for gravity acceleration
37. tBodyAccJerkMag-mean(): mean of magnitude of time domain accelerometer jerk signals for body acceleration
38. tBodyAccJerkMag-std(): standard deviation of magnitude of time domain accelerometer jerk signals for body acceleration
39. tBodyGyroMag-mean(): mean of magnitude of time domain gyroscope signals for body acceleration
40. tBodyGyroMag-std(): standard deviation of magnitude of time domain gyroscope signals for body acceleration
41. tBodyGyroJerkMag-mean(): mean of magnitude of time domain gyroscope jerk signals for body acceleration
42. tBodyGyroJerkMag-std(): standard deviation of magnitude of time domain gyroscope jerk signals for body acceleration
43. fBodyAcc-mean()-X: mean of frequency domain accelerometer signals for body acceleration, X-axis
44. fBodyAcc-mean()-Y: mean of frequency domain accelerometer signals for body acceleration, Y-axis
45. fBodyAcc-mean()-Z: mean of frequency domain accelerometer signals for body acceleration, Z-axis
46. fBodyAcc-std()-X: standard deviation of frequency domain accelerometer signals for body acceleration, X-axis
47. fBodyAcc-std()-Y: standard deviation of frequency domain accelerometer signals for body acceleration, Y-axis
48. fBodyAcc-std()-Z: standard deviation of frequency domain accelerometer signals for body acceleration, Z-axis
49. fBodyAccJerk-mean()-X: mean of frequency domain accelerometer jerk signals for body acceleration, X-axis
50. fBodyAccJerk-mean()-Y: mean of frequency domain accelerometer jerk signals for body acceleration, Y-axis
51. fBodyAccJerk-mean()-Z: mean of frequency domain accelerometer jerk signals for body acceleration, Z-axis
52. fBodyAccJerk-std()-X: standard deviation of frequency domain accelerometer jerk signals for body acceleration, X-axis
53. fBodyAccJerk-std()-Y: standard deviation of frequency domain accelerometer jerk signals for body acceleration, Y-axis
54. fBodyAccJerk-std()-Z: standard deviation of frequency domain accelerometer jerk signals for body acceleration, Z-axis
55. fBodyGyro-mean()-X: mean of frequency domain gyroscope signals for body acceleration, X-axis
56. fBodyGyro-mean()-Y: mean of frequency domain gyroscope signals for body acceleration, Y-axis
57. fBodyGyro-mean()-Z: mean of frequency domain gyroscope signals for body acceleration, Z-axis
58. fBodyGyro-std()-X: standard deviation of frequency domain gyroscope signals for body acceleration, X-axis
59. fBodyGyro-std()-Y: standard deviation of frequency domain gyroscope signals for body acceleration, Y-axis
60. fBodyGyro-std()-Z: standard deviation of frequency domain gyroscope signals for body acceleration, Z-axis
61. fBodyAccMag-mean(): mean of magnitude of frequency domain accelerometer signals for body acceleration
62. fBodyAccMag-std(): standard deviation of magnitude of frequency domain accelerometer signals for body acceleration
63. fBodyAccJerkMag-mean(): mean of magnitude of frequency domain accelerometer jerk signals for body acceleration
64. fBodyAccJerkMag-std(): standard deviation of magnitude of frequency domain accelerometer jerk signals for body acceleration
65. fBodyGyroMag-mean(): mean of magnitude of frequency domain gyroscope signals for body acceleration
66. fBodyGyroMag-std(): standard deviation of magnitude of frequency domain gyroscope signals for body acceleration
67. fBodyGyroJerkMag-mean(): mean of magnitude of frequency domain gyroscope jerk signals for body acceleration
68. fBodyGyroJerkMag-std(): standard deviation of magnitude of frequency domain gyroscope jerk signals for body acceleration

## means_dft

A data frame tbl, consisting of 180 observations of 68 variables, which summarises the data in combined_dft. The 68 variables are exactly identical to those of combined_dft, but here each observation represents all experiment records for each possible combination of activity and subject, and the values presented are mean values. The dataset does not contain NAs.