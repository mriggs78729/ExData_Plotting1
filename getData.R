#
# Function    : getData()
# Author      : Michael Riggs (mriggs78729@gmail.com)
# Purpose     : Returns a dataframe used for Project 1 of the Exploratory Data Analyis Course
# Dependencies: None
# Version     : 1.0
# Date        : 8 July 2914
# Copyright   : Michael R. Riggs
#
#

getData <-function()
{
  dataResourceName <- "EnergyData"
  #
  # Check if the data is in the global cache
  #
  if (!exists(dataResourceName, envir= globalenv()))
  {
    #
    #if not, read the data
    #
    projectDataURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    projectDataFileZip <- "powerconsumption.zip"
    projectDataFile <- "household_power_consumption.txt"
    
    #
    # Download the data for the project if it's not already present.
    #
    if (!file.exists(projectDataFileZip))
    {
      download.file(projectDataURL, projectDataFileZip , method="curl")
    }
    #
    # unzip the compressed file
    #
    if (!file.exists(projectDataFile))
    {
      message("unzipping data")
      unzip(projectDataFileZip)
    }
    df <- read.csv(projectDataFile, sep=";", na.strings="?")
    #
    #convert the Date and Time factor columns to a Posix datetime column
    #
    
    df$Date <- as.character(df$Date) 
    #
    # select out the dates of interest
    #
    subset <- df[df$Date == "2/2/2007" | df$Date == "1/2/2007",]
    subset$Time <- as.character(subset$Time)
    subset$dateTime <- sprintf("%s %s",subset$Date, subset$Time)
    subset$dateTime <- strptime(subset$dateTime,"%d/%m/%Y %H:%M:%S")
    #
    #save the data in the global env so we don't have to reread it
    #
    assign(dataResourceName, subset, envir=globalenv())
  }
  else {
    message("Fetching from cache")
    subset <- get(dataResourceName,envir= globalenv())
  }
  subset
}


