# Data Manipulation with dplyr package

test<-read.csv("pcg64-testset-2.csv")
View(test)


install.packages("dplyr")
library(dplyr)

# Importing dplyr verbs to remember

# select()    select Columns
# filter()    filter rows
# arrange()   re-order or arrange rows
# mutate()    create new columns
# summarise() summarise values
# group_by()  allows for group operatiions in the "split-apply-combine" concent

name(test)
sleepData <- select(test, name, sleep_total)
head(sleepData)

# To select all the columns except a specific column,
# use the "-" (subtraction) operator (also known as negative indexing)


test1 <- select(test, -name)
head(select(test, -name))

# To select a range of columns that by name, use the ":" (colon) operator

head(select(test, name:order))

# To select all columns that start with the character string "sl"
# use the function starts_with()

head(select(test, starts_with("sl")))

# Some additional to select columns based on a specific criteria :
# ends_with() = select columns that end with a character stringsee
# contains() = select columns that contain a character string
# matches() = select columns that match a regular expression
# one_of() = select columns names that are from a group of names

filter(test, sleep_total >= 16)

# Filter the rows for mammals that sleep a total of more than 16 hours and have a
# body weight of greater that 1 kilogram.

filter(test, sleep_total >= 16, bodywt >= 1)

# Filter the rows for mammals in the Perissodactyla an Primates taxonamic order

filter(test, order %in% c("Perissodactyla", "Primates"))
install.packages("magrittr")
library("magrittr")
test %>% select(name, sleep_total) %>% head

# Pipe operator : %>% 
# dplyr imports this opearator from another package (magrittr)
# This operator allows you to pipe the output from one function to the input of another function.
# Instead of nesting functions (reading from the inside to the outside), the idea of 
# piping is to read the functions from left to right.

head(select(test, name, sleep_total))

test %>% select(name, sleep_total) %>% head

test %>% head %>% select(name, sleep_total) 
#head %>% select(name, sleep_total) %>% test # inappropriate way

# Arrange or re-order rows using arrange()
# To arrange (or re-order) rows by a particular columns such as the taxonomic order,,
# list the name of the column you want to arrange the rows by

test %>% arrange(name) %>% head

# Now, we will select three columnns from msleep, arrange the rows by the taxonomic order
# and then arrange the rows by sleep_total.
# Finally show the head of the final data frame

test %>%
	select(name, order, sleep_total) %>%
	arrange(order, sleep_total) %>%
	head

# same as above, except here we filter the rows for "mammals" that sleep for 16 or more hours
# instead of showing the head of the final data frame

test %>% 
	select(name, order, sleep_total) %>%
	arrange(order, sleep_total) %>%
	filter(sleep_total >= 16)

# Create new columns using mutate()
# The mutate() function will add new columns to the data frame.
# Create a new column called rem_proportion which is the ratio of re sleep to total amount of sleep.


