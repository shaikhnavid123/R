#emp_data.xlsx

# R Excel file

# Installing xlsx package
install.packages("xlsx")
#install.packages("xlsxjars")

# Verifying the package is installed
any(grepl("xlsx", installed.packages()))

# Loading the library into R workspace
library("xlsx")

# reading in excel file
# read.xlsx(file_name,sheet_index)

# Reading the first worksheet in the file e,ployee.xlsx
excel_data <- read.xlsx("emp_data.xlsx", sheetIndex = 1)
print(excel_data)
View(excel_data)
getwd()
setwd("F:\\programming\\R\\R Practice\\")
names(excel_data)
dim(excel_data)
summary(excel_data)
View(excel_data)
names(excel_data)
max_salary <- max(excel_data$SALARY)
min_salary <- min(excel_data$SALARY)

details <- subset(stores,DESIGNATION=="Security Engineer")
print(details)
a<-subset(excel_data,EMP. ID == "E102")

#----------------------------------------------------------------------------------

# Group By
# The group_by function is used to group data by one or more variables.

names(test)
t1 <- group_by(test, name)
View(t1)
View(test)
or
test %>% group_by(name)





