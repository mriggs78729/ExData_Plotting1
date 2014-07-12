#
# Function    : plot1()
# Author      : Michael Riggs (mriggs78729@gmail.com)
# Purpose     : Plots the first plot used for Project 1 of the Exploratory Data Analyis Course
# Dependencies: source "getData.R", "pngDevice.R"
# Version     : 1.0
# Date        : 8 July 2914
# Copyright   : Michael R. Riggs
#
#


plot1 <- function()
{
  #
  # Be sure to source "getData.R" to pickup this function
  #
  data <- getData()
  isLocal <- openPNG("plot1.png")
 
  png(filename = "plot1.png")
  hist(data$Global_active_power, breaks=12, freq=TRUE, plot=TRUE, 
                  xlab="Global Active Power (kilowatts)", 
                  col="red",main="Global Active Power")  
  closePNG(isLocal)

}
