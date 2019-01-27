#Recommended set up for most new .R projects. Inspired by [Dr. Jason Snyder](https://jason1566.github.io/). This operates under the assumption that you are looking to read and analyze a data set from a .csv file.

#Load relevant libraries
#It is considered best practice to load all of your libraries/packages at the top of your script. Doing so will ensure that you can come to one single place should you need to verify (or troubleshoot) that a particular library/package
library(readr)
library(tidyverse)

#Clear the existing workspace
rm(list = ls())

#Set the working directory
#Replace the filepath below. Ensure that it points to the appropriate project folder.
#Windows users will need to adapt their file paths to ensure that they can be read by the system. More information can be found at the following Stack Overflow article: [File path issues in R using Windows (“Hex digits in character string” error)](https://stackoverflow.com/questions/8425409/file-path-issues-in-r-using-windows-hex-digits-in-character-string-error)

#TL;DR on Windows you have to either transform every '/' to a double '//' or flip the substitute the forward slash '/' for a backslash '\'.

setwd("/Users/YourFilePath/ProjectFolder")

#Read in the data set you are looking to explore
data.set<-read_csv("data_set.csv")

#Summarize the movies data
summary(data.set)
