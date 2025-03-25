## Put comments here that give an overall description of what your
## functions do

## getter and setter function for the reverse matrix

makeCacheMatrix <- function(x = matrix()) {
  M <- NULL
  
  set <- function(y){
     x <<- y
     M <<- NULL
  }
  
  get <- function() x
  
  setInverseMatrix <- function(inverseMatrix) M <<- inverseMatrix
  getInverseMatrix <- function() M
  list(set = set, get = get,
       setInverseMatrix = setInverseMatrix,
       getInverseMatrix = getInverseMatrix)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  M <- x$getInverseMatrix()
  
  if(!is.null(M)) {
    message("getting cached data")
    return(M)
  }
  data <- x$get()
  M <- solve(data)
  x$setInverseMatrix(M)
  M
}
