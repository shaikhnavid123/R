# Data Types in R

# logical, numeric, integer, complex, character, raw

# numeric = 12, 3.14,-54, -43.54
# integer = 36L
# complex = 5+2i
# logical = TRUE, FALSE
# character = 'a',"hello R","FALSE",'23.654',"hello R 56.5846@#"

num <- 10
class(num)
typeof(num)

intl <- 15
class(intl)
intl<-as.integer(intl)
class(intl)

int2 <- 15L
class(int2)
typeof(int2)

complex_num <- 10+5i
class(complex_num)

logi <- TRUE
class(logi)

char <- "elliot"
class(char)
