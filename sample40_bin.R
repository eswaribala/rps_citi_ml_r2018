set.seed(123)
mydata = data.frame(y= ifelse(sign(rnorm(100))==-1,0,1),
                    x1= sample(LETTERS[1:5],100,replace = TRUE),
                    x2= factor(sample(1:7, 100, replace = TRUE)))
# Convert categorical variables to continuous variables
TransformCateg <-  function(y,x,inputdata,cutoff){
  for (i in seq(1,length(x),1)) {
    if (class(inputdata[,x[i]]) %in% c("factor", "character")){
      len <- NULL
      t1 <- aggregate(inputdata[,y], list(inputdata[,x[i]]), mean)
      names(t1)[2] <- "avg"
      t2 <- aggregate(inputdata[,y], list(inputdata[,x[i]]), length)
      names(t2)[2] <- "len"
      temp <- merge(t1, t2, by = "Group.1")
      t1 <- subset(temp, len >= cutoff)
      t2 <- subset(temp, len < cutoff)
      if(nrow(t2) > 0)
      {
        t2$avg <- sum(t2$avg*t2$len)/sum(t2$len)
        t2$len <- sum(t2$len)
      }
      temp <- rbind(t1, t2)
      inputdata <- merge(inputdata, temp, by.x = x[i], by.y = "Group.1", all.x = T)
      inputdata[,paste(x[i],"mean", sep="_")] <- ((inputdata$avg * inputdata$len) - (inputdata[,y]))/(inputdata$len - 1)
      inputdata <- inputdata[, !(colnames(inputdata) %in% c("avg","len"))]
    }
    else{
      warning(paste(x[i], " is not a factor or character variable", sep = ""))
    }
  }
  return(inputdata)
}
# Run Function
train2 = TransformCateg(y= "y",x= c("x1","x2"), inputdata = mydata, cutoff = 15)
train2