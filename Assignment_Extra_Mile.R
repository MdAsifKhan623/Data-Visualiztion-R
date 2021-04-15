library(ggplot2)

#Creating Two Vectors
x1=vector()
x2=vector()

#Putting Initial Values in the vector
x1[1]=0.3
x2[1]=3.5*x1[1]*(1-x1[1])

#Creating a loop for 2 to 1000 points
for (i in 2:1000){
  x1[i]=x2[i-1]
  x2[i]=3.5*x1[i]*(1-x1[i])
}

#Creating a DataFrame
dataframe=data.frame(X1=x1,X2=x2)

#Creating a ggplot
ggplot(dataframe,aes(x1,x2))+
  geom_line()+
  geom_point(colour="red")+
  labs(x="X Axis",y="Y Axis")+
  ggtitle("Extra Mile")
