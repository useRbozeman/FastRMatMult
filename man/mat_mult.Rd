\name{mat_mult}
\alias{mat_mult}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Function to multiply two matrices (iterative algorithm)
}
\description{
Contains a triple for loop to multiply two matrices implemented in R. 
}
\usage{
mat_mult(A, B)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{A}{
Matrix A
}
  \item{B}{
Matrix B
}
}
\details{
details
%%  ~~ If necessary, more details than the description above ~~
}
\value{
\item{AB}{Matrix product of A and B}
}
\references{
http://en.wikipedia.org/wiki/Matrix_multiplication_algorithm
}
\author{
Jordan Schupbach
}
\note{
R implementation
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
mat_mult_f
mat_mult_c
}
\examples{
A <- matrix(rnorm(10000), 100, 100)
B <- matrix(rnorm(10000), 100, 100)
system.time(AB <- mat_mult(A,B))
}
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
