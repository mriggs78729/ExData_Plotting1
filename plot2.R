#
# Function    : plot2()
# Author      : Michael Riggs (mriggs78729@gmail.com)
# Purpose     : Plots the second plot used for Project 1 of the Exploratory Data Analyis Course
# Dependencies: source "getData.R", "pngDevice.R"
# Version     : 1.0
# Date        : 8 July 2914
# Copyright   : Michael R. Riggs
#
#
plot2 <- function()
{
  #
  # Be sure to source "getData.R" to pickup getData()
  #
  data <- getData()
  isLocal <- openPNG("plot2.png")
  plot(subset$dateTime,data$Global_active_power,type="l", 
       xlab="", ylab="Global Active Power (kilowatts)")
  closePNG(isLocal)
  
}
