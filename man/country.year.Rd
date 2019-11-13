\name{country.year}
\alias{country.year}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Function to create country-year dataframe.
}
\description{
country.year returns a dataframe of all country-year observations (stem-and-leaf style) in a dataset.
}
\usage{
country.year(x, id, year, dup,omit=TRUE, ranges=FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{Dataset}
   \item{id}{Country variable}
    \item{year}{Year variable}
     \item{filename}{Name to write output csv file to}
     \item{dup.omit}{Whether or not you want to omit duplicate years. Defaults to TRUE. Must be true to use ranges option}
     \item{ranges}{Whether or not you want subsequent years to be grouped into a range, seperated by a hypthen. Defaults to False. Cannont be true if dup.omit is false.}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{Nicolas Bichay}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
library(DAAG)
data(grog)

country.year(grog, id=grog$Country, year=grog$Year, dup.omit=TRUE ranges=FALSE)

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{data}
\keyword{manip}
\keyword{chron}
