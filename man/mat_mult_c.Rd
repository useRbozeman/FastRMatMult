\name{mat_mult_c}
\alias{mat_mult_c}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Function to multiply two matrices (iterative algorithm)
}
\description{
An R wrapper to call in implementation of a triple for loop to multiply two matrices implemented in C. 
}
\usage{
mat_mult_c(A,B)
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
details%%  ~~ If necessary, more details than the description above ~~
}
\value{
\item{AB}{Matrix product of A and B}
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
ref
}
\author{
Jordan Schupbach
}
\note{
note
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
mat_mult
mat_mult_f
}
\examples{
A <- matrix(1:9,3,3)
B <- matrix(11:19, 3,3)
AB <- mat_mult_c(A,B)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
