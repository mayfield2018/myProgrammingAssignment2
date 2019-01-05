## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
inverse_matrix <- c()
makeCacheMatrix <- function(x = matrix()) {
  inverse_matrix <<- NULL
  print (inverse_matrix)
  inverse_matrix <- solve(x)
  print (inverse_matrix)
}

A <- matrix( c(5, 1, 0,
               3,-1, 2,
               4, 0,-1), nrow=3, byrow=TRUE)

print (A)
makeCacheMatrix (A)


## initial the inverse_matrix as null. 
## get the inverse_matrix as a global variable so that other function can use it
## return the inverse_matrix

cacheSolve <- function(x, ...) {
  print (inverse_matrix)
  ## Return a matrix that is the inverse of 'x'
}

cacheSolve (A)
## check if the inverse_matrix is availiable 
## get it if it is in a varialbe
## caculate it if it is not availialbe 