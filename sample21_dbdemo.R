#install.packages("RMySQL")
library(RMySQL)
# Create a connection Object to MySQL database.
# We will connect to the sampel database named "sakila" that comes with MySql installation.
mysqlconnection = dbConnect(MySQL(), user = 'root', password = 'vignesh', dbname = 'nessu',
                            host = 'localhost')

# List the tables available in this database.
dbListTables(mysqlconnection)
# Query the "actor" tables to get all the rows.
result = dbSendQuery(mysqlconnection, "select * from employee")

# Store the result in a R data frame object. n = 5 is used to fetch first 5 rows.
data.frame = fetch(result, n = 50)
print(data.frame)

