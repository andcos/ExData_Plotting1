##========================================================
## FILE 3
##========================================================

##PLOT2

##========================================================
## NOTE
## My system environment is set to German, therefore the 
## weekdays are written in German.
## Do = Thursday
## Fr = Friday
## Sa = Saturday
##========================================================

load("load_energydata.R")

explore_plot2 <- function()
{
    ## save PNG format
    png("plot2.png", width=480,height=480)
    ## create plot
    plot(energydata$Time,energydata$Global_active_power,
         type='l',xlab=" ",ylab="Global active Power (kilowatts)")
    
    dev.off()
}
