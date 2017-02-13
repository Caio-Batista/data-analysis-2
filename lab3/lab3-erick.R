data <- read.csv("Downloads/treino_classificacao.csv", header = T)

library(dplyr)

data2 <- data %>%
  group_by(MAT_TUR_ANO) %>%
  summarise(EVA = sum(EVADIU == TRUE), NAO_EVADIU = sum(EVADIU==FALSE))

barplot(x=data2$MAT_TUR_ANO, y=data2$EVA, xaxt="n")
axis(1, at = seq(2000, 2015, by = 1), las=2)  

bar_plot(x=data2$MAT_TUR_ANO, y=data2$NAO_EVADIU, xaxt="n")
axis(1, at = seq(2000, 2015, by = 1), las=2)  

