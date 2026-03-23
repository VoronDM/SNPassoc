\name{Ginv}
\alias{Ginv}
\title{Compute Generalized Inverse of Input Matrix}
\description{
Singular value decomposition (svd) is used to compute a generalized inverse of input matrix.
}
\usage{
Ginv(x, eps = 1e-06)
}
\arguments{
  \item{x}{A matrix.}
  \item{eps}{Minimum cutoff for singular values in svd of x.}
}
\value{
  A list with the following components:
  \item{Ginv}{Generalized inverse of x.}
  \item{rank}{Rank of matrix x.}
}
\details{
The svd function uses the LAPACK standard library to compute the singular values of the 
input matrix. The rank of the matrix is determined by the number of singular values that 
are at least as large as \code{max(svd)*eps}.
}
\section{References}{
Press WH, Teukolsky SA, Vetterling WT, Flannery BP. (1992). Numerical recipes in C. 
The art of scientific computing. 2nd ed. Cambridge University Press, Cambridge. page 61.

Anderson, E., et al. (1994). LAPACK User's Guide, 2nd edition, SIAM, Philadelphia.
}
\seealso{
\code{\link{svd}}
}
\note{
This function is a modified version of the original from the \code{haplo.stats} 
package (Copyright 2003 Mayo Foundation for Medical Education and Research). 
It has been included in \code{SNPassoc} to ensure continued functionality 
following the archival of \code{haplo.stats} from CRAN.
}
\author{
Original code by Daniel J. Schaid. Adapted for \code{SNPassoc} by Dolors Pelegrí-Sisó.
}
\examples{
x <- matrix(c(1, 2, 1, 2, 3, 2), ncol = 3)
save <- Ginv(x)
ginv.x <- save$Ginv
rank.x <- save$rank
}
\keyword{matrix}