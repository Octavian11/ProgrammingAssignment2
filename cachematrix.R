## This function creates a special "Matrix" which is really a list of functions to
## set the value of the matrix
## get the value of the matrix
## set the value of the Inverse of the Matrix
## get the value of the Inverse of the matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
     n <- matrix()
     set <- function(m = matrix()){
         x <<- m
         n <<- matrix()
     }
     get <- function() x
     setInverse <- function(y) n <<- y
     getInverse <- function() n
     list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x = matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- matrix()
    i <- x$getInverse()
    #print(i)
    if (is.na(i)){
        
        data <- matrix()
        data <- x$get()
        i <- solve(data)
        x$setInverse(i)
        i
    }
    else {
    print("Getting cached data")
    return(i)
    }
}
