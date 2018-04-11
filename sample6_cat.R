data <-
  c(5, 3, 2, 2, 7, 9)
Intro <- "continuous assessment
a total of"
Outro <- "in the last six tests!"
Total.assessments <- sum(data)
Text <- paste(Intro,
              sum(Total.assessments),
              Outro)
cat(Text)