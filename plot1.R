##========================================================
## FILE 2
##========================================================

##========================================================
## NOTE
## My system environment is set to German, therefore the 
## weekdays are written in German.
## Do = Thursday
## Fr = Friday
## Sa = Saturday
##========================================================

load("load_energydata.R")

explore_plot1 <- function()
{
    ## save PNG format
    png("plot1.png", width=480,height=480)
    ## create plot
    hist(energydata$Global_active_power,
         col = "red", xlab="Global Active Power (kilowatts)",
         main="Global Active Power")
    ##title("Global Active Power")
    dev.off()
    
    
}
