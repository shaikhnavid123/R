# Data Importing - MySQL Database

#-----------------------------| T H E O R Y |-------------------------------------

# Importing Data from relational database using RMySQL package

# Commands :

# dbGetQuery : Sends the queries and fetches results as the data frame.

# dbSendQuery : Only sends the query and returns an object of class inheritng from 
# "DBIResult", this object of class can be used to fetch the required result.

# dbClearResult : Removes the result from cache memory,

# fetch : Returns few or all rows that were asked in query.
# The output of fetch function is a list.

# dbHasCompleted : It is used to check is all the rows are retrived.

# dbReadTable and dbWriteTable : These functions ate used to read and write the 
# tables in Database from an R data frame.

#-----------------------------| P R A C T I C A L |-------------------------------------

install.package("RMySQL")
library("RMySQL")

con <- dbConnect(MySQL(),
			username = "root",
			password ="",
			host = "localhost"
			port = 3306,
			dbname = "02_db"
)

con <- dbConnect(MySQL(),
			username = "root",
			dbname = "02_db"
)

dbListTables(con)
dbListFields(con, "details")

rs <- dbSendQuery(con, "select * from details")
data1 <- dbGetQuery(con, "select * from details")
View(data1)

data <- fetch(rs, n = -1) # -1 select all rows
#data <- fetch(rs, n = 4)
View(data)

