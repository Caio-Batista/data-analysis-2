library(dplyr)
library(ggplot2)


setwd("~/data-analysis-2/ad1/lab1")
data <-  read.csv("series_from_imdb.csv")
a <- data %>% filter(series_name %in% c("House of Cards", "Sense8", "13 Reasons Why", "Daredevil", "Gotham")) 

series <- data.frame(a$UserRating, a$series_name)
series <- na.omit(series)

colnames(series)[1] <- "rating"
colnames(series)[2] <- "nome"

series %>%
  arrange((rating)) %>%
  group_by(nome)

medias <- series %>%
  arrange((rating)) %>%
  group_by(nome) %>%
  summarise(media = mean(rating))


g <- ggplot(medias, aes(nome,media))
g + geom_col() 

boxplot <- ggplot(series, aes(nome,rating), size = 4) +
  geom_boxplot(size = 0.5) +
  scale_x_discrete()
boxplot



p <- ggplot(series, aes(x=nome, y=rating)) + 
  geom_violin(trim=FALSE)
p

