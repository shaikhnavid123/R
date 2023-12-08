# if, else if, else statements in R :

# Example 1 :
x<-25.5
if(is.integer(x))
{
  print("x is an interger")
}else{
  print("x is not an integer")
}

# Example 2 :
y<-c(1,2,3,4,5)
if(3 %in% y){
  print("3 is in the y")
}else{
  print("3 is not in the y")
}

# Example 3 :
z<-c("hello","my name is", "elliot")
if("elliot" %in% z){
  print("elliot is in the z")
}else{
  print("elliot is not in the z")
}

# Example 4 :
marks<-56
if(marks>75){
  print("first class")
}else if(marks>65){
  print("second class")
}else if(marks>45){
  print("pass class")
}else{
  ptint("fail")
}
