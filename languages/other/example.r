# This is an R comment

a = 2 + 3 # Addition, return sum
b = 9 * 10 # R is like a Graphing Calculator but with more stuff. This returns the product
c = 5^2 # Square (multiply by self twice)
d <- 8 %% 2 # Returns remainder of these (if called)
e <- 10 / 5 # Returns quotient (if called)
print(paste("c is:", c)) # Basic printing method. Use paste() with multiple arguments
a # Print out in console view
cat("a is:", a) # Human like print

#

y = 5 # Classic assignment
x <- "String" # R assignment
class(y) # Determines the data type of each, should return Integer
class(x) # This returns Character

#

v <- c(1, 2, 3, 4) # This is an R vector, a data structure
v * 2 # Multiply each value by 2
print(paste("v is:", v))

v[v > 2] # Sort by specified numeric value
cat(v[v > 4]) # Print out the vector using cat()

v # Simply typing (in console view) also prints a variable

#



