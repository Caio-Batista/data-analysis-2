
library(dplyr)
library(ggplot2)

training.data.raw <- read.csv('/home/caiobo/data-analysis-2/lab3/treino_classificacao.csv',header=T)

plotado <- training.data.raw %>% 
  ggplot(aes(MAT_TUR_ANO, EVADIU)) +
    geom_point(shape = 21, colour = "black", fill = "white", size = 5, stroke = 5)

library(plotly)
set.seed(100)
d <- diamonds[sample(nrow(diamonds), 1000), ]
plot_ly(d, x = ~carat, y = ~price, color = ~carat,
        size = ~carat, text = ~paste("Clarity: ", clarity))