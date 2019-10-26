# country.year


Country.year easily creates a table of country-year observations in a stem-and-leaf type visualization. 



## Example


|Country | Years
| ------ | -----|
|Canada | 1993 1994 2004|
|Egypt | 1956 1987 2003 2008 |
|Greece | 1957 2001|



## Installation

devtools::install_github("nickbichay/country.year")



## Usage

country.year(data, id, year, file, dup.omit=FALSE)

Arguments:

data: the name of your dataset

id: the id (country variable) from the dataset

year: the year variable from the dataset

file: a character of the filename for the table to saved to

dup.omit: whether or not you'd lik duplicate years of the same id to be removed. Defaults to false.



## Example

load("data")
country.year(data, data$country, data$year, "observations", dup.omit=TRUE)
