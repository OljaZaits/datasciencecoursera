#Assignment1

makeCacheMatrix <- function(x = matrix()) {           # the matrix to find its inverse
  inverse <- NULL                                     # here we store the inversed matrix
  set <- function(y) {
    x <<- y                                           # matrix in parent environment
    inverse <<- NULL                                  # reset inv to NULL in case of a new matrix
  }
  get <- function() x                                 # returns value of the matrix argument
  setinv <- function(inv) inverse <<- inv
  getinv <- function() inverse
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}
#Assignment 2

cacheSolve <- function(x, ...) {                    # we get inverse of the matrix x
  
  inverse <- x$getinv()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  matrix <- x$get()
  inverse <- solve(matrix)
  x$setinv(inverse)
  inverse
  
} 
