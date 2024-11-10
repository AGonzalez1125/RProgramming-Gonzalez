## Module 11 Assignment
## Programmer: Andre Gonzalez


## Original Function Given to debug.
##tukey_multiple <- function(x) {
##  outliers <- array(TRUE,dim=dim(x))
##  for (j in 1:ncol(x))
##  {
##    outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
##}
##  outlier.vec <- vector(length=nrow(x))
##  for (i in 1:nrow(x))
##  { outlier.vec[i] <- all(outliers[i,]) } return(outlier.vec) }

## traceback(tukey_multiple)
## I use traceback function to find that code within the loop was not working.


##debug(tukey_multiple)
## Initial issues with the debug function was that due to the errors the
## Function was not being created.

## In this environment I have previously used the variable x, so I initialize it
## with the value 0
x <- 0

## First Error was that tukey.outlier is a function that is not initialized.
## Created tukey.outlier function to be called within the main function.
tukey.outlier <- function(x) {
  ## I am assuming that this will help calculate outliers, to do so I will use
  ## quantile functions
  ## Want to set variables for the bottom 25% and the top 25%
  quarter1 <- quantile(x, .25)
  quarter3 <- quantile(x, .75)
  inRange  <- quarter3 - quarter1
  lbound   <- quarter1 - 1.5 * inRange
  rbound   <- quarter3 + 1.5 * inRange
  return(x< lbound | x > rbound)

}

## Declaration of fixed function
tukey_multiple <- function(x) {
  ## First Error was that tukey.outlier is a function that is not initialized.
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  {
    ## Also had to change the && to &
    outliers[,j] <- outliers[,j] & tukey.outlier(x[,j])

  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x))
  {
    outlier.vec[i] <- all(outliers[i,])
  }
  return(outlier.vec)
}

## Need to create a matrix of random numbers.
set.seed(24)
randMatrix <- matrix(rnorm(25),nrow = 5, ncol = 5)
randMatrix

tukey_multiple(randMatrix)

##debug(tukey_multiple)

