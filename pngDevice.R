#
# Function    : openPNG() closePNG()
# Author      : Michael Riggs (mriggs78729@gmail.com)
# Purpose     :Controls opening an closing the PNG file to allow multiple plots if a 
#               graphics device is already open
# Dependencies: None
# Version     : 1.0
# Date        : 8 July 2914
# Copyright   : Michael R. Riggs
#
#
openPNG <- function(fileName)
{
  if (dev.cur()==2)
  {
    png(filename = fileName, width = 480, height = 480,)
    localDevice = TRUE
  }
  else
  {
    localDevice <- FALSE
  }
}

closePNG <- function (isLocalDevice)
{
  if (isLocalDevice==TRUE)
  {
    dev.off()
  }
}