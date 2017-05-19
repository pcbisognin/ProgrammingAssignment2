## Put comments here that give an overall description of what your
## functions do

## This first function creates a special matrix, containig the values of the matrix 
## and the values of its inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
get <- function() x
setInverse <- function(solve) i <<- solve
getInverse <- function() i
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## First this function will take the value of i, if i is not null that mean that the inverse has
## already been calculated, so it will return the massage saying that the answer will be get 
## from the cache. If i is null then the function will take the matrix x and then calculate 
## the inverse, because if i is null that means that the inverse has not been previously calculated.

cacheSolve <- function(x, ...) {
  i <- x$getInverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data,...)
  x$setInverse(i)
  i
       
}
