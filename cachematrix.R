##functions that cache the inverse of a matrix

## this function creats a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

}

##this function computes the inverse of the matrix returned by makeCachMatrix above.
cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- inverse(data, ...)
  x$setinverse(inv)
  inv
}