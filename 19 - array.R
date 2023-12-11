# Array in R :
# Array are the data objects which allow us to store data in more than two dimension.

# Syntax :
# array(row,col,matrix) or array(2,3,4)
# array_name<-array(data,dim=(),dimnames())

v1<-c(1,4,5)
v2<-c(10,20,30,40,50,60)
v3<-array(c(v1,v2),dim=c(3,3,2))
print(v3)

# Naming Array :

row_name<-c("r1","r2","r3")
col_name<-c("c1","c2","c3")
matrix_name<-c("mat1","mat2")
v4<-array(c(v1,v2),dim=c(3,3,2),dimnames=list(row_name,col_name,matrix_name))
print(v4)

# Accessing Array :

v4[3,2,2]
v4[3,,2]
v4[,2,2]
v4[,,2]


# Array Operations :

v5<-c(1,4,5)
v6<-c(10,20,30,40,50,60)
v7<-array(c(v5,v6),dim=c(3,3,2))

v8<-c(5,9,2)
v9<-c(10,90,3,45,23,66)
v10<-array(c(v8,v9),dim=c(3,3,2))

v11<-v7+v10
v11

