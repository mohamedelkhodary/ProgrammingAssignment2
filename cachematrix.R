## Put comments here that give an overall description of what your
## functions do

## calculating and caching the inverse of a matrix 

## Write a short comment describing this function

## getting the matrix
makeCacheMatrix <- function(x = matrix()) {
  ## initially assigning the inverse to NULL
  s <- NULL
  
  ## to set the value of the matrix
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  
  ## to get the value of the matrix
  get <- function() x
  
  ## to set the value of the inverse
  setsolve <- function(solve) s <<- solve
  
  ## to get the value of the inverse
  getsolve <- function() s
  
  ## our container ^_^
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

## Write a short comment describing this function

## getting the container
cacheSolve <- function(x, ...) {
  
  ## checking the inverse existance
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  
  ## calculating and caching the inverse
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}