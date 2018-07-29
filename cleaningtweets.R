nawazsharif.tweets = searchTwitter("nawazsharif", n=200)  
df <- do.call("rbind", lapply(nawazsharif.tweets, as.data.frame))
df$text <- sapply(df$text,function(row) iconv(row, "latin1", "ASCII", sub="")) 
df$text = gsub("(f|ht)tp(s?)://(.*)[.][a-z]+", "", df$text) #remove URL
sample <- df$text