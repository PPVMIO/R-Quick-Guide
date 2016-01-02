setwd("/Users/PaulPelayo/Desktop/RProgramming/Practice/nba/data")
getwd()
df <- read.csv('dataNBA12-13v2.csv')

#head(df)
df$Minutes.Played <- substr(df$Minutes.Played, 1, 5)

# sub (regular expression to replace, what to replace the regex with, what field to replace)
# ':.*'   -   Looks for the ':' then the next two parts of it
# ?regex
df$Seconds.Played = 60 * as.numeric(sub(':.*', '', df$Minutes.Played)) + as.numeric(sub('[0-9]{1,2}:', '', df$Minutes.Played))

df$Minutes.Played = df$Seconds.Played/60
df$Games <- 1
head(df)




write.csv(df, 'dataNBA12-13v3.csv')
