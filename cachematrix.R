## Put comments here that give an overall description of what your
## functions do

## This is the function of the Cache matrix

makeCacheMatrix <- function(x = matrix()) {
  y <- NULL
  Cache <<-list(MatNormal = x, MatInv = y)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    if (identical(x, Cache$MatNormal)){
      print("returning from Cache")
      return(Cache$MatInv)
    }
  
  Cache <<- list(MatNormal = x, MatInv = solve(x))
  Cache$MatInv
}
