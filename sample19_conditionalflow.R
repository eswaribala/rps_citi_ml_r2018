priceCalculator <- function(hours, pph = 40, public = TRUE){
  net.price <- hours * pph
  print(net.price)
  if(hours > 100) net.price <- net.price * 0.9
  if(public) {
    tot.price <- net.price * 1.06
  } else {
    tot.price <- net.price * 1.12
  }
  round(tot.price)
}
priceCalculator(25, public = TRUE)

#songline <- "Get out of my dreams..."
#for(songline in 1:5) print("...Get into my car!")