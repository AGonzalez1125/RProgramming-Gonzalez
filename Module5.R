## Assignment: Module 5
## Programmer: Andre Gonzalez



## Create Sample Matrices to perform math

A <- matrix(1 : 100, nrow = 10 , ncol = 10)
B <- matrix(1 : 1000, nrow = 10)


## Creating the inverse of the matrix
a <- solve(A)
b <- solve(B)

## This creates errors as the A matrix is linearly dependant due to the sequence and B matrix is not a square matrix so it cannot be inverted
Aa <- matrix(runif(100), nrow = 10)
Aa
## Invert and display
aa <- solve(Aa)
aa
