# Data Structures :
# Data Structure is a way to store value in a memory.
# Because data is not stored well in memory we cannot perform any operation on it and can't retrieve efficient data.
# There five types of data structure in R programming language :
# 1. vector
# 2. matrix
# 3. array
# 4. list
# 5. data frames

# VECTOR :
# 1. atomic vector
# 2. list

# 1. atomic vector :
# Vector is a basic data structure in R programming language that plays important role.
# It is an sequence of element which share the same data type. 
# Vector supports all data types in R.
# But a single vector must contain all components of same data type only.
# Elements of vectors are known as components.

# Methods to create vector :

# Method 1 : We can represent or create vector with 'c()'. And it returns one dimensional array.
# Method 2 : We can create a vector using colon operator ':' by specfying the range.
# Method 3 : We can use sequence function 'seq()' to create vector. It works like colon operator, you need to specify range separated by comma ',', and if require then 'lenth.out=' and 'by='.

# Types of Vector (atomic vector):

# 1. Numeric Vector 
# 2. Integer Vector
# 3. Character Vector
# 4. Logical Vector

# How to create a vector :

# Method 1 :
a1<-c(3,4,5,1,7,6)
a
length(a)

# Method 2 :
a2<-3:7
a2

# Method 3 :
a3<-seq(1,5)
a3
a4<-seq(1,5,by=4)
a4
a5<-seq(1,6,lenght.out=5)
a5

# Numeric Vector :

numv<-c(12.3,52.6,23.45,89.145)
numv
class(numv)

#intv<-c(15L,13L,5L,45L)
intv<-as.integer(numv)
intv
class(intv)

# Character Vector :

charv<-c(1,5,8,7,9)
charv
charv<-as.character(charv)
class(charv)

charv2<-c("elliot","alderson","edward","tyreil")
charv2
class(charv2)

# Accessing vector :
# accessing string by indexing '[]'
# indexing starts with 1 and not 0 in R

a6<-seq(1,3,length.out=5)
a6
a6[3]
a6[2:4]

charv3<-c("allen"=12,"ben"=30,"steve"=35)
charv3
charv3["ben"]
#charv3[35] # incorrect method
#charv3["35"] # incorrect method

a7<-c(1,2,3,4,5)
a7[c(TRUE,FALSE,FALSE,TRUE,FALSE)]

# Vector operation :

a8<-c(1,2,3,4,5,6)
a9<-c("walter","jesse","saul","hank","mike")
a9[1:3]
a9[-4]
a9[c(1,3,2,1,5,4)]
a10<-c(a8,a9)
a10

a11<-c(2,4,5,1,3,4)
a8+a11
a8-a11
a8*a11
a8/a11

# Naming vector :

z<-c("professor","berlin","tokyo","rio","nairobi")
z
names(z)=c("sergio","andres","silene","anibal","agata")
z["andres"]
z[4]
z[2:5]