library(ggplot2)
random_numbers<-c(30,27,26,36,40,20,35,38,22,28,25,34)

dataset<-data.frame(random_numbers)

ggplot(dataset,aes(x=random_numbers))+
  geom_histogram(center=22,binwidth = 4,color="black", fill="lightblue")+
  scale_x_continuous(breaks = (seq(22,40,4)))+
  theme_bw()

rm(list=ls())
library(datasets)

minX<- min(airquality$Ozone, na.rm=TRUE)
maxX<- max(airquality$Ozone, na.rm = TRUE)

binWidth<-20

ggplot(airquality,aes(x=Ozone))+
  geom_histogram(boundary=minX, binwidth = binWidth,color="Black", fill="lightgreen")+
  scale_alpha_continuous(breaks=seq(minX,maxX+binWidth,binWidth))+
  theme_bw()
  

minX<-0
maxX<-max(diamonds$price,na.rm = TRUE)

binWidth=1000

ggplot(diamonds, aes(x=price))+
  geom_freqpoly(boundary=minX, binwidth=binWidth)+
  scale_x_continuous(breaks = seq(minX,maxX+binWidth,binWidth))+
  theme_bw()
