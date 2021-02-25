#importing packages
library(plotly)
library(d3r)
library(sunburstR)

packageVersion("sunburstR")

#creating a sample data frame
data <- data.frame(
  level1 = rep(c("a", "b"), each=3),
  level2 = paste0(rep(c("a", "b"), each=3), 1:3),
  size = c(10,5,2,3,8,6),
  stringsAsFactors = FALSE
)

#displaying the dataframe
data

#creating a tree structure from the above data frame using d3_nest library
tree <- d3_nest(data, value_cols = "size")

tree

#displaying the sunburst tree diagram
sunburst(tree, width="100%", height=300)




