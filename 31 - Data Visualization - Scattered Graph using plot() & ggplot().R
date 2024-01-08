# R Scatterplots
# ---------------------------| T H E O R Y |-------------------------------------------------------------------------------

# The scatter plots are used to compare variables.
# A comparision between variables is required when we need to define how much one variable is affected by another variable.
# In a scatterplot, the data is represented as a collection of points.
# Each point on the scatterplot defines the values of the two variables.
# One variable is selected for the vertical axis and other for the horizontal axis.

# In R, there are two ways for creating scatterplot,
# i.e., using plot() function and using the ggplot2 packages functions.

# There is the following syntax for creating scatterplot in R :
# plot(x, y, main, xlab, ylab, xlim, ylim, axes)

# S.No. Parameter Description
# 1.    x         It is the dataset whose values are the horizontal coordinates.
# 2.    y         It is the dataset whose values are the vertical coordinates.
# 3.    main      It is the title of the graph.
# 4.    xlab      It is the label on the horizontal axis.
# 5.    ylab      It is the label on the vertical axis.
# 6.    xlim      It is the limits of the x values, which is used for plotting.
# 7.    ylim      It is the limits of the y values, which is used for plotting.
# 8.    axes      It indicates whether both axes should be drawn on the plot.

# ---------------------------| P R A C T I C A L |-------------------------------------------------------------------------

View(mtcars)
dim(mtcars)
names(mtcars)

# Fetching two columns from mtcars

data <- mtcars[,c('wt','mpg')]
data

# Plotting thw chart for cars with weight between 2.5 to 5 and milage between 15 and 30.

plot(x = data$wt, y = data$mpg, xlab = "weight", ylab = "Milage",
	xlim = c(2.5, 5), ylim = c(15, 30),
	main = "Weight v/s Milage")

# Scatterplot using ggplot2

# In R, there is another way for creating scatterplot
# i.e., with the help of ggplot2 package.

# The ggplot2 package provides ggplot() and geom_point() function for creating a scatterplot.
# The ggplot() function takes a series of the input item.
# The first parameter is an input vector, and the second is the aes() function in which we add the x-axis and y-axis.

# Installing and Loading ggplot2 package

install.package("ggplot2")
library("ggplot2")

# Plotting the chart using ggplot() anf geom_point() functions 

ggplot(mtcars, aes(x = drat, y = mpg)) + geom_point()

# The aes() function inside the geom_point() function controls the color of the group.

ggplot(mtcars, aes(x = drat, y = mpg)) + geom_point(aes(color=factor(gear)))

names(mtcars)

