# How to take user input in R :

name<-readline(prompt = "Enter your name: ")
age<-readline(prompt = "Enter your age: ")

print(paste("Hello, My name is",name))
print(paste("And I'm",age,"years old."))

# difference between paste() and paste0() :

paste("hello","this","is","elliot")
paste("hello","this","is","elliot", sep = "_")
paste("hello","this","is","elliot", sep = "-")

paste0("hello","this","is","elliot")
