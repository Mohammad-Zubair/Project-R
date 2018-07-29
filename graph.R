#Histogram
hist(table_final$Positive, col=rainbow(10))
hist(table_final$Negative, col=rainbow(10))
hist(table_final$Score, col=rainbow(10))

#Pie
slices <- c(sum(table_final$Positive), sum(table_final$Negative))
lbls <- c("Positive", "Negative")
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) # add percents to labels 
lbls <- paste(lbls,"%",sep="") # ad % to labels 
library(plotrix)
#pie(slices, labels = lbls, col=rainbow(length(lbls)), main="Sentiment Analysis")
pie3D(slices, labels = lbls, col=rainbow(length(lbls)),explode=0.015, main="Sentiment Analysis")
