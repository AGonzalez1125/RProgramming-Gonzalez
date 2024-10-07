## Assignment: Module 5
## Programmer: Andre Gonzalez


## Create Matrices
A <- matrix(c(2,0,1,3), ncol = 2)
B <- matrix(c(5,2,4,-1), ncol=2)

## Addition
A + B

## Subtraction
A - B

## Diag function
diag(c(4,1,2,3))


## Diag 2
## Create the matrix with diag()
C <- diag(c(3,3,3,3,3))
## Fill the First row with value 1
C[1,2:5] <- 1
## Fill the First Column with value 2
C[2:5,1] <- 2
## Display
C
