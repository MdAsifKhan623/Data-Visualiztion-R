library(ggplot2)
getOption(CRAN.packages())
echo<-function (s, x) print (paste (s,x))
echo("The value of PI is",20)

power_function<-function (x)
  {
    f <-function (n) {x^n}
  }

print(paste("3^4",power_function(3)(4)))

head(mtcars,10)

p<-ggplot(mtcars,aes(x=cyl,y=mpg, color=factor(gear)))+geom_point()+
  facet_wrap(~cyl)

print(p)


fact<-function(n=1)
  {
    if (n==1) return (1)
    else{
      f<-1
      for (i in n:1){
        f<-f*i
      }
      return(f)
    }
}

combination<-function(n,k){
  comb=fact(n)/(fact(n-k)*fact(k))
  print(comb,n,k)
  return(comb)
}

for (i in 2:10){

  print(combination(i,2))
}



f1<-function(x)
{
  25*x^2
}

domain<-data.frame(x=c(-5,5))

ggplot(domain,aes(x))+stat_function(fun=f1,color="red")+theme_bw()




continents <-c("Africa", "Antarctica", "Asia", "Europe",
    "North America", "Oceania", "South America")
number_of_countries<- c(54, 7, 48, 44, 14, 23, 12)
hemisphere <-c("Both", "Southern", "Both", "Northern",
"Northern", "Both", "Both")
continents.countries<-data.frame (continents,
                number_of_countries ,hemisphere)

ggplot(continents.countries,aes(x=continents,y=number_of_countries))+
  geom_col()+theme_bw()+labs(x="Continents", y="Number of Countries")

BOD

ggplot(BOD,aes(x=factor(Time),y=demand))+geom_col(fill="lightgreen",color="darkblue")+
  theme_bw()
