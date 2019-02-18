#Anytime we are working to run an analysis want to ensure that our data set is as clean as possible. Sometimes this may require us to either recode the missing value for a given variable or create an entirely new variable altogether

#One rather simple way to accomplish this is to lean on the ifelse() command

#Basic examples of ifelse() for variable creation.
#Practice: Comedy and before 2015
movies_1017$var1 <- ifelse(movies_1017$genre=="Comedy" &    movies_1017$year<2015,1,0)
#Practice: Comedy and Rated-R
movies_1017$var2 <- ifelse(movies_1017$genre=="Comedy" & movies_1017$mpaa=="R",1,0)
#rated R
movies_1017$var3 <- ifelse(movies_1017$mpaa=="R",1,0)
#After 2015 or rated R
movies_1017$var4 <- ifelse(movies_1017$mpaa=="R" & movies_1017$year>2016,1,0)

#Here we see a more complex example that introduces a logical (or boolean) operator that enables us to make more sophisticated logical statements.
movies_1017$comedy <- ifelse(movies_1017$genre=="Comedy" | movies_1017$genre=="Romantic Comedy",1,0)
View(movies_1017)

#While recoding certain variables as 0,1 works well for binary nominal variables, some thought should be given to the recoding of nominal variables that are not binary. In a future version of this post we will explore how to create indicator or "dummy" variables that help us conduct similar analyses with variables that have more than two levels.
