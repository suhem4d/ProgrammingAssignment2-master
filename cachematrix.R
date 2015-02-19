## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  Inverse<- NULL
  set <- function(y){
    x <<- y
    Inverse<<- NULL
  }
  get <- function() x
  setInverse <- function(solve) Inverse<<- solve
  getInverse <- function()Inverse
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  s<-x$getInverse()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <-x$get()
  s<-solve(data)
  x$setInverse(s)
  s
}
