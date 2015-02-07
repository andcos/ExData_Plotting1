##========================================================
## FILE 5
##========================================================

##========================================================
## NOTE
## My system environment is set to German, therefore the 
## weekdays are written in German.
## Do = Thursday
## Fr = Friday
## Sa = Saturday
##========================================================

##PLOT4

load("load_energydata.R")

explore_plot4<- function()
    
{
    ## save PNG format
    png("plot4.png", width=480,height=480)
    ## create plot
    ## 4 figures arranged in 2 rows and 2 columns
    par(mfrow=c(2,2))
    ## plot 1.1
    plot(energydata$Time,energydata$Global_active_power,
         type='l',xlab="",ylab="Global active Power")
    ##plot 1.2
    plot(energydata$Time,energydata$Voltage,
         type='l',xlab="datetime",ylab="Voltage")
    ##plot 2.1
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
    ##plot 2.2
    plot(energydata$Time,energydata$Global_reactive_power,
         type='l',xlab="datetime",ylab="Global_reactive_power")
    
    
    dev.off()
    
}
