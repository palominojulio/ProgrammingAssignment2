## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- x $ getInverse ()
  if (! is.null (inv)) {
    mensaje ("obtener datos en caché")
    volver (inv)
  }
  datos <- x $ get ()
  inv <- resolver (datos)
  x $ setInverse (inv)
  inv   
        
}



cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         inv <- NULL
  establecer <- función (y) {
    x << - y
    inv << - NULL
  }
  obtener <- función () x
  setInverse <- function (solveMatrix) inv << - solveMatrix
  getInverse <- función () inv
  lista (set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
