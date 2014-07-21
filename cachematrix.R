# Computation of the inverse of a matrix can be an expensive operation when
# size of the inverse of the matrix is large. And the time spent in the
# computation is lost when we successively ask for the inverse of the same matrix.
# cacheMatrix is a new type of object that provides a solution to this problem.
# cacheMatrix wraps the traditional R's' matrix object in such a way that
# when the inverse of the matrix is requested and computed, the result is stored
# internally so that when the inverseis later requested, it is available at once without any further computations
# Accessor functions are provided to get the original matrix and its inverse.

# Build a cacheMatrix wrapping the provided matrix
#
# Args:
#   x: the R matrix object to be wrapped with the inverse cache feature
# 
# Returns:
#   The cacheMatrix object
# 
# Example:
#
# cacheMatrix object m1 is created wrapping the matrix(1:4, 2, 2) R matrix
# m1 <- makeCacheMatrix(matrix(1:4, 2, 2)) 
# the inverse is computed and cached
# cacheSolve(m1)
# the inverse is already computed and simply returned
# cacheSolve(m1)
#
#
# Example:
# An empty cacheMatrix object is created
# m2 <- makeCacheMatrix()
# an R matrix is set
# m2$set(matrix(1:4, 2, 2))
# the inverse is computed and cached
# cacheSolve(m2)
# the inverse is already computed and simply returned
# cacheSolve(m2)
# 

makeCacheMatrix <- function(x = matrix()) {
  
}

# Returns the inverse of a cacheMatrix object
#
# cacheSolve computes the inverse of the provided cacheMatrix only once,
# upon the first call. Successive calls of cacheSolve on the same cacheMatrix
# return at once the stored inverse, without repeating the computation.
# This way is is computationally efficient
# Internally the inverse is computed by R's solve() function
#
# Args:
#   x: the cacheMatrix to return the inverse
#   ...: further arguments passed to solve.
#
# Returns:
#   The inverse of the provided cacheMatrix, caching it for further calls
#

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
}
