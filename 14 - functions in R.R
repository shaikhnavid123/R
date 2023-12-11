# Functions in R :

# Syntax : 
# function_name<-function(arg1, arg2, ...){funtion body here}

# Example 1 :
func1<-function(){
  for (i in 1:5){
    print(i^2)}
  }
func1()

# Example 2 :
func2<-function(x,y,z){
  res<-x+y+z
  print(res)
}
func2(4,5,6)
# func2(x=4,y=5,z=6)

# Example 3 :
func2<-function(x=10,y=20){
  res<-x*y
  print(res)
}
func2()
func2(5,6)
