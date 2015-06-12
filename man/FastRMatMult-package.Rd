\name{FastRMatMult-package}
\alias{FastRMatMult-package}
\alias{FastRMatMult}
\docType{package}
\title{
A package exploring various implementations of matrix multiplication
}
\description{
This package is intended as a tutorial to improving the performance of your code in R through the example of matrix multiplication. Examples are given for implementation in R, C, and Fortran. Other algorithms explored include Strassen's algorithm. Byte complilation is also explored through the Compiler. Last, parallel computing is explored through the parallel package.
}
\details{
\tabular{ll}{
Package: \tab FastRMatMult\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-05-27\cr
License: \tab GPL\cr
}

}
\author{
Jordan Schupbach

Maintainer: Jordan Schupbach <jordans1882@gmail.com>
}
\references{
reference section
}

\keyword{ package }
\seealso{
 Optional links to other man pages, e.g. 
}
\examples{
A <- matrix(rnorm(10000), 100, 100)
B <- matrix(rnorm(10000), 100, 100)
system.time(AB <- mat_mult(A,B))
}
