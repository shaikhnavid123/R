# Matrix :
# Matrix are two dimensional

# Syntax :
# matrix(data,nrow=,ncol=,byrow=,dimname=)

mat1<-matrix(c(2:13),nrow=4,byrow=TRUE)
# mat1<-matrix(c(2:15),nrow=4,byrow=TRUE) # matrix should contain values divisible nrow or ncol
mat1

mat2<-matrix(c(2,3,5,3,7,6,9),nrow=3,ncol=2,byrow=FALSE)
mat2

x<-matrix(c(5:16),nrow=4,byrow=TRUE)
x
y<-matrix(c(7:18),nrow=4,byrow=FALSE)
y

# Naming of Matrix :

row_name<-c("r1","r2","r3","r4")
col_name<-c("c1","c2","c3")
z<-matrix(c(7:18),nrow=4,byrow=TRUE,dimnames=list(row_name,col_name))
z

# Accessing Matrix :

z[4,3]
z[2,]
z[,2]

# Matrix Operation :

z[4,3]<-0
z
z[z==11]<-0
z[z>15]<-0
z

# cbind() is used to add columns

cbind(z,c(8,5,2,0))

# rbind() is used to add rows

rbind(z,c(2,3,4))

a1<-matrix(c(5:16),nrow=4,ncol=3,byrow=TRUE)
a1
a2<-matrix(c(1:12),nrow=4,ncol=3,byrow=TRUE)
a2

sum1<-a1+a2
sum1




