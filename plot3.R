##========================================================
## FILE 4
##========================================================

##========================================================
## NOTE
## My system environment is set to German, therefore the 
## weekdays are written in German.
## Do = Thursday
## Fr = Friday
## Sa = Saturday
##========================================================

##PLOT3

load("load_energydata.R")

explore_plot3<- function()
{
    
    ## save PNG format
    png("plot3.png", width=480,height=480)
    ## create plot
    plot(energydata$Time,energydata$Sub_metering_1,
         col="black",type='l',xlab="",ylab="Energy sub metering")
    lines(energydata$Time, energydata$Sub_metering_2,col="red",
          type='l',xlab="")
    lines(energydata$Time, energydata$Sub_metering_3,col="blue",
          type='l',xlab="") 
    legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           col=c("black","red","blue"),
           text.col = "black",
           lty = 1)
    
    dev.off()
    
}