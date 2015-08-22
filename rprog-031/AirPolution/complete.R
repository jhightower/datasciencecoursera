complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  
  endswith = substring(directory, nchar(directory) , nchar(directory))
  if (endswith != "/")
  {
    directory <- paste(directory, "/", sep = "")
  }
  
  pollutionfiles <- list.files(directory)
  myframe <- data.frame()
  for (i in id) {
    csvpath <- paste(directory, pollutionfihelples[i], sep = "")
    myframe <- rbind(myframe, read.csv(csvpath))
  }
  mean(myframe[, pollutant], na.rm = TRUE)
}