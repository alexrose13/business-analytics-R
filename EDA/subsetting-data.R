#When you are looking at a rather large dataset, you may at times want to reduce the amount of data that you with which you are working so that you are better able to manage it. 

#For the following examples, it will be useful to have an actual dataset to explore. To that end, the file "movies_data.csv" has been included in this directory

#Basic example of the subset() function
#The syntax here is relatively simple. At its core it looks something like this: subset(DATA.SOURCE, LOGIC)
movies_1017 <- subset(movies_data,year>=2010 & year<=2017)

#In the example above we see two logical statements joined by the boolean operator '&'. Note these are sometimes called logical operators. If you'd like to learn more about how these work in R, read up on them here: [Quick-R: Operators](https://www.statmethods.net/management/operators.html)

#Subsetting data using the select() command
#This command is particuarly useful when the subset you are trying to create invovles combining columns from a larger dataset that are not already aranged in sequence
new.data.set <- data.set %>% select(column1,column3,column7,column9)
