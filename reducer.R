#!/usr/bin/env Rscript

curkey <- NULL
total <- 0
input <- file('stdin', 'r')
while(TRUE) {
    row <- readLines(input, n=1)
    if( length(row) == 0 ){
        break
    }
    x <- strsplit(row, "\t")[[1]]
    key <- x[1]
    value <- strtoi(x[2])
    if(!is.null(curkey) && key == curkey){
        total <- total + value
    }
    else{
        if( !is.null(curkey) ) {
            write(cat(curkey,'\t', total), "")
        }
        curkey <- key
        total <- value
    }
}
write(cat(curkey,'\t', total), "")