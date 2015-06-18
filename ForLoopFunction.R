interpret_all <- function (views, return = TRUE) {
  sum<-0
  for(i in 1:length(views)) {
      if(interpret(views[i]) != 0) {
        sum <- sum + interpret(views[i])
  }
  }
  if(return==TRUE) {
    sum
  }else{
    NULL
  }
  }
  
