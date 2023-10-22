# functions in R: (arugument is within the paraentheses)
sqrt(9)
3^2
# Print function in Base R
print ("data Science is cool")

# want help
? print
help(print)

# package: collection of related functions
# psych package for social sciences/human data e.g. cronbach's alpha

install.packages("lessR")
library(lessR)
# must load package each time with library (instal every so often for updated version

# variable assignment
x <- 3
print(x)
x = 2
print(x)

y <- "Hello World"
print(y)

# Types of Data (types of variables)

class(x)
class(y)
# change class of x from numeric to integer
x <- 2L

class(x)

# Date
w <- "2019-01-05"
class(w)
# change w to Date
w <- as.Date(w)
class(w)


# logical data types
z <- TRUE 
class(z)
str(z)
 # str is "structure" and can be applied to an entire dataset to discover what the column variables are

# vector vs. list in R
# variable is a vector (same type of values)
v <- c(1, 2, 3, 4, 5)
print(v)
u <- c("Yes", "No", "Yes", "No")
print(u)

t <- list(3L, "Yes", TRUE, 99)
print(t)
