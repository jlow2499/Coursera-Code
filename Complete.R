dirlocation <- 
setwd(dirlocation)
filenames <- list.files(path=dirlocation)
id <- 1:length(filenames)

complete <- function(directory, id){

files <- data.frame(NULL)
for(i in id){
  file <- read.csv(filenames[i])
  file <- file[complete.cases(file),]
  files <- rbind(files,file)
}
as.data.frame(files)
}

data <- complete(dirlocation,id)
