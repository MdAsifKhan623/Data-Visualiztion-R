library(plotly)
library(d3r)
library(sunburstR)

dataset= data.frame(labels = c("Eve", "Cain", "Seth", "Enos", "Noam", "Abel", "Awan", "Enoch", "Azura"),
                    parents = c("", "Eve", "Eve", "Seth", "Seth", "Eve", "Eve", "Awan", "Eve"),
                    values = c(65, 14, 12, 10, 2, 6, 6, 4, 4),
                    stringsAsFactors = FALSE)


tree <- d3_nest(dataset, value_cols = "values")

packageVersion("sunburstR")

tree


sb1 <- sunburst(tree, width="100%", height=400)


div(
  style="display: flex; align-items:center;",
  div(style="width:50%; border:1px solid #ccc;", sb1),
  div(style="width:50%; border:1px solid #ccc;", sb1)
)

sequences <- read.csv(
  system.file("examples/visit-sequences.csv",package="sunburstR")
  ,header=F
  ,stringsAsFactors = FALSE
)

sunburst(dataset,colors = c("#111d4a","#ffcf99","#92140c","#1e1e24", "#fff8f0", "#0b7a750"))
