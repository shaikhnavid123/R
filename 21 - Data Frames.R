# Data Frames :
# A data frame is an array, unlike an array.
# The data we store in the columns of the data frame can be of a various types.
# A data frame is a two-dimensional array-like structure or a table in which a column
# contains values of one variable, and rows contains one set of values from each column.
# A data frame is a special case of the list in which each component has equal length.

# Creating a data frame :

emp.data<-data.frame(
	employee_id = c(1:5),
	employer_name = c("walter","jesse","saul","hank","mike"),
	salary = c(523.3,913.2,641.0,529.0,435.5),
	starting_date = as.Date(c("2012-01-01","2013-09-23","2014-05-09","2012-12-16","2015-03-27")),
	stringsAsFactors = FALSE
)

# Printing the data frame :

print(emp.data)
str(emp.data) # structure of data frame

f1<-data.frame(emp.data$employee_name,emp.data$salary)
f1

f2<-emp.data[3:5,]
f2

f3<-emp.data[c(2,3),c(1,4)]
f3<-emp.data[c(2,3)]
f3

# cbind() and rbind()

x<-list(6,"steve",420.25,"2014-05-08")
rbind(emp.data,x)

y<-c("albaquerque","alaska","new jersy","florida","new york")
cbind(emp.data,Address=y)
emp.data<-emp.data[-2,]
emp.data$starting_date<-NULL
emp.data

print(summary(emp.data))

















