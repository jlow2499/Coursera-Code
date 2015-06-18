pollutantmean <- function(directory, pollutant, id = 1:332) {
        files <- list.files(directory)
        path <- paste(directory, "/", files, sep="")
        col <- if (pollutant == "sulfate") {
                2
                } else {
                3
        }
        result <- matrix(NA,0,4)
        for (i in id) {
                df <- read.csv(path[i])
                result <- rbind(result, df)
        }
        mean(result[,col], na.rm=TRUE)
}
