complete <- function(directory, id = 1:332) {
        files <- list.files(directory)
        path <- paste(directory, "/", files, sep="")
        result <- data.frame()
        for (i in id) {
                data <- read.csv(path[i])
                nobs <- nrow(data[complete.cases(data),])
                result <- rbind(result,data.frame(id=i,nobs))
        }
        as.data.frame(result)
}
