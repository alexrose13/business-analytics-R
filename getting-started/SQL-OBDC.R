#Currently in Rough Draft Form. This comes directly from course notes.

If your data is stored in an ODBC (Open Database Connectivity) SQL (Structured Query Language) database such as Oracle, MySQL, PostgreSQL, Microsoft SQL, or SQLite, the RODBC package created by Brian Ripley can be used to import this data directly into an R data frame.
•Install and load the RODBC package:
> install.packages("RODBC") > library(RODBC)
•Open a connection called mydb to the database with the DSN my_dsn:
> mydb <- odbcConnect("my_dsn")
•If your ODBC connection requires a username and password􏰀 > mydb <- odbcConnect("my_dsn", uid = "my_username" pwd =
"my_password")
•Use the sqlQuery() function to create an R data frame from the database rows pulled by SQL queries:
> patient_query <- "select * from patient_data where alive = 1"
> patient_data <- sqlQuery(channel = mydb, query = patient_query, stringsAsFactors = FALSE)
