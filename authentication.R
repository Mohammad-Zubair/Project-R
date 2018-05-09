library(twitteR)
library(ROAuth)

consumer_key <- "wptL1Ic421tTZHXFNC9HM78e3" 
consumer_secret <- "B4HX9yEKFOmGZN1h7wbJDuvHf2gd451E6iHuFNcYtmHh4DvsOO"
access_token <- "	1204821835-l6U3OQAOtdi79LMohzsGJpTCIHHWna1rkU3EQrF"
access_secret <- "56XZWurskn6LfgQHpuaoVAz2jantz1kzBV2K3ZiFWrENP"

download.file(url="http://curl.haxx.se/ca/cacert.pem", destfile="cacert.pem") #downloads the certificate

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

cred <- OAuthFactory$new(consumerKey=consumer_key, 
                         consumerSecret=consumer_secret,
                         requestURL='https://api.twitter.com/oauth/request_token',
                         accessURL='https://api.twitter.com/oauth/access_token',
                         authURL='https://api.twitter.com/oauth/authorize')

cred$handshake(cainfo="cacert.pem")
#After this you are redirected to a URL automatically, click on Authorize App and enter the PIN generated there
