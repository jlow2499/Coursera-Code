corr <- function(directory, threshold = 0) {
        files <- list.files(directory)
        path <- paste(directory, "/", files, sep="")
        fvector <- c(1:length(files))
        cvector <- fvector[complete(directory, fvector)[,2] > threshold]
        result <- c()
        for (i in cvector) {
                data <- read.csv(path[i])
                nobs <- nrow(data[complete.cases(data),])
                result <- cbind(result,cor(nobs[,2], nobs[,3]))
        }
        as.vector(result)
}
