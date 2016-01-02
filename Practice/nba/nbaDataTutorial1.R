setwd("/Users/PaulPelayo/Desktop/RProgramming/Practice/nba/data")
getwd()

#List all files in the wd
list.files()   

#read in a .csv file (stored as a dataframe)
df <- read.csv('dataNBA12-13.csv')

#peek into the df
head(df)

#set a field of the data frame to 1 (if the field does not exist, create it)
df$GP <- 1
head(df)

#write to a .csv file, (dataframe, path)
write.csv(df, 'dataNBA12-13v1.csv')
