xd <- as.Date("2016-08-05")
xd
str(xd)
weekdays(xd)
xd + 7
xd + 0:6
weekdays(xd + 0:6)
startDate <- as.Date("2016-01-01")
xm <- seq(startDate, by = "2 months", length.out = 6)
xm
months(xm)
quarters(xm)
#Sys.localeconv()
#Date Formatting
as.Date("5 Aug 2016", format = "%d %b %Y")
as.Date("05/8/2016", format = "%d/%m/%Y")
apollo <- "July 20, 1969, 20:17:39"
apollo.fmt <- "%B %d, %Y, %H:%M:%S"
xct <- as.POSIXct(apollo, format = apollo.fmt, tz = "UTC")
xct
#date operation
xct + 7*86400
as.Date(xct) - 7
#comparison
Sys.time()
Sys.time() < xct