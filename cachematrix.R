# Coursera R Programming Assignment 2: Lexical Scoping
## This assignment requires writing two functions: "makeCacheMatrix"
## and "cacheSolve". 

## The first function, "makeCacheMatrix", creates a special "matrix" object
## that can cache its inverse.

## The four functions included are:
# * set            Sets the value of the matrix with "NewInformation".
# * get            returns the value of the matrix.
# * Inverse        sets the  value inversing the matrix
# * getInverse     returns the value of the matrix.
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(NewInformation) {
                x <- NewInformation
                m <- NULL
        }
        get <- function() {
                x
        }
        Inverse <- function(Solve) {
                m <- solve
        }
        getInverse <- function() {
                m
        }
        list(set = set,
             get = get,
             Inverse = Inverse,
             getInverse = getInverse)
} 

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve 
## should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        if
        (!is.null(m)) {
                message("Getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$Inverse(m)
        m
}