
## For this assignment, assume that the matrix supplied is always invertible.
## makeCacheMatrix use another funtions that create and stores a matrix and caches its inverse, 
## set the value of the matrix, get the value of the matrix, set the value of the inverse and 
## get the value of the inverse

  makeCacheMatrix <- function(x = matrix()) { inv <- NULL
                                              set <- function(y){
                                                                  x<<- y
                                                                  i<<- NULL}
                                              get <- function() x
                                              setInverse <- function(inverse) inv <<- inverse
                                              getInverse <- function() inv
                                              list(set = set, 
                                              get = get, 
                                              setInverse = setInverse, 
                                              getInverse = getInverse)
                                            }


## cacheSolve function computes the inverse of the matrix returned by makeCacheMatrix above. 

cacheSolve <- function(x, ...) {  inv <- x$getInverse()
                                  if(!is.null(inv)) { message("getting cached data")
                                                    return(inv)
                                                  }
                                  data <- x$get()
                                  inv <- solve(data,...)
                                  x$setInverse(inv)
                                  inv      
}

