V = c(10,20,30,40,50,60,70,80,90,100)

#Cria um vetor de 2 até 6
s = 2:6 
V[s]
V[c(3,6,9)]

#Acessa o Array excluindo o elemento com operador '-'
R = V[-7]
R <- V[-c(3,5,9)]

#Valores e dispersoes
D <- c(56,45,44,40,39,40,38,38,37,39,36,34,36,35,38)
mean(D)
R = max(D)-min(D)
sd(D) 
CV = sd(D)/mean(D)*100

#A única representação gráfica válida para essa distribuição e gráfico de pontos 
plot(D)

#Para se traçar linhas sobre o gráfico, utiliza-se a seguinte função

lines( x = 1:15, y= D )