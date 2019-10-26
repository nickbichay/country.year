\name{country.year}
\alias{country.year}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Function to create country-year table.
}
\description{
country.year automatically creates a table (csv) of all country-year observations (stem-and-leaf style) in a dataset.
}
\usage{
country.year(x, id, year, filename)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{Dataset}
   \item{id}{Country variable}
    \item{year}{Year variable}
     \item{filename}{Name to write output csv file to}
     \item{dup.omit}{Whether or not you want to omit duplicate years. Defaults to False.}
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

country.year(grog, id=grog$Country, year=grog$Year, "test", dup.omit=TRUE)
}
