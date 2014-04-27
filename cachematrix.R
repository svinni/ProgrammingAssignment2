## the following functions help in caching the inverse of a matrix and 
##retreiving it whenever the inverse of the same matrix needs to be calculated.

## makeCacheMatrix will create a list containing functions to get and set 
##the input matrix ans the inverse of the matrix


makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinv <- function(solve) i <<- solve
        getinv <- function() i
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## cacheSolve will take the input matrix and check if the inverse of this matrix
## already exists in the cache and returns the inverse either from the cache(if exists)
##or by calculation.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinv(i)
        i
}

