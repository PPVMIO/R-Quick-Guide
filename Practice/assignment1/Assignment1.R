pollutantmean <- function(directory, pollutant, id = 1:332){
  setwd('/Users/PaulPelayo/Desktop/RProgramming/Practice/assignment1')
  getwd()
  
  observations <- 0
  total <- 0
 
  for (i in id){
    if (i < 10){
      
      path <- file.path('specdata', paste('00', i, '.csv', sep = ''))
      data <- read.csv(path)
      
    }
    else if (i >= 10 & i < 100){
      path <- file.path('specdata', paste('0', i, '.csv', sep = ''))
      data <- read.csv(path)
    }
    else{
      path <- file.path('specdata', paste(as.character(i), '.csv', sep = ''))
      data <- read.csv(path)
    }
    data <- na.omit(data)    
   
    observations <- observations + nrow(data)
    
    if (pollutant == "sulfate") {
      total = total + sum(data$sulfate)
    }
    else {
      total = total + sum(data$nitrate)
    }
  }
  return (total/observations)
  
  
  
}

#pollutantmean()

pollutantmean("specdata", "sulfate", 1:10)
pollutantmean('specdata', 'nitrate', 23)


