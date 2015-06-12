//-----------------------------------------------------------------------------

#include<R.h>

void mat_mult_iter_c(double *A, double *B, double *AB, int *outer_dim1, 
                     int *outer_dim2, int *inner_dim){
  // Function to multiply two matrices
  // Args: Matrices A (double), B (double), and AB (double)
  // Returns: Matrix product AB (double)
  // Author: Jordan Schupbach
  // Maintainer: Jordan Schupbach <jordans1882@gmail.com>

  //  Initialize for loop counters
  int i, j, k;

  for(i=0; i < *outer_dim1; ++i) {
    for(j=0; j < *outer_dim2; ++j) {
      for(k=0; k < *inner_dim; ++k) {
        AB[ j + i*(*outer_dim2)] += A[i+k*(*outer_dim1)]*B[k+ j * (*inner_dim)];
      }
    }
  }
}

//-----------------------------------------------------------------------------
