head(state.name)
head(substr(state.name, start = 3, stop = 6))
grep("New", state.name)
grep("New", state.name, value = TRUE)
#substitute
gsub("cheap", "sheep's", "A wolf in cheap clothing")
#regular expression
rwords <- c("bach", "back", "beech", "beach", "black")
grep("beach|beech", rwords)
rwords[grep("b(e*|a*)ch", rwords)]