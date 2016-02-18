## Put comments here that give an overall description of what your
## functions do

## Takes a matrix, finds its inverse, and rounds that inverse's entries to four decimal
## places or significant digits. It hen caches that inverse to the global environment as
## "inverse," along with the x input as "inputcache," and returns the inverse.

makeCacheMatrix <- function(x = matrix()) {
    output <- round(solve(x), 4)
    
    inverseresult <<- output
    inputcache <<- x
    
    inverseresult
}


## Checks to see if an inputted matrix is a matrix equal to the matrix "inputcache."

checkequal <- function(x){
    is.matrix(x) == 1 && dim(x) == dim(inputcache) && all(x == inputcache)
}


## Checks if the input is the same as the last inputted matrix--if it is, simply
## prints the old result. If not, runs makeCacheMatrix again. Either way, returns
## the inverse.

cacheSolve <- function(x, ...) {
    if (checkequal(x) == TRUE){
        inverseresult
    }
    else {
        makeCacheMatrix(x)
        inveresresult
    }
}