## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(A = matrix()) {
  IA <- NULL
  set <- function(B) {
    A <<- B
    IA <<- NULL
  }
  get <- function() A
  setinverse <- function(solve) IA <<- solve
  getinverse <- function() IA
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(A, ...) {
  IA <- A$getinverse()
  if(!is.null(IA)) {
    message("getting cached data")
    return(IA)
  }
  data <- A$get()
  IA <- solve(data, ...)
  A$setinverse(IA)
  IA
}

        ## Return a matrix that is the inverse of 'A'
