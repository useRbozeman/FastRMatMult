##------------------------------------------------------------------------------

mat_mult_c <-function(A,B){
  ## Function to multiply two matrices (call to C)
  ## Args: Matrices A and B
  ## Returns: Matrix product AB
  ## Author: Jordan Schupbach
  ## Maintainer: Jordan Schupbach <jordans1882@gmail.com>
  
  outer_dim1 <- nrow(A)
  outer_dim2 <- ncol(B)
  inner_dim  <- ncol(A)
  
  returned_data <- .C('mat_mult_iter_c', 
                            A          = as.double(A),
                            B          = as.double(B),
                            AB         = double(outer_dim1*outer_dim2),
                            outer_dim1 = as.integer(outer_dim1),
                            outer_dim2 = as.integer(outer_dim2),
                            inner_dim  = as.integer(inner_dim))
  
  AB <- matrix(returned_data$AB, outer_dim1, outer_dim2, byrow = TRUE)
  return(AB)
}

##------------------------------------------------------------------------------
