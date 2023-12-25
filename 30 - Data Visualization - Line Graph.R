# Data Visualization - Line Graphs

# ---------------------------------|  T H E O R Y |------------------------------

# Line Graph, there are points connecting the data to show the continuous changes.
# The lines in a line graph can move up and down based on the data.
# R provides plot() function.

# Syntax :
# plot(v, type, col, xlab, ylab)

# S.No. Parameter  Description
# 1.    v          It is a vector which contains the numeric values.
# 2.    type       This parameter takes the values ?l? to draw only the lines or ?p? to draw only
# 3.    xlab       It is the label for the x-axis.
# 4.    ylab       It is the label for the y-axis.
# 5.    main       It is the title of the chart.
# 6.    col        It is used to give the color for both the points and lines.


# -------------------- ---------| P R A C T I C A L |----------------------------

v <- (18,22,27,7,31,52)

plot(v)

plot(v, type = "o")
plot(v, type = "p")
plot(v, type = "l")

plot(v, type = "o", col = "blue", xlab = "Month", ylab = "Temperature")

# Line Charts containing multiple lines 

a <- c(13,22,28,7,31)
b <- c(11,13,32,6,35)
c <- c(12,22,15,34,35)

plot(a, type = "o", col = "green", xlab = "Month", ylab = "Temperature")
lines(b, type = "o", col = "red")
lines(c, type = "o", col = "blue")

