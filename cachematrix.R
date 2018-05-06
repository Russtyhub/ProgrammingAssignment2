## It is two functions (ie makeCaheMatrix and cachesolve) that will together
## cache the inverse of a matrix.

##  makeCacheMatrix() will create a certain matrix object that can be used to 
## cache the inverse of said matrix. 

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
set <- function(y){
  x <<- y
  inverse <<- NULL
}
get <- function() x
set_inverse <- function(solveMatrix) inverse <<- solveMatrix
get_inverse <- function() inverse
list(set=set, get=get, set_inverse=set_inverse, get_inverse=get_inverse)

}


## Takes the matrix created above and uses the solve function to produce
## the inverse of that matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inverse <- x$get_inverse()
if(!is.null(inverse)) {
  return(inverse)
}
my_data <- x$get()
inverse <- solve(my_data)
x$setInverse(inverse)
inverse
  }

