#The syntax behind building a simple linear model is rather straight forward. A simple model might look something like this:
lm(target_variable~independent.var1,data.set)

#A more complicated of that same model can be seen below.
lm(target_variable~independent.var1 + independent.var2 + I(indepdent.var3^2),data.set)

#A few comments here. The syntax typically follows the format shown above. Subsquent variables are added to the model by placing a "+" between them. Mathmatical operations can be performed directly within the lm() function by placing them inside of the I() functions (as seen above).

#Much of these can be reduced into a simpler form in which a period "." is used to stand in place for "all other independent variables. We see such a model expressed as:
lm(target_variable~., data.set)

#It is important to note that the above leverages the "~." in place of all independent variables in the data set as they are encoded. Some subsetting and variable transformation may be required in order for the model to behave in whatever manner is desired.
