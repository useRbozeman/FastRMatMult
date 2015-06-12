##------------------------------------------------------------------------------

mat_mult <-
function(A,B){
  ## Function to multiply two matrices (iterative algorithm)
  ## Args: Matrices A and B
  ## Returns: Matrix product AB
  ## Author: Jordan Schupbach
  ## Maintainer: Jordan Schupbach <jordans1882@gmail.com>
  
  outer_dim1 <- nrow(A)
  outer_dim2 <- ncol(B)
  inner_dim  <- ncol(A)
  AB <- matrix(NA, outer_dim1, outer_dim2)
  
  for(i in 1 : outer_dim1){
    for(j in 1 : outer_dim2){
      sum <- 0
      for(k in 1 : inner_dim){
        sum <- sum + A[i,k]*B[k,j]
      }
      AB[i,j] <- sum
    }
  }
  return(AB)
}

##------------------------------------------------------------------------------