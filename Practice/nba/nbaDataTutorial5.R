setwd("/Users/PaulPelayo/Desktop/RProgramming/Practice/nba/data")
getwd()
df <- read.csv('dataNBA12-13v4.csv')

reg.season.df <- df[df$Is.Playoff.Game == 0, ]


lebron.stats.df <- reg.season.df[reg.season.df$Player == 'LeBron James', ]
tail(lebron.stats.df)
write.csv(lebron.stats.df, 'lebronStats.csv')

# lebron.points <- reg.season.df[reg.season.df$Player == 'LeBron James', 'Points']
# lebron.points
# sum(lebron.points)


#write.csv(df, 'dataNBA12-13v5.csv')
