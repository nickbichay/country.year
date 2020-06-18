
country.year <- function(data, id, year, dup.omit = TRUE, ranges=FALSE) {

    id <- paste(get(data), get(id), sep="$")
    year <- paste(get(data), get(year), sep="$")

if(dup.omit==FALSE & ranges==TRUE){
    message("Error: dup.omit is FALSE while ranges is TRUE")
} else {

    quietly(require(R.utils))

    countries <- unique(get(id))

    mat <- data.frame(row.names=countries)
    mat$Country <- rownames(mat)


if(dup.omit==FALSE) {
for(i in countries){

    years <- unlist(year)[id==i]
    years <- sort(years)

    mat$Years[mat$Country==i] <- paste(years, collapse=" ")

    }


} else if(dup.omit==TRUE) {
for(i in countries){

    years <- unlist(year)[id==i]
    years <- unique(sort(years))

    if(ranges==FALSE){
    mat$Years[mat$Country==i] <- paste(years, collapse=" ")

    } else if(ranges==TRUE){
    mat$Years[mat$Country==i] <- seqToHumanReadable(years, tau=1)

    } else { }


    }


} else { }


output  <- mat[order(mat$Country),]

}

}
