## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix which is the inverse of 'x'
}

## Write a short comment describing this function
## The function makeCacheMatrix creates an object which is a matrix
## and the function cacheSolve can get the inverse of the matrix
  
  makeCacheMatrix <- function(x = matrix()) {

inv<- NULL
        set<-function(y){
                 x<<-y
                 inv<<-NULL
  }
         get<-function()x
        setinverse<-function(inverse) inv<<-inverse
         getinverse<-function()inv
         list(set=set,get=get,
              setinverse=setinverse,
              getinverse=getinverse)
         }
  
  
 ## Write a short comment describing this function
 
 ## The function cacheSolve can return the inverse of the matrix which is created by the function makeCacheMatrix above.
  cacheSolve <- function(x, ...) {
          ## Return a matrix that is the inverse of 'x'
         inv<-x$getinverse()
         if(!is.null(inv)){
                 message("getting cached inverse matrix")
                 return(inv)
                 }
         else{
                 inv<-solve(x$get()}
                            x$setinverse(inv)
                            return(inv)
             }
