## Put comments here that give an overall description of what your
## functions do

## makes a special matrix that can cache its inverset

makeCacheMatrix <- function(x = matrix()) {
  invert<-NULL
  ## caching 
  set<-function(y){
    x<<-y
    invert<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) invert<<- solve
  getmatrix<-function() invert
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}


## Return a matrix that is the inverse of 'x'
## assumes it can always be inversed

cacheSolve <- function(x, ...) {
  
  invert<-x$getmatrix()
  if(!is.null(invert)){
    message("getting cached data")
    return(invert)
  }
  matrix<-x$get()
  invert<-solve(matrix, ...)
  x$setmatrix(invert)
  m
}
