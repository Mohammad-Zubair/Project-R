pos.words = scan('C:/Users/MK!/Documents/Shiny/positive_words.txt', what='character', comment.char=';') 

neg.words = scan('C:/Users/MK!/Documents/Shiny/negative_words.txt', what='character', comment.char=';')


#Adding words to positive and negative databases

pos.words=c(pos.words, 'Congrats', 'prizes', 'prize', 'thanks', 'thnx', 'Grt', 'gr8', 'plz', 'trending', 'recovering', 'brainstorm', 'leader')
neg.words = c(neg.words, 'Fight', 'fighting', 'wtf', 'arrest', 'no', 'not')