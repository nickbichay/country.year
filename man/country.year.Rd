\name{country.year}
\alias{country.year}
\title{Package to create country-year dataframe.}
\usage{
country.year(x, id, year, dup.omit=TRUE, ranges=FALSE)
}
\description{
country.year returns a dataframe of all country-year observations (stem-and-leaf style) in a dataset.
}
\arguments{
  \item{x}{Dataset}
   \item{id}{Country variable}
    \item{year}{Year variable}
     \item{filename}{Name to write output csv file to}
     \item{dup.omit}{Whether or not you want to omit duplicate years. Defaults to TRUE. Must be true to use ranges option}
     \item{ranges}{Whether or not you want subsequent years to be grouped into a range, seperated by a hypthen. Defaults to False. Cannont be true if dup.omit is false.}
}
\author{Nicolas Bichay}
\examples{
#library(DAAG)
#data(grog)

#country.year(grog, id= "Country", year= "Year", dup.omit=TRUE, ranges=FALSE)
}
