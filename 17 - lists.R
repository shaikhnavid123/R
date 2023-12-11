# List :
# List is a part of vector.
# List is used to store elements of different data types in same variable.
# To create a list we should use 'list()'.
# List can also contain vector and also sub list inside a list.

vec1<-c(7,8,9,6,5)
char_vec<-c("kevin","gary","jonathan","adrian")
logic_vec<-c(TRUE,FALSE,FALSE,TRUE)
list1<-list(vec1,char_vec,logic_vec)
list1

list2<-list("rami","christofer","ella",c(1,2,3,4),TRUE,FALSE,52L,5.3)
list2

# Naming of list :

list3<-list(c("elliot","edward","tyreil"),c(5,7,12),c("B.Tech","MSc CS.","BCA"))
list3
names(list3)<-c("Professors","Experience","Education")
list3

# Accessing list :

list3[1]
list3["Experience"]
list3$Experience

# unlist() converts the list into vector

list4<-list(5:9)
list4
class(list4)
list5<-list(14:18)
list5
v1<-unlist(list4)
v1
v2<-unlist(list5)
v2
res<-v1+v2
res
class(v1)

merge1<-list(list4,list5)
merge1


