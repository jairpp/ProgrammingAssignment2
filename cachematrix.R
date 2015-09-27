## Implementation of a matrix which can cache its own Inverse

## creats a list of four functions to handle a matrix and its cache inverse
makeCacheMatrix <- function(x = matrix()) {
   inverseMatrix <- NULL
   
   set<-function (y){
       x<<-y
       inverseMatrix<<-NULL;
   }
   
   get<-function (y){
     x  
   } 
       
   setInverseMatrix <- function (inverse){
       inverseMatrix<<-inverse  
   } 
   
   getInverseMatrix <- function (){
       inverseMatrix  
   } 
   
   list(set=set,
        get=get,
        setInverseMatrix=setInverseMatrix,
        getInverseMatrix=getInverseMatrix)
    
}


## solve matrix created by makeCacheMatrix function to get the inversive
## using cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inverse <- x$getInverseMatrix()
    if(! is.null(inverse)){
        inverse
    }else{
        inverse <- solve(x$get())
        x$setInverseMatrix(inverse)
        inverse
    }
}
