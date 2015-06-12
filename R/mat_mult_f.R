##------------------------------------------------------------------------------

mat_mult_f <-function(A,B){
## Function to multiply two matrices (call to Fortran)
## Args: Matrices A and B
## Returns: Matrix product AB
## Author: Jordan Schupbach
## Maintainer: Jordan Schupbach <jordans1882@gmail.com>
  
  outer_dim1 <- nrow(A)
  outer_dim2 <- ncol(B)
  inner_dim  <- ncol(A)
  AB <- matrix(0, outer_dim1, outer_dim2)

  returned_data <- .Fortran('mat_mult_it', 
                            A          = as.double(A),
                            B          = as.double(B),
                            AB         = as.double(AB),
                            outer_dim1 = as.integer(outer_dim1),
                            outer_dim2 = as.integer(outer_dim2),
                            inner_dim  = as.integer(inner_dim))
  
  AB <- matrix(returned_data$AB, outer_dim1, outer_dim2)
  return(AB)
}

##------------------------------------------------------------------------------