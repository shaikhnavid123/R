# Converting Data Types in R : Type conversion functions

# Numeric type :

num1<-as.numeric(26L) # Integer to numeic
num1
num2<-as.numeric(25-46i) # Complex to numeric
num2
num3<-as.numeric(TRUE) # Logical to numeric
num3
num4<-as.numeric("abcds") # Character to numeric
num4
num5<-as.numeric("123456") # Character to numeric
num5

# Integer Type :

int1<-as.integer(23.465)
int1
int2<-as.integer(46-84i)
int2
int3<-as.integer(TRUE)
int3
int4<-as.integer("123abc")
int4
int5<-as.integer("123")
int5

# Complex Type :

comp1<-as.complex(56.454)
comp1
comp2<-as.complex(45L)
comp2
comp3<-as.complex(FALSE)
comp3
comp4<-as.complex("123abc")
comp4
comp5<-as.complex("123")
comp5

# Logical Type :

log1<-as.logical(123)
log1
log2<-as.logical(0)
log2
log3<-as.logical(-45.25)
log3
log4<-as.logical("123")
log4
log5<-as.logical(12L)
log5
log6<-as.logical(42+4i)
log6

# Character Type :

char1<-as.character(12.46)
char1
char2<-as.character(15L)
char2
char3<-as.character(45+12i)
char3
char4<-as.character(TRUE)
char4
