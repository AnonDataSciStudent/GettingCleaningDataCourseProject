# Getting and Cleaning Data - Course Project

## Purpose

The files in this repository implement the requirements of Johns Hopkins University's Coursera Course "Getting and Cleaning Data" course project. In particular:

* The run_analysis.R R-script will take the provided dataset as input, and will create two tidy datasets as output.
* This README.md markdown-file describes the purpose and usage of the script, and inludes information on the study design and the choices that have been made.
* The CodeBook.md markdown-file describes the variables in the two resulting datasets.

## Input

### Study Design and Data Collection

The [provided dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) has been obtained from the UCI Machine Learning Repository, and contains human activity recognition data collected from the recordings of 30 subjects (volunteers aged 19-48) performing 6 activities (walking, walking upstairs, walking downstairs, sitting, standing, laying) while carrying a waist-mounted smartphone with embedded inertial sensors (a Samsung Galaxy S II). A full description is available at [the site where the data was obtained](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), and further details can be read in the README.txt and features_info.txt that have been included in the dataset zip-file.

### Data Description

The dataset has been split into two parts:

* a training set, containing 7352 observations for 21 subjects;
* a testing set, containing 2947 observations for the remaining 9 subjects.

Each observation is associated with a particular combination of subject and activity, and consists of a vector of 561 "features", which have been estimated from the accelerometer and gyroscope triaxial raw signals. These raw signals are also included in the zip-file, as "Inertial Signals", but are not relevant for our analysis. For more details on the estimation calculations, please refer to README.txt and features_info.txt. All features are normalized and bounded within [-1, 1]. The dataset does not contain NAs.

## Running the analysis

### Prerequisites

The run_analysis.R R-script makes use of the dplyr package, so please make sure that it has been installed on your system, e.g. by running:

        install.packages("dplyr")

The script assumes that the provided dataset has been downloaded and unzipped in the current working directory, e.g. by running the following two commands:

        download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="UCI HAR Dataset.zip")

        unzip(zipfile="UCI HAR Dataset.zip")

### Script Usage

After checking the prerequisites, you can either run the script by downloading and sourcing it:

        download.file(url="https://github.com/AnonDataSciStudent/GettingCleaningDataCourseProject/blob/master/run_analysis.R", destfile="run_analysis.R")

        source(file="run_analysis.R")

or by sourcing it directly:

        source(file="https://github.com/AnonDataSciStudent/GettingCleaningDataCourseProject/blob/master/run_analysis.R")

### Summary Choices and Transformations

Detailed step-by-step explanations of the script's proceedings are provided as comments inside the script-file. In general, the script will:

1. load the dplyr library;
2. read in the several parts of the training and testing datasets, and combine them into one data frame tbl;
3. assign column names, and replace the activity numbers with easily understandable labels;
4. select only those 66 features with either "mean()" or "std()" in their names, and order the result by activity and subject;
5. write the resulting data frame tbl (combined_dft) to disk as combined.txt;
6. create a second data frame tbl (means_dft), containing the means of all 66 selected features for each of the 180 possible combinations of activity and subject, and write it to disk as means.txt.

## Output

After running the script, you wil have two data frame tbls (combined_dft and means_dft) and two corresponding text-files (combined.txt and means.txt). For a description of these datasets, please refer to CodeBook.md.

## Notes

* The script has been created and tested on a 64-bit GNU/Linux system (Ubuntu 15.10) with R version 3.2.2 and dplyr version 0.4.3 installed.
* The instruction "only the measurements on the mean and standard deviation for each measurement" was interpreted as meaning only those 33 "mean" features with an associated "std" feature. Therefore, the 20 "mean" features concerning either "meanFreq" or "angle" are not considered.
* To implement the instruction "descriptive variable names", the feature names as presented in the original dataset were judged to be sufficiently descriptive. Making them longer would probably not increase readability. The obviously mistaken use of "BodyBody" instead of "Body" has been corrected.
* Given the choice between a wide or a long format for the tidy datasets, a wide format was chosen, as this more closely reflects the original dataset.