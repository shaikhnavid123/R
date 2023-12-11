# repeat loop in R :

y<-c("hello","how","are","you")
x<-2
repeat{
  print(y)
  x<-x+1
  if(x>5){
    break
  }
}