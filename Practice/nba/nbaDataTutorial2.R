setwd("/Users/PaulPelayo/Desktop/RProgramming/Practice/nba/data")
getwd()
df <- read.csv('dataNBA12-13v1.csv')

#as.Date(text, how you want the date to display)
# %Y%m%d  %Y  - four digit month
#         %m  - two digit month
#         %d  - two digit day

#store the data in a new field called Game.Date
df$Game.Date <- as.Date(substr(df$Game.ID, 1, 8), '%Y%m%d')
head(df)

write.csv(df, 'dataNBA12-13v2.csv')
