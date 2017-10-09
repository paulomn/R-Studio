#Open file
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

#Resumo dataset
View(vendas)
str(vendas)
summary(vendas$Valor)
summary(vendas$Custo)

#Media
mean(vendas$Valor)
mean(vendas$Custo)
mean(vendas$Valor, trim = 0.1)
mean(vendas$Valor, na.rm = TRUE)
weighted.mean(vendas$Valor, w = vendas$Custo)

#Moda
getMode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate((match(v, uniqv))))]
}
result <- getMode(vendas$Valor)

library(ggplot2)

ggplot(vendas) + stat_summary(aes(x = vendas$Estado, y = vendas$Valor),
                              fun.y = mean, geom = "bar",
                              fill = "lightgreen", col = "grey50"
                              )


