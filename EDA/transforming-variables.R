#We have already discussed the usefullness of recoding nominal variables (and in some instances creating indicator or "dummy" variables for nominal variables with 3 or more levels), but these techniques do not address some of the transformations that may be appropriate for numerical input.

data$num.var1.MM <- data$num.var1.MM/1000000

