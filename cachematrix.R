## Put comments here that give an overall description of what your
## functions do
##The following to functions create a special object that stores an matrix and 
## saves the inverse of the matrix, this is done because the computation of the inverse 
## is expencive and saving the result may save computation 

## Write a short comment describing this function
##This function creates an object containing a matrix and a variabel for the inverse
## it gets an matrix as argument 

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(argument){
    x <<- argument
    inv <<- NULL
    
  }
  get <- function(){
    x
  }
  setInverse <- function(argument){
    inv <<- argument
  }
  getInverse <- function(){
    inv
  }
  list(set=set,
       get=get,
       setInverse=setInverse,
       getInverse=getInverse
       )
  

}


## Write a short comment describing this function
##This function solves the inverse of the matrix, if it is already solved it gets the solution from the cash
##if not then it computes it with the predefined solve function 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if (!is.null(inv)) {
    message("Inverse was allready computed")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
