# Data Visualization - Bar Chart
#--------------------------------| T H E O R Y |---------------------------------------------
# A bar chart is a pictorial representation in which numerical values of variables
# are represented by length or height of lines or rectangles of equal width.
# A bar chart is used for summarizing a set of categorial data.
# In bar chart, the data is shown through rectangular bars having the length of th
# bar proportional to the value of the variable.

# Syntax :

# barplot(h,x,y,main,names.arg,col)

# S.No   Parameter   Description

#    1 	     h   A vector or matrix which contains numeric values used in the bar chart.
#    2		  xlab   A label for x-axis.
#    3		  ylab   A label for y-axis.
#    4		  main   A title of the bar chart.
#    5	  names.args   A vector of names that appear under each bar.
#    6 	   col   It is used to give colors to the bars in the graph.

# -----------------------------| P R A C T I C A L |-----------------------------------------

H1 <- c(82,46,66,23,41)
barplot(h1)

H2 <- c(12,35,54,31,41)
M2 <- c("Feb","Mar","Apr","May","Jun")
barplot(H2, names.args=M2, xlab="Month", ylab="Revenue", col="yellow", main="Revenue Bar Chart", border="red")

# Group Bar Chart & Stacked Bar Chart

months <- c("Jan", "Feb", "Mar", "Apr", "May")
regions <- c("West", "North", "South")
values <- matrix(c(21,23,33,14,95,46,67,78,39,11,22,23,94,15,16))
barplot(values, main = "Total Revenue", names.arg = months, xlab =  "Months", ylab = "Revenue", col=c("red,"blue","green"))
legend("topright", regions, cex = .6, fill = c("red,"blue","green"))