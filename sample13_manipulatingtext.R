#split
msg<-"Machine Learning using R, Machine Learning Data analysis uses R or Python "
words=strsplit(msg," ")
words
unique(tolower(words))
#combine
paste("The", "quick", "brown", "fox")
paste(c("The", "quick", "brown", "fox"))
paste(words, collapse = "_")
paste("Sample", 1:5)
paste(LETTERS[1:5], 1:5, sep = "_", collapse = "---")
sort(letters, decreasing = TRUE)
sort(letters, decreasing = TRUE)