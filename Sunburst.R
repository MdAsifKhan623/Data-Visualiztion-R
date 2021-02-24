library(plotly)
library(d3r)
library(sunburstR)

packageVersion("sunburstR")


dat <- data.frame(
  level1 = rep(c("a", "b"), each=3),
  level2 = paste0(rep(c("a", "b"), each=3), 1:3),
  size = c(10,5,2,3,8,6),
  stringsAsFactors = FALSE
)

dat


tree <- d3_nest(dat, value_cols = "size")

tree

sunburst(tree, width="100%", height=400)




