# Numeric data type
x <- 3.14

# Integer data type
y <- 42

# Character data type
z <- "hello"

# Logical data type
a <- TRUE

# Complex data type
b <- 3+4i

# Raw data type
c <- charToRaw("hello")

# Keywords
if (TRUE) {
  print("This is an if statement")
} else {
  print("This is an else statement")
}

# Conditionals
x <- 5
if (x > 3) {
  print("x is greater than 3")
} else if (x < 3) {
  print("x is less than 3")
} else {
  print("x is equal to 3")
}

# Control flow
for (i in 1:10) {
  print(i)
}

while (x > 0) {
  print(x)
  x <- x - 1
}

# Loops
repeat {
  print("This loop will run forever until it is broken")
  if (x > 10) {
    break
  }
  x <- x + 1
}

# Functions
add <- function(x, y) {
  return(x + y)
}

# Classes
Person <- setRefClass("Person",
  fields = list(
    name = "character",
    age = "numeric"
  ),
  methods = list(
    greet = function() {
      print(paste("Hello, my name is", name))
    }
  )
)

# Inheritance
Student <- setRefClass("Student",
  contains = "Person",
  fields = list(
    major = "character"
  ),
  methods = list(
    study = function() {
      print(paste("I am studying", major))
    }
  )
)

# Docstrings
add <- function(x, y) {
  # This function adds two numbers together
  #
  # Args:
  #   x: A numeric value
  #   y: A numeric value
  #
  # Returns:
  #   The sum of x and y
  return(x + y)
}

# Enums
Weekdays <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
Weekend <- c("Saturday", "Sunday")
Days <- c(Weekdays, Weekend)

# Imports
library(dplyr)

# Namespaces
tbl <- tbl_df(iris)

# Objects
class(tbl)

# Decorators
format <- function(x, ...) {
  function(y) {
    x(y, ...)
  }
}

add <- function(x, y) {
  return(x + y)
}

add_formatted <- format(add, digits = 2)
add_formatted(3.14159265358979323846)

# Structures
list(a = 1, b = 2, c = 3)

# Built-ins
is.numeric(3.14)

# Error handling
divide <- function(x, y) {
  if (y == 0) {
    stop("Cannot divide by 0")
  }
  return(x / y)
}

# File operations
file <- file("example.txt", "w")
writeLines("Hello, world!", file)
close(file)

# Modules
module <- function(x) {
  message("This is a module function")
}

module()
