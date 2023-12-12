# DATA IMPORTING - .csv file
# Comma-Separated Values (csv)

#---------------------------------------------------------------------------------
getwd() # function to know the current working directory

setwd("F:\\programming\\R\\Notes") # function to reset the current working directory

# Sorting :

v<-c(12,34,56,32,35,98,33,57,14,59,13,21)
sort(v) # sort the data in ascending order
sort(v, decreasing = T) # sort the data in descending order

order(v)
v[order(v)]

rank(v) # indexing
v[rank(v)] # indexing

#-------------------------------Working with .csv file---------------------------

stores <- read.csv("pcg64-testset-2.csv")
View(stores)

print(is.data.frame(stores))
print(ncol(stores))
print(nrow(stores))

store1 <- read.csv("F:\\programming\\R\\Notes\\pcg64-testset-2.csv")
store2 <- read.table(file="pcg64-testset-2.csv", header = T, sep = ",")

# Functions related to Data Frames :

View(stores)
fix(stores)
str(stores) # shows the structure of the data frame
summary(stores) # shows summary statistics on the data frame
names(stores) # shows all the variables names
colnames(stores) # shows the name of each columns in data frame
nrow(stores) # prints the total number of rows
ncol(stores) # prints the total number of columns/variables
length(stores) # prints the total number of columns/variables
dim(stores) # shows the dimensions of the data frame
head(stores) # shows the first 6 rows of the data frame
tail(stores) # shows the last 6 rows of the data frame

# Accessing data from csv file :

stores3 <- stores[c(1:3,3,1:2)] # adding columns with the similar variable names
names(stores3)
stores3 <- stores[c(1:2),c(1:3)] # first c() is for rows, second c() is for columns
stores3 <- stores[c(1:10),] # shows the rows specified in c() with all columns
View(stores3)

grep("var3", colnames(stores)) # shows the index of the variable in data frame
grep("seed", colnames(stores))

# DATA IMPORTING - csv
# $ - dollar sign used for accessing or mentioning the variable name

# created a new variable
d1<-stores3$var3
d1
names(stores3)
stores3$TotalCost <- stores3$seed * stores3$X0x0 + stores3$seed # adds an extra columns we specific operations
fix(stores3)
View(stores3)
View(stores3$TotalCost)

# Getting the maximum TotalCost from the data frame
names(stores3)
max_cost <- max(stores3$TotalCost)
print(max_cost)
min_cost <- min(stores3$TotalCost)
print(min_cost)

# Getting the maximum TotalCost from data frame

details <- subset(stores3,TotalCost==max(TotalCost))
print(details)

# Getting the details of all the persons who are working in the 'place' or here 'hello'

names(stores3)
details1 <- subset(stores3, var3=="hello")
print(details1)
details1 <- subset(stores3, var3=="hello"&seed>5)
print(details1)

# --------------------------Writing into a CSV file-------------------------------

# R also allows us to write into the .csv file.
# For this purpose, R provides a write.csv() function.



 
