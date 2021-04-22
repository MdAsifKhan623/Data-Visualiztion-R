library(ggplot2)

mat=matrix(1:6, nrow=1)
mat

print(mtcars)

nrow(mtcars)

for (i in 1:nrow(mtcars)){
  if (mtcars[i,2]==8){
    print(row.names(mtcars[i,]))
  }
}

f1<- function(x){
  25*x^2
}

f2<-function(x){
  3^x
}


data= data.frame(x=c(-5,5))

ggplot(data, aes(x))+stat_function(fun=f1, aes(color="Quadratic function"))+
  stat_function(fun=f2,aes(color="Cubic function"))+
  theme_bw()+
  ggtitle("Function Implementation")+
  theme(plot.title = element_text(hjust = 0.5))+
  scale_color_manual("",values = c("blue","red"))



continents <-
  c("Africa", "Antarctica", "Asia", "Europe",
    "North America", "Oceania", "South America")
number_of_countries<- c(54, 7, 48, 44, 14, 23, 12)
hemisphere <- c("Both", "Southern", "Both", "Northern",
"Northern", "Both", "Both")
continents.countries<-data.frame (continents,
                number_of_countries , hemisphere)
ggplot(continents.countries , aes(x=continents,y= number_of_countries ))+
    geom_col()+
    theme_bw()+
    labs(x="Continent", y="Number of Countries")


ggplot(BOD,aes(x=factor(Time),y=demand))+
  geom_col(fill="lightgreen", color="darkblue")+
  theme_bw()


#geom_bar is used for counts and the aes will contain only x axis column

ggplot(diamonds,aes(x=carat))+geom_bar()+theme_bw()


ggplot(continents.countries , aes(x=continents,y= number_of_countries, fill=hemisphere))+
  geom_col()+
  theme_bw()+
  labs(x="Continent", y="Number of Countries")


ggplot(continents.countries , aes(x=continents,y= number_of_countries, fill=hemisphere))+
  geom_col(color="black")+
  scale_fill_manual(values = c("blue","pink","red"))+
  theme_bw()+
  labs(x="Continent", y="Number of Countries",fill="Hemisphere")+
  geom_text(aes(label=number_of_countries),size=3,vjust=1.0,color="green")


#histogram

random_num<-c(30, 27, 26, 36, 40, 20, 35, 38, 22, 28,
              25, 34)

dataf= data.frame(random_num)

ggplot(dataf, aes(x=random_num))+
  geom_histogram(center=22,binwidth = 2,color="black", fill="lightblue")+
  scale_x_continuous(breaks=seq(22,40,4))+
  theme_bw()


ggplot(diamonds,aes(x=price))+
  geom_histogram(boundary=0, binwidth = 1000)+
  scale_x_continuous(breaks = seq(0,max(diamonds$price,na.rm = TRUE)+1000,1000))+
  theme_bw()


ggplot(diamonds,aes(x=price))+
  geom_freqpoly(boundary=0, binwidth = 1000)+
  scale_x_continuous(breaks = seq(0,max(diamonds$price,na.rm = TRUE)+1000,1000))+
  theme_bw()

ggplot(diamonds,aes(x=price,color=cut))+
  geom_freqpoly(boundary=0, binwidth = 1000)+
  scale_x_continuous(breaks = seq(0,max(diamonds$price,na.rm = TRUE)+1000,1000))+
  theme_bw()

ggplot(diamonds,aes(x=price))+
  geom_density( fill="lightgreen", alpha=0.3)+
  scale_x_continuous(breaks = seq(0,max(diamonds$price,na.rm = TRUE)+1000,1000))+
  theme_bw()

x <-c(30, 27, 26, 36, 40, 20, 35, 38, 22, 28, 25, 34)
y <-c(13, 2, 23, 52, 7, 18, 53, 42, 21, 30, 16, 41)
dataset= data.frame(x,y)

ggplot (dataset, aes (x, y))+
  geom_point(shape=21, fill="red", color="blue", size=4)


ggplot(diamonds, aes (depth , price ))+
  geom_point(alpha=0.01, size = 0.5, color="blue")

ggplot(dataset,aes(x,y))+geom_line()+
  geom_point (shape=4, color = "blue", size=2)

ggplot(diamonds,aes(carat,price))+geom_point(alpha=0.1)+
  facet_grid(cut~.)+
  theme_bw()

ggplot(diamonds,aes(carat,price))+geom_point(alpha=0.1)+
  facet_grid(cut~clarity)+
  theme_bw()

ggplot(diamonds,aes(carat,price))+geom_point(alpha=0.1)+
  facet_wrap(cut~.)+
  theme_bw()


ggplot(trees, aes(Height,Volume))+geom_point()+
  xlim(70,80)+
  ylim(20,40)+
  theme_bw()


ggplot(mtcars , aes (mpg, wt , col=factor(gear))) +
  geom_point()+
labs(col = "Gear")+
theme_bw()+
theme(legend.position = "top")
