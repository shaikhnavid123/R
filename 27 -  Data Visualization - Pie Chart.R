# Data Visualization

# Data visualization is an efficient technique for gaining insight about data
# through a visual medium with the help of visualization techniques,
# a human can eaily obtain information about hidden patterns in data that might be neglected.

# R Pie Charts

# Pie Chart is a representation of values in the form of slices of a circle with different colors.
# The Pie Charts are created with the help of pie() function, which takes positive numbers as vector input.

# Syntax :
# pie(X, Labels, Radius, Main, Col, Clockwise)
# Here,
# X is a vector that contains the numeric values in the pie chart.
# Labels are used to give the description to the slices.
# Main describes the title of the chart.
# Col defines the color palette.
# Clockwise is a logical value that indicates the clockwise or anti-clockwise direction in which slices are drawn.

# -------------------------------------------------------------------------------------------------------------------

# Creating data for the graph

x <- c(12,35,56,75)
labels <- c("India", "UK", "Japan", "USA")
pie(x,labels)
pie(x, labels, main="Country Pie Chart", col=rainbow(length(x)))
colors <- c("blue", "green", "red", "orange")
pie(x, labels, main="Country Pie Chart", col=colors)

# -------------------------------------------------------------------------------------------------------------------

# Slice Percentage & Chart Legend
# Syntax :
# legend(x,y=NULL,legend,fill,col,bg)
# Here,
# x and y are the coordinates to be used to position the legeng.
# legend is the text of legend.
# fill is the color to use for filling the boxes beside the legend text.
# col defines the color of line and points besides the legend text.
# bg is the backgroung colot for the legend box.

legend("topright", c("India", "UK", "Japan", "USA"), cex = 0.8, fill = colors)

# --------------------------------------------------------------------------------------------------------------------

# 3 Dimensional Pie Chart

# R provides a plotrix package whose pie3D() function is used to create an attractive 3D pie chart.
# The parameters of pie3D() function remain same as pie() function

install.packages("plotrix")
library("plotrix")

x1 <- c(20,65,15,50,45)
labels1 <- c("India", "America", "Germany", "Spain", "Canada")
pie3D(x1, labels=labels1, explode=0.2, main="Country Pie Chart", col=rainbow(length(x1)))

x2 <- c(20,65,15,50,45)
labels2 <- c("India", "America", "Germany", "Spain", "Canada")
pie_percent <- round(100*x/sum(x), 1)
pie3D(x2, main="Country Pie Chart", col = rainbow(length(x2)))
#pie3D(x2, labels=labels2, main="Country Pie Chart", col = rainbow(length(x2)))
legend("topright", c("India", "America", "Germany", "Spain", "Canada"), cex = 0.5, fill = rainbow(length(x2)))




