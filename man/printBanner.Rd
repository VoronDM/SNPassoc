\name{printBanner}
\alias{printBanner}
\title{
  Print a nice banner
}
\description{
 Print a centered banner that carries to multiple lines
}
\usage{
printBanner(str, banner.width=options()$width, char.perline=.75*banner.width, border="=")
}
\arguments{
\item{str}{
character string - a title within the banner
}
\item{banner.width }{
width of banner, the default is set to fit current options
}
\item{char.perline }{
number of characters per line for the title, the default is 75\% of 
the banner.width parameter 
}
\item{border}{
type of character for the border
}
}
\value{
  nothing is returned
}
\details{
This function prints a nice banner in both R and S-PLUS
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
\seealso{
options
}
\examples{
printBanner("This is a pretty banner", banner.width=40, char.perline=30)

# the output looks like this:
# ========================================
#         This is a pretty banner
# ========================================
}
% docclass is function
% Converted by Sd2Rd version 43267.
