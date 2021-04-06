library(ggplot2)
library(datasets)

ggplot(PlantGrowth,aes(group, weight))

x<- sample(1:3, 10, replace = T)
y<- rnorm(10)
dataset<- data.frame(x,y)

ggplot(dataset, aes(factor(x),y))+geom_boxplot()+theme_bw()

newDataset= PlantGrowth[PlantGrowth$group=="ctrl" | PlantGrowth$group=="trt2",]

newDataset

ggplot(newDataset,aes(group, weight))+geom_boxplot()+theme_bw()


compactCars<- mpg[mpg$class=="compact",]
compactCars

ggplot(compactCars,aes(class,hwy))+geom_boxplot()+theme_bw()


ggplot(diamonds,aes(carat, price))+geom_point(alpha=0.1)+theme_bw()


ggplot(diamonds,aes(carat, price))+geom_point(alpha=0.1)+facet_grid(.~ cut)+theme_bw()
