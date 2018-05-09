library(twitteR)
library(ROAuth)

consumer_key <- "4vXxezBaXMzHHHCJSKEGb76mQ" 
consumer_secret <- "7bMADkqovHPT5hY3uIJkC8cvbriWWwqr6yww6pHNLmb5ocaedz"
access_token <- "1204821835-YhHHaYs0EwzKp2rpNplR7yc831mVnPVytvxC9g7"
access_secret <- "f2JKPbhbu8CxsSWj6jh1XiiUkyWihu3QARfw1iG9TTdCK"

download.file(url="http://curl.haxx.se/ca/cacert.pem", destfile="cacert.pem") #downloads the certificate

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

cred <- OAuthFactory$new(consumerKey=consumer_key, 
                         consumerSecret=consumer_secret,
                         requestURL='https://api.twitter.com/oauth/request_token',
                         accessURL='https://api.twitter.com/oauth/access_token',
                         authURL='https://api.twitter.com/oauth/authorize')

cred$handshake(cainfo="cacert.pem")
#After this you are redirected to a URL automatically, click on Authorize App and enter the PIN generated there
