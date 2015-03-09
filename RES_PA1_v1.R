
##================================
## Reproducible Research
## PA 1: R Markdown files
## Date:09.03.2015
## Author:AC
##================================


library(data.table)
library(knitr)
library(plyr)
library(dplyr)
library(lubridate)


## Load the data (i.e. read.csv())
setwd("C:/DATA/COURSERA/05_REPRODUCIBLE/PA1")
data<-data.table(read.csv('activity.csv'))

##Process/transform the data (if necessary) 
##into a format suitable for your analysis

##=============
## PART 1
##=============


## Calculate the total number of steps taken per day
totalSteps_perDay<-aggregate(steps~day(data$date),data,sum,na.rm = TRUE)
colnames(totalSteps_perDay) <- c("day", "Total_steps_per_day")

## Make a histogram of the total number of steps taken each day
hist(totalSteps_perDay$day,
     col = "red", xlab="day",
     main="Total number of steps per day")

## What is mean total number of steps taken per day?
meanStepsPerDay<-aggregate(Total_steps_per_day~day,totalSteps_perDay,mean)
colnames(meanStepsPerDay) <- c("day", "mean_steps_per_day")
medianStepsPerDay<-aggregate(Total_steps_per_day~day,totalSteps_perDay,median)
colnames(medianStepsPerDay) <- c("day", "median_steps_per_day")

print("mean value of the steps on all days")
mean(data$steps,na.rm=TRUE)
print("median value of the steps on all days")
median(data$steps,na.rm=TRUE)


##=================
## PART 2
##=================
## What is the average daily activity pattern?

## Make a time series plot (i.e. type = "l") 
##of the 5-minute interval (x-axis) and the average number of
##steps taken, averaged across all days (y-axis)
ts<-aggregate(steps~interval,data,mean,na.rm=TRUE)

plot(ts$interval,ts$steps,type="l",
     main="Avarage daily activity pattern",
     xlab="5-minute interval",
     ylab="no of steps taken",
     col="blue")

## Which 5-minute interval, on average across all the days in 
## the dataset, contains the maximum number of steps?

max(ts$steps)
print(value coresponding--)
which.max(ts$steps)


##=================
## PART 3
##================= 
  
## Imputing missing values

## Calculate and report the total number of missing 
##values in the dataset (i.e. the total number of rows with NAs)

print(missing values in data)
data_na<-sum(is.na(data))
cdata_na<-which(is.na(data))

##Devise a strategy for filling in all of the missing values
##in the dataset. The strategy does not need to be sophisticated.
##For example, you could use the mean/median for that day, or the
##mean for that 5-minute interval, etc.

## Create a new dataset that is equal to the original dataset
##but with the missing data filled in.


##Make a histogram of the total number of steps taken each day 
##and Calculate and report the mean and median total number of 
##steps taken per day. 


##Do these values differ from the estimates
##from the first part of the assignment? 

## What is the impact of 
##imputing missing data on the estimates of the total daily
##number of steps?


##=================
## PART 4
##=================

## Are there differences in 
## activity patterns between weekdays and weekends?

## Use the dataset with 
## the filled-in missing values for this part.

