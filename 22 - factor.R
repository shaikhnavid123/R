# Factor :

# --------------------------------| T H E O R Y |----------------------------------

# Categorical Variables :
# - A categorical or discrete variable is one that has two or more categories(values).
# - There are two types of categorical variables : Nominal and Ordinal.

# Nominal Variable :
# - A nominal variable has no intrinsic ordering to its categories.
# - For example, gender is a categorical variable having two categories (male and female) with no intrinsic ordering to the categories.

# Ordinal Variable :
# - An ordinal variable has a clear ordering.
# - For example, temperature as a variable with three orderly categories (low, medium and high).

# What is Factor in R? :
# - R factor is used to store categorical data as levels.
# - It can store both character and integer types of data.
# - These factors are created with the help of factor(), taking a vector as input.
# - Factors have 'labels' which are associated with the unique integers stored in it.
# - It contains predefined set value known as 'levels' and by default R always sort levels in alphabetical order.

# Attributes of a factor :
# - x : It is the input vector which is to be transformed into a factor.
# - levels : It is an input vector that represents a set of unique values which are taken by x.
# - labels : It is a character vector which corresponds to the number of labels.
# - exclude : It is used to specify the value which we want to be excluded.
# - ordered : It is a logical attribute which determines if the levels are ordered.
# - nmax : It is used to specify the upper bound for the maximum number of level.

# ----------------------------| P R A C T I C A L | -----------------------------

dir<-c("north","west","east","south")
is.factor(dir)
factor(dir)

factor(dir,levels = c("north","west","east","south"),labels = c("N","W","E","S"))
factor(dir,levels = c("north","west","east","south"),exclude = "north")

# gl(n,k,labels) :

v1<-gl(3,2,labels=c("elliot","edward","tyreil"))
v1

dir<-c("north","west","east","north")
data<-factor(dir)
data
data[4]
data[c(2,3)]
data[-1]
data[2]<-"east"
data

# Factor functions :

is.factor()
is.ordered()
as.factor()
as.ordered()