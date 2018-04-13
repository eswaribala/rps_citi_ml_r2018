#Loading magick package
library(magick)

butterfly <- image_read("G:/Local disk/MachineLearning/Data_Processing/convolutional_network/butterfly.jpg")
carrot <- image_read('G:/Local disk/MachineLearning/Data_Processing/convolutional_network/carrot.jpg')

image_info(carrot)
image_info(butterfly)
image_charcoal(butterfly) %>% 
  
  image_annotate("", size = 50, color = "red", boxcolor = "pink",
                 degrees = 30, location = "+100+100") %>%
  image_rotate(30) %>%
  image_write('G:/Local disk/MachineLearning/Data_Processing/convolutional_network/butterfly_with_carrot.png','png')
str(butterfly)
library(jpeg)
carrot <- readJPEG('G:/Local disk/MachineLearning/Data_Processing/convolutional_network/carrot.jpg')
ncol(carrot)
nrow(carrot)
library(imager)
#file <- system.file('G:/Local disk/MachineLearning/Data_Processing/convolutional_network/carrot.jpg')
#system.file givesve the full path to the file you want to load just run:
#im <- load.image the full path for a file that ships with a R package
#if you already ha("/somedirectory/myfile.png")
im <- load.image("G:/Local disk/MachineLearning/Data_Processing/convolutional_network/carrot.jpg")

plot(im) #Parrots!
im.blurry <- isoblur(im,10) #Blurry parrots!
plot(im.blurry)
im.xedges <- deriche(im,2,order=2,axis="x") #Edge detector along x-axis
plot(im.xedges)
map.scale <- function(x,y) list(x=1.5*x,y=1.5*y)
imwarp(im,map=map.scale) %>% plot(main="Forward mode")
as.data.frame(im,wide="c") %>% head
