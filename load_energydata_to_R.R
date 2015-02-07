

##===========================================
## FILE 1
##===========================================
setwd("C:/DATA/COURSERA/04_EDA/COURSE PRJ 1")
filename="household_power_consumption.txt"


print("---Determining working directory...")
if(file.exists("household_power_consumption.txt")){
    print(" ...current directory...")
    getwd()
    } else{
        print("...Wrong directory...")
        print(" change directory to where file : household_power_consumption.txt exists")
    }

    while (!file.exists(file.path(Dir, filename), showWarnings=FALSE)) Dir <- readline(paste("WRONG directory in\n",normalizePath(Dir),"\nPlease choose directory ( with 'filename' etc.):"))
    setwd(Dir);
}




library(data.table)
library(lubridate)
## read the whole data
data1 <- data.table(read.table(filename,
                               header=TRUE,sep=";",
                               na="?",
                               colClasses=c("character","character",rep("numeric"))))
cnames<-names(data1)
data1$Date <- as.Date(data1$Date, "%d/%m/%Y")
# only use data from the dates 2007-02-01 and 2007-02-02
dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
energydata <- subset(data1, Date %in% dates)
rm(data1)

##change column Time to Time and Hour
energydata$Date<-as.Date(energydata$Date,"%d/%m/%Y")
energydata$Date<-as.character(energydata$Date)
energydata$Time <-paste(energydata$Date, energydata$Time)
##test<-strptime(energydata$Time,format="%Y-%m-%d %H:%M:%S")
##test2<-as.POSIXct(test)

energydata$Time<-as.POSIXct(strptime(energydata$Time,format="%Y-%m-%d %H:%M:%S"))

## save energydata to R 
save(energydata, file="load_energydata.R")