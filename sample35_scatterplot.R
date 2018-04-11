duration = faithful$eruptions 
waiting = faithful$waiting 
plot(duration, waiting,xlab="Eruption duration",ylab="Time waited") 
abline(lm(waiting ~ duration))
