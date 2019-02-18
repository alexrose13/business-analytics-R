#Once we've successfully brought data into R, it is worthwhile to invest some time in exploring the structure of the data that we are working with. Let's go over a few of the basic commands that can be useful in these scenarios

str(data)

#This is really the core of any EDA. The output of this command will list each of the variables included in a data frame and *reveal their format.* It is hard to overstate the importance of understanding the format of your data; data that is improperly formatted can result in serious errors during data processing and model building.

summary(data)

#The summary() command offers a summary of what every data is passed through it. This can help you identify any nonsensical values for given variables (ex: a 13th month or a 27.4th hour). It can also help you identify how many values for a given entry may be missing.

table(data$var1)

#The table() command outputs a simple table of the levels (and their respective counts) for a given variable.

table(data$var1[data$var2<100])

#NOTE: the above notation can be used to subset the input into the table command (and therefore adjust the output).
