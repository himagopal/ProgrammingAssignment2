## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL

  set <- function(y){ 
    #assign values
    x <<- y
    inv <<- NULL
  }
  get <- function() x #get x
  setinv <- function(inverse) inv <<- inverse #store in inv
  getinv <- function() inv  #to get inverse
  list(set = set, get = get, setinv = setinv, getinv = getinv) #return as list
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         inv <- x$getinv()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  #get the matrix
  matrix1 <- x$get()
  #compute inverse and set it as 'inv'
  inv <- solve(matrix1, ...)
  x$setinv(inv)
  inv #return inv
}
