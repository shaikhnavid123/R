# R Boxplot
# R provides a boxplot() function to create a boxplot.
# A box plot (also known as box and whisker plot) is a type of chart often used in
# explanatory data analysis to visually show the distribution of numerical data
# and skewness through displaying the data quartiles (or percentiles) and averages.

# Box plots show the five-number summary of a set of data : including the minimum score,
# first(lower) quartile, median quartile, third(upper) quartile, and maximum score.

# Syntax :
# boxplot(x, data, notch, varwidth, names, main)

# Explanation :

# S.No. Parameter Description
# 1.    x         It is a vector or a formula.
# 2.    data      It is the data frame.
# 3.    notch     It is a logical value set as true to draw a notch.
# 4.    varwidth  It is also a logical value set as true to draw the width
# 5.    names     It is the group of labels that will be printed under each boxplot
# 6.    main      It is used to give a title to the graph.

names(mtcars)

boxplot(mtcars$hp)

boxplot(mtcars$hp,
	main = "mtcars DATA FRAME",
	xlab = "X",
	ylab = "Y",
	col = "orange",
	border = "brown",
	horizontal = TRUE,
	notch = TRUE
)

# Boxplot form formula
# The function boxplot() can also take in formulas of the form y~x 
# where, y is a numeric vector which is grouped according to the value of x.

boxplot(mpg ~ cyl, data = mtcars, xlab = "Quantity of Cylinders",
	ylab = "Miles Per Gallon",
	main = "R Boxplot Example", 
	col = "orange", 
	border = "brown"
)

# Boxplot using notch
# In R, we can draw a boxplot using a notch.
# It helps us to find out how the medians of different data groups match with each other.

boxplot(mpg ~ cyl, data = mtcars,
	xlab = "Quantity of Cylinders",
	ylab = "Miles Per Gallon",
	main = "Boxplot Example",
	notch = TRUE,
	varwidth = TRUE,
	col = c("green", "yellow", "red"),
	names = c("High", "Medium", "Low")
)
