## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# The first function, makeCacheMatrix creates a list containing a function to
# set the value of the matrix
# get the value of the matrix
# set the inversed matrix
# get the inversed matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinv <- function(solve) i<<- solve
  getinv <- function() i
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function
# The second function, cacheSolve does the following:
# 1. check if the inversed matrix has already been calculated
# 2. if so, it gets the inversed matrix from the cache and skip the calculation
# 3. otherwise, it calculates the inversed matrix with solve() and sets the matrix in the cache

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getinv()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data)
  x$setinv(i)
  i 
}
