# country.year


Country.year easily creates a dataframe of country-year observations in a stem-and-leaf type visualization. 



## Example


|Country | Years
| ------ | -----|
|Canada | 1993 1994 2004|
|Egypt | 1956 1987 2003 2008 |
|Greece | 1957 2001|



## Installation

```R
devtools::install_github("nickbichay/country.year")
```


## Usage

```R
countryyears <- country.year(data, id, year, dup.omit=TRUE, ranges=FALSE)
```

#### Arguments:

data: the name of your dataset

id: the id (country variable) from the dataset

year: the year variable from the dataset

dup.omit: whether or not you would like duplicate years of the same id to be removed. Defaults to true. Must be true to use ranges option.

ranges: Whether or not you want subsequent years to be grouped into a range, seperated by a hypthen. Defaults to False. Cannont be true if dup.omit is false.



## Example

```R
load("data")
countryyears <- country.year(data, "country", "year", dup.omit=TRUE, ranges=TRUE)
```
