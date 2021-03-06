## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    
    set <- function(y){
        mat <<- y
        inv <<- NULL
    }
    get <- function() mat
    setinv <- function(inverse) inv <<- inverse
    getinv <- function() inv
    list(set=set,
         get=get,
         setinv=setinv,
         getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    inv <- mat$getinv()
    
    if(!is.na(inv)) {
        message("getting cached inverse")
        return (inv)
    }
    data<- mat$get()
    inv <- solve(data, ...)
    x$setinv(inv)
    inv
        ## Return a matrix that is the inverse of 'x'
}
