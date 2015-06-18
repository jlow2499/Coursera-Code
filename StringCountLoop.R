# Pre-defined variables
rquote <- "R's internals are irrefutably intriguing"
chars <- strsplit(rquote, split = "")[[1]]

# Your solution here
rcount <- 0
for(char in chars) {
  if(char == "u" | char == "U") {
    break
  }
  if(char == "r" | char == "R") {
    rcount <- rcount + 1
  }
}

# Print the resulting rcount variable to the console
rcount
