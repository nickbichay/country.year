
country.year <- function(data, id, year, dup.omit = TRUE, ranges=FALSE) {

    id <- eval(parse(text=paste(deparse(substitute(data)), id, sep="$")))
    year <- eval(parse(text=paste(deparse(substitute(data)), year, sep="$")))

if(dup.omit==FALSE & ranges==TRUE){
    message("Error: dup.omit is FALSE while ranges is TRUE")
} else {

    suppressMessages(suppressWarnings(require(R.utils)))

    countries <- unique(id)

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
output <- output[-1]
colnames(output) <- NULL

return(output)

}

}
