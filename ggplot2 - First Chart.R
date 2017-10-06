dataset <- read.csv("Vendas.csv")
install.packages("curl")
library(curl)
qplot(Valor, Custo, data = dataset, geom = "point")
