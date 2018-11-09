#! /usr/bin/env Rscript

input <- file('stdin', 'r')
while(TRUE) {
    row <- readLines(input, n=1)
    if( length(row) == 0 ){
        break
    }
    words <- strsplit(row, " ")[[1]]
    for(word in words){
        if(word != '')
            write(cat(word,'\t1',sep=''), "")
    }
}