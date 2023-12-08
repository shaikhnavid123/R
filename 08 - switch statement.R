# Switch statement in R :

# Syntax : 
# switch(expression, case1, case2, ...)

# Based on index :
x<-switch(2,
          "elliot",
          "alderson",
          "edward",
          "tyreil"
)
print(x)

#Based on match :
y<-"20"
z<-switch(y,
          "4"="elliot",
          "15"="alderson",
          "20"="edward",
          "25"="tyreil"
)
print(z)