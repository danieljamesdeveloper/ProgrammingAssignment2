cacheSolve <- function(x, ...) {
  
    # Get the inverse of the argument
    b <- x$getinverse()
    
    # Check to see if it is cached, returnif it is 
    if (!is.null(b)) {
      return(b)
    }
    
    # Else - pull in the matrix
    matrixdata <- x$get()
    
    # Calculate using the solve() function
    b <- solve(matrixdata, ...)
    
    # Set it 
    x$setinverse(b)
             
    # Return it    
    b
} 