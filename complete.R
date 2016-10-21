complete <- function(specdata, id = 1:332) {ve
  files <- list.files(specdata, full.names = 1)
  
  complete_files <- data.frame(id=NA, nobs=NA)
  
  for (i in id) {
    complete_files[i, 1] <- i
    complete_files[i, 2] <- sum(complete.cases(read.csv(files[i])))
  }
  
  complete_files
}