## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCacheMatrix 
makeCacheMatrix <- function(x = matrix()) {
    inv_x <- NULL
    set <- function(y) {
        x <<- y
        inv_x <<- NULL
    }
    ##Declaring the function that will have our "base function"
    get <- function() x
    setinverse<- function(inverse) inv_x <<-inverse
    getinverse <- function() inv_x
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv_x <- x$getinverse()
    ##Making the code for getinverse
    if (!is.null(inv_x)) {
        message("getting cached inverse matrix")
        return(inv_x)
    } else {
        inv_x <- solve(x$get())
        ##Lets remember that function "solve()"returns the inverse o a matrix already in R
        x$setinverse(inv_x)
        return(inv_x)
    }
}
