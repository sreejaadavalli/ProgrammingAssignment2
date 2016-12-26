## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) 
{
        m <- NULL
        set <- function(y)
                ## as mentioned <<- is used to assign is used to assign 
                ##a value in a enviroment different from current environment
                x <<-y 
                m<<-NULL

}
get <- function(x)
        ##setting the matrix
        setinverse <- function(inverse) m <<- inverse
                ##getting the matrix
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## @x: output of makeCacheMatrix

cacheSolve <- function(x, ...) {
         {
                 ##returns the inverse of the original matrix input to makeCacheMatrix
        m <- x$getinverse()
                 ##checks if inverse has been already calculated
        if(!is.null(m)) {
                ##if so gets it from cache and skips the computation.
                message("getting cached data")
                return(m)
        }
        ## otherwise calculates the inverse and returns a matrix that is the inverse of 'x'
                 data <- x$get()
                 m <- solve(data)
                 ##setting the value of inverse to cache using setinverse function
                 x$setinverse(m) 
                 m
}
