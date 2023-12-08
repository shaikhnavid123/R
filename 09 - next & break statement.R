# next and break statement :

# next statement :
x<-1:4
for (val in x){
  if(val==3){
    next
  }
  print(val)
}

# break statement :
a<-1
repeat{
  print("Hello R")
  if(a>5){
    break
  }
  a<-a+1
}