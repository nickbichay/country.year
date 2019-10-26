
country.year <- function(data, id, year, filename, dup.omit = FALSE) {

    countries <- unique(id)

    mat <- data.frame(row.names=countries)
    mat$Country <- rownames(mat)


if(dup.omit==FALSE) {
for(i in countries){

    years <- unlist(year)[id==i]
    years <- sort(years)

    mat$Years[mat$Country==i] <- paste(years, collapse=" ")   

    }
}


else if(dup.omit==TRUE) {
for(i in countries){

    years <- unlist(year)[id==i]
    years <- unique(sort(years))

    mat$Years[mat$Country==i] <- paste(years, collapse=" ")   

    }
}

else{ }


output  <-  paste0(filename,".csv")
write.table(mat[order(mat$Country),], file = output, row.names = FALSE, sep=",")

message(paste(output, " written to ", "\"",getwd(), "\"", sep=""))

}
