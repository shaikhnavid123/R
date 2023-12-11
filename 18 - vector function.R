# Vector Function :

# rep()

rep(c(2,3,4),time=4)
rep(c(1,4,8),each=3)
rep(c(1:4),length.out=10)

# seq()

seq(from=3.5,to=1.5,by=-.5)
seq(from=-2.7,to=1.5,length.out=5)

# any() returns TRUE if any of the value satisfy the condition

x<-1:10
any(x>5)

# all() returns TRUE if all of the values satisfy the condition
y<-1:10
all(y>5)
all(y>0)

