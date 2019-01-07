## the first funciton MakeCacheMatrix() set the inverse of the matrix to a global variable 
## the second function cacheSolve() get the value of the global verialbe that MakeCacheMatrix() set. 


## Declare a empty global varialbe inverse_matix. 
## 1. MakeCacheMatrix() function : 
##    The function makeCacheMatrix() will take a inversible matrix, first assign it as NULL. 
##    Then Caculate the inverse of the matrix and assign it to the global varialbe inverse_matrix
## 2. cacheSolve() function will read the global veriable inverse_matrix, if it is null, call the makeCacheMatix to assign it. 
##    if the inverse_matrix is not NULL, give a message ( "The inverse_matrix is ready. No caculation! " )




## initial the global varialbe 
inverse_matrix <- c()
inverse_matrix1 <- c()
inverse_matrix1 <- NULL

## have two matrix ready for test
A <- matrix( c(5, 1, 0,
               3,-1, 2,
               4, 0,-1), nrow=3, byrow=TRUE)

B <- matrix ( c(3, 0, 2, 2, 0, -2, 0, 1, 1), nrow=3, byrow=TRUE)

## frist funcition: read the matrix in, assign the global varialbe inverse_matrix as NULL. caculate the 
## inverse_matrix  and assign it to the global variable 

makeCacheMatrix<- function(x = matrix()){
  
  print (x)
  inverse_matrix <<- NULL
  R <- solve(x)
  inverse_matrix <<- R
  
  return (inverse_matrix)
}


## the function cacheSolve() read the global variable inverse_matrix and check if it is NULL. if is not NULLk, give a message 
## "The inverse_matrix is ready. No caculation!. if it is NULL, then call makeCacheMatrix() to caculate the inverse_matrix 

cacheSolve<- function(x = matrix()){
    
    if(is.null(inverse_matrix)){
      message ("caculating... ")
      new_inverse <- makeCacheMatrix(x)
      print (new_inverse)
      
    }
               
    else message ("The inverse_matrix is ready. No caculation! ")
  }
  
makeCacheMatrix(A)
cacheSolve(B)
 print (inverse_matrix)
 
 
