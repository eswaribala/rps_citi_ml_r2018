
attach(airquality)
airquality
transform(Ozone, logOzone = log(Ozone)) # marginally interesting ...
transform(airquality, Ozone = -Ozone)
transform(airquality, new = -Ozone, Temp = (Temp-32)/1.8)
detach(airquality)
