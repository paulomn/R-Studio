# Distribui??o Binomial

# Pasta de trabalho
setwd("~/Dropbox/DSA/PowerBI-DataScience/Cap12")
getwd()

# Fun??es de Distribui??o Binomial no R
# dbinom(x, size, prob)
# pbinom(x, size, prob)
# qbinom(p, size, prob)
# rbinom(n, size, prob)

# x ? um vetor de n?meros.
# p ? um vetor de probabilidades.
# n ? o n?mero de observa??es.
# size ? o n?mero de tentativas.
# prob probabilidade de sucesso em cada tentativa.

# A distribui??o binomial ? uma distribui??o de probabilidade discreta. 
# Ela descreve o resultado de n experimentos independentes em um experimento. 
# Cada ensaio ? suposto ter apenas dois resultados, seja sucesso ou fracasso.

# Suponha que haja 12 perguntas de m?ltipla escolha em um exame. 
# Cada pergunta tem 5 respostas poss?veis, e apenas 1 delas est? correta. 
# Encontre a probabilidade de ter 3 ou menos respostas corretas se um aluno tentar responder a todas 
# as perguntas aleatoriamente.

# Uma vez que apenas uma entre cinco respostas poss?veis est? correta, a probabilidade de responder a 
# uma pergunta corretamente por aleatoriedade ? 1/5 = 0,2. Podemos encontrar a probabilidade de ter 
# exatamente 3 respostas corretas por tentativas aleat?rias como segue.
help(Binomial)
?dbinom
dbinom(2, size = 12, prob = 0.2) 

# Caso voc? queira visualizar as probabilidades para 0, 1, 2 e 3 quest?es, podemos fazer assim:

# Definir um vetor com os valores que ser?o considerados (valores de x)
x = c(0,1,2,3)

# Atribuir o resultado da fun??o dbinom() a um objeto. Perceba que passamos o vetor x como par?metro
resultado <- dbinom(x = x, size = 12, prob = 0.2) 

# Gravar tudo em um dataframe
df <- data.frame(x, resultado)

# Imprimir em formato de tabela
install.packages("knitr")
library(knitr)
print(kable(df, digits = 3, align = c("r","c"), caption = "Probabilidades Binomiais"))

# Plot
plot(df$x, 
     df$resultado, 
     pch = 16, 
     col = "darkblue", 
     xlab = "N?mero de Quest?es", 
     ylab = "Probabilidade P(x)", 
     bty = "n") 




