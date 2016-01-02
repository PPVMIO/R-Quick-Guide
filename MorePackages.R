#FIND R PACKAGES
#https://cran.r-project.org/web/views/
#https://cran.r-project.org/mirrors.html

setRepositories()
install.packages('plyr')
install.packages(c('ggplot2', 'randomForest', 'RColorBrewer')) #multiple packages
install.packages('devtools')
library(devtools)
install_github('slidify', 'ramnathv')