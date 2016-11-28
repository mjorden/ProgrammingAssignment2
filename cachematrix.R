## This is the R script for Programming Assignment 2 in R Programming on Coursera
## Matthew Jorden

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  setmatrix <- function(y) {
    x <<- y
    m <<- NULL
  }
  getmatrix <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <= function() m
  list(setmatrix = setmatrix, getmatrix = getmatrix,
       setinverse = setinverse,
       getinverse = getinverse
       )

}


## Checke for matrix, checks for cached inverse, otherwise creates and returns new inverse data

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("reading cache")
    return(m)
  }
  data <- x$getmatrix()
  m <- solve(x)
  x$setinverse(m)
  m
}
