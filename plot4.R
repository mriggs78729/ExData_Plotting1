#
# Function    : plot3()
# Author      : Michael Riggs (mriggs78729@gmail.com)
# Purpose     : Plots the fourth plot used for Project 1 of the Exploratory Data Analyis Course
# Dependencies: source "getData.R", "plot2.R" and "plot3.R", "pngDevice.R"
# Version     : 1.0
# Date        : 8 July 2914
# Copyright   : Michael R. Riggs
#
#

plotvoltage <- function()
{
  #
  # Be sure to source "getData.R" to pickup getData()
  #
  data <- getData()
  plot(subset$dateTime,data$Voltage,
        type="l", xlab="datetime", ylab="Voltage")
  
}
plotreactive <- function()
{
  data <- getData()
  plot(subset$dateTime,data$Global_reactive_power,
        type="l", xlab="datetime",ylab="Global Reactive Power")
}


plot4 <- function()
{
  #
  # Be sure to source "getData.R" to pickup this function
  #
  data <- getData()
  isLocal <- openPNG("plot4.png")
  par(mfrow=c(2,2))
  
  plot2()
  plotvoltage()
  plot3()
  plotreactive()
  
  closePNG(isLocal)
  par(mfrow=c(1,1))
  
}
