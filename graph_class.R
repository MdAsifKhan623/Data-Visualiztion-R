library(ggplot2)

f1<-function(x){25*x^2}
f2<-function(x){x^3}

domain<-data.frame(x=c(-5,5))

ggplot(domain,aes(x))+
  stat_function(fun=f1,color="red")+
  stat_function(fun=f2,color="blue")+
  theme_bw()+
  ggtitle("Functions")+
  theme(plot.title=element_text,(hjust=0.5))+
  annotate("text",x=4,y=-10,label="Cubic Function")+
  annotate("text",x=-1.5,y=300,label="Quadratic Function")


ggplot(trees,aes(Height,Volume))+
  geom_point()+
  theme_bw()

ggplot(trees,aes(Height,Volume))+
  geom_point()+
  xlim(70,80)+
  ylim(20,40)+
  theme_bw()


ggplot(trees,aes(Height,Volume))+
  geom_point()+
  scale_x_reverse()+
  scale_y_reverse()+
  theme_bw()

ggplot(mtcars,aes(mpg,wt,color=factor(gear)))+
  geom_point()+
  labs(col="Gear")+
  theme_bw()

