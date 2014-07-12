#
# Function    : plot3()
# Author      : Michael Riggs (mriggs78729@gmail.com)
# Purpose     : Plots the third plot used for Project 1 of the Exploratory Data Analyis Course
# Dependencies: source "getData.R", "pngDevice.R"
# Version     : 1.0
# Date        : 8 July 2914
# Copyright   : Michael R. Riggs
#
#
plot3 <- function()
{
  #
  # Be sure to source "getData.R" to pickup getData()
  #
  data <- getData()
  isLocal <- openPNG("plot3.png")
  
  plot(data$dateTime,data$Sub_metering_1,type="l", ylab="Energy sub metering",xlab="",yaxt="n")
  lines(data$dateTime,data$Sub_metering_2, col="red",ylab="")
  lines(data$dateTime,data$Sub_metering_3,col="blue",ylab="")
  axis(2, at=seq(0,40,by= 10),las=2)
  title(ylab="Energy sub metering")
  box()
  legend(x="topright",legend= c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
         col=c("black","red","blue"), lwd=1, box.lwd=0, bg=NULL,y.intersp=.75)
  closePNG(isLocal)
  
}
