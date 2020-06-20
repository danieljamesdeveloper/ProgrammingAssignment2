makeCacheMatrix <- function(x = matrix()) {
  
  b <- NULL
  
  # Set the value of the matrix
  set <- function(y) {
    x <<- y
    b <<- NULL
  }
  
  # Get the value of the matrix
  get <- function() x
  
  # Set the value of the INVERSE of the matrix
  setinverse <- function(inverse) b <<- inverse
  
  # Get the value of teh IVERSE of the matrix
  getinverse <- function() b
  
  # Cache as a list
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
} 