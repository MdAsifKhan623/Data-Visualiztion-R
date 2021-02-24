library(treemap)

city_data<- data.frame(City=c("Miami","Pembroke Pines","West Palm Beach","Davie",
                              "Miami Beach"), Population=c(100,50,10,70,35))

color_palette= c("#7607C4","#76BAD7","#7689D7","#9376D7","#D7768A")

treemap(city_data,index = "City",vSize = "Population", palette = color_palette,
         type = "index")



group= c(rep("Flowers",4),rep("Animals",2),rep("Fruits",3))

subgroup = c("Rose","Lily","Sunflower","Tulip","Lion","Goat", "Banana", "Apple", "Grapes")


value=c(13,5,22,12,11,7,3,1,4)

data= data.frame(group,subgroup,value) 
  
treemap(data,
        index = c('group',"subgroup"),
        vSize = "value",
        type = "index")