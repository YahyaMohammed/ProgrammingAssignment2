## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheVector <- function(x = matrix()){
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  do_invert <- function(invert) inv <<- invert
  get_invert <- function()inv
  list(set = set,get = get,do_invert = do_invert,get_invert = get_invert)
  
  
}

## Write a short comment describing this function

cacheSolve <- function(x){
  ##Return a matrix that is inverse of x
  inv <- x$get_invert()
  if(!is.null(inv)){
    message("Getting cached data")
    return(inv)
  }
  matrix_x <- x$get()
  inv <- solve(matrix_x)
  x$do_invert(inv)
  inv
  
}


