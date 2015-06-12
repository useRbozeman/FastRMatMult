\name{mat_mult_par}
\alias{mat_mult_par}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Function to multiply two matrices
}
\description{
A parallelized version of the traditional matrix multiplication.
}
\usage{
mat_mult_par(A, B)
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
Uses library parallel.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
mat_mult_f
mat_mult_c
}
\examples{
A <- matrix(rnorm(10000), 100, 100)
B <- matrix(rnorm(10000), 100, 100)
system.time(AB <- mat_mult_par(A,B))
}
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
