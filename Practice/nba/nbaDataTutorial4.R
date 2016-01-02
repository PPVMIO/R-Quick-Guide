setwd("/Users/PaulPelayo/Desktop/RProgramming/Practice/nba/data")
getwd()
df <- read.csv('dataNBA12-13v3.csv')
df$Game.Date <- as.Date(df$Game.Date)
class(df$Game.Date)

df$Is.Playoff.Game <- 0

# set all dates past 2013-04-02 as playoff games (1)
df$Is.Playoff.Game[df$Game.Date >= as.Date('2013-04-02')] <- 1

head(df)
write.csv(df, 'dataNBA12-13v4.csv')
