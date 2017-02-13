
library(dplyr)
library(ggplot2)
library(plotly)

training.data.raw <- read.csv('~/data-analysis-2/lab3/treino_classificacao.csv',header=T)

plotado <- training.data.raw %>% 
  ggplot(aes(MAT_TUR_ANO, EVADIU)) +
    geom_point(shape = 21, colour = "black", fill = "white", size = 5, stroke = 5)
plotado

data2 <- training.data.raw %>%
  group_by(MAT_TUR_ANO) %>%
  summarise(EVA = sum(EVADIU == TRUE), NAO_EVADIU = sum(EVADIU==FALSE))

set.seed(100)

plot_ly(data2, x = ~MAT_TUR_ANO, y = ~EVA, color = ~EVA,
        size = ~EVA)
