#Packages and Libraries

#library()
#packages <- installed.packages()
#View(packages)

search()

#Load package using library function
library('parallel')
#or
library(parallel)
search()

#Unload a package
detach(package:parallel, unload = TRUE)
search()

#Load a library that is not installed
library(newpackage)
if(!require('newpackage')){
  #download and install package
}



