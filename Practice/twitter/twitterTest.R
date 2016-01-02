# Twitter Analytics 

setwd("/Users/PaulPelayo/Desktop/RProgramming/Practice/twitter/data")
getwd()

# twitter.data <- read.csv('oliviaWendorfTweets08-13_11-12_en.csv')
# twitter.data[0, ]
# 
# engagement.rate <- twitter.data[['engagement.rate']]
# engagement.rate
# 
# sd(engagement.rate)
# mean(engagement.rate)


consumer_key <- 'gGgTO78dUAr2OOR1D9CRFYd2y'
consumer_secret <- 'JAVSauFQ8fY3jUoCjlvg8wfIjWBjZiP6Wb639O5cV7NCek6kqd'
access_token <- '731185447-AnDyzrQy2oKwEt7wHmTSNsWLwXD1HdYMcJlEoBLE'
access_secret <- 'cnVIMOmkdYj4sA5EspgcpCHLTxytH6RxN1hOuomAMDDhT'
request_URL <- "https://api.twitter.com/oauth/request_token"
access_URL <- "https://api.twitter.com/oauth/access_token"
auth_URL <- "https://api.twitter.com/oauth/authorize"

library(httr)
library(twitteR)
setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)
tweets <- searchTwitter('#bigdata', n=150) 
tweets.df <- do.call(rbind, lapply(tweets, as.data.frame))
write.csv(tweets.df, "bigdata.csv")

# twitteR::setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)
# twitteR::searchTwitter('missouri', lang = 'en')


# credentials <- OAuthFactory$new(consumerKey= consumer_key,
#                                 consumerSecret= consumer_secret,
#                                 requestURL=request_URL,
#                                 accessURL=access_URL,
#                                 authURL=auth_URL,
#                                 needsVerifier=FALSE)
# 
# # credentials$handshake(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl"))
# 
# 
# credentials$handshake()
# 
# 
# filterStream(file.name = 'test.txt', track = 'gargarmarmarzarzar',
#              follow = NULL, locations = NULL, language = 'en',
#              timeout = 0, tweets = NULL, oauth = credentials,
#              verbose = TRUE)
