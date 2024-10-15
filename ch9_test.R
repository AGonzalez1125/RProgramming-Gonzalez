## Chapter 9 example code
## Compressing matricies to only store non "0" values

##class "ut", compact storage of upper triangular matricies

#utility function , returns 1+...+i
sum1toi <- function(i) return(i*(i+1)/2)

# create an object of class "ut" from the full matrix inmat (0sincluded)
ut <- function(inmat) {
  n <- nrow(inmat)
  rtrn <- list() #start to build object
   class(rtrn) <- "ut"
   rtrn$mat <- vector(length=sum1toi(n))
   rtrn$ix <- sum1toi(0:(n-1)) + 1
   for (i in 1:n){
    # store column i
     ixi <- rtrn$ix[i]
     rtrn$mat[ixi: (ixi +i-1)] <- inmat[1:i, i]
   }
   return(rtrn)
}

## uncompress utmat to a full matrix
expandut <- function(utmat) {
  n <- length(utmat$ix) #number of rows and cols of matrix
  fullmat <- matrix(nrow = n,  ncol=n)
  for (j in 1:n){
    #fill jth colume
    start <- utmat$ix[j]
    fin <- start +j -1
    abovediagj < utmat$mat[start:fin] #above - diag part of col j
    fullmat[,j] <- c(abovediagj, rep(0,n-j))
  }
  return(fullmat)
}

## print matrix
print.ut <- function(utmat)
  print(expandut(utmat))


