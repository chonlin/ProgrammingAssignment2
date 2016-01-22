## X is a matrix contain a list of functions.
## 1.set a matrix 2.get a matrix 3. set a inverse matrix (setsolve) 4.get a inverse matrix(getsolve)
## This function will be used in the input of cacheSolve function.

makeCacheMatrix <- function(x = matrix()) {
s<-NULL
set<-function(y){
x<<-y
s<<-NULL
}
get<-function()x
setsolve<-function(solve) s<<-solve
getsolve<-function()s
list(set=set,get=get,setslove=setslove,getslove=getsolve)
}

## If inverse value have been caculated, then get the value from the cache.

cacheSolve <- function(x, ...) {
        s<-x$getsolve()
        if(!is.null(s){
        message("getting cached data")
        return(s)
        }
## If not, caluculate the inverse value and set it into the cache using the funtion setsolve.
        data<-x$get()
        s<-solve(data,...)
        x$setsolve(s)
        return(s)
        s
}
