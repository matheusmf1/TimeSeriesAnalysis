# CM3050 - Encontro 05 - Elementos e propriedades de séries temporais
# Código do script "CM3050_05.R"

# "Momento RECORDAÇÃO"
# Exemplo de criação de uma série temporal
# a partir dos dados de um dataframe

# Leitura dos dados
D <- read.csv2("ituverava.csv")

# Seleciona os dados de interesse: temperatura e
# cria a série com os 744 (=24*31) valores coletados
S <- ts(D$temp_inst,start = 1,end = 744,frequency = 1) 

# Traça o gráfico da série
plot(S,main = "Temperatura em Ituverava - 07/2019")


# "Momento RECORDAÇÃO"
# Extraindo valores dos parâmetros e o tempo de uma série
S <- ts(1:15,start = c(2019,1),frequency = 12)

# Exibe os valores no console
print(start(S)) # "S" começa em Jan, 2019
print(end(S))   # "S" termina em Mar, 2020
print(time(S))  # Tempos: de 2019.0 a 2019.917

# Extrai 9 meses de "S" (de Jun de 2019 até o final = Mar de 2020)
j <- window(S,start = c(2019,6))		# Sem "End"
print(S)  # Exibe os valores da série
print(j)  # Exibe a janela extraída


# Exemplo de série estacionária: a série terá um valor médio
# constante somado a uma componente aleatória com:
# distribuição normal, média = 0 e desvio padrão = 0,5
a <- 15   # Valor médio da série
r <- rnorm(n = 100,sd = 0.5)   # 100 valores aleatórios
V <- a+r  # Valores da série: média + componente aleatória

S1 <- ts(V)   # Cria a série temporal
plot(S1)      # Traça o gráfico da série

# Traça uma linha horizontal (h) em y = valor médio
# parâmetro col: cor; lty = 2: linha tracejada
abline(h = a,col = "blue",lty = 2)


# Exemplo de série com tendência de crescimento linear
# da forma: y = a+b*t, com a = 10 e b = 0,1

a <- 10   # Parâmetro de tendência da série
b <- 0.1  # Parâmetro de tendência da série
t <- 1:100  # Vetor de "tempos" da série
r <- rnorm(n = 100,sd = 0.5)   # 100 valores aleatórios
V <- (a+b*t)+r  # Série: tendência + componente aleatória

S2 <- ts(V)   # Cria a série temporal
plot(S2)      # Traça o gráfico da série

# Traça a linha de tendência
abline(a,b,col = "blue",lty = 2)


# Exemplo de criação de um diagrama de autocorrelação
# Neste exemplo será usada a série temporal 'nhtemp', 
# que contém 60 valores de temperatura média anual em
# graus Fahrenheit, medidas em New Haven, Connecticut,
# no período de 1912 a 1971
data("nhtemp")  # 'Requisita' os dados
force(nhtemp)   # Força a 'resolução' dos valores
plot(nhtemp)     # Traça o gráfico da série
acf(nhtemp)     # Cria o diagrama de autocorrelação
print(acf(nhtemp))  # Exibe os valores dos coeficientes


# Exemplo de série temporal com sazonalidade
# Neste exemplo será usada a série 'AirPassengers', 
# descrita no livro 'Time Series Analysis, Forecasting
# and Control', de Box & Jenkins (1976). Os valores
# representam o total de passageiros de voos
# internacionais, transportados de 1949 a 1960.
data("AirPassengers")  # 'Requisita' os dados
force(AirPassengers)   # Força a 'resolução' dos valores
plot(AirPassengers)    # Traça o gráfico da série
print(frequency(AirPassengers)) # Qual é a frequência da série?
acf(AirPassengers)     # Cria o diagrama de autocorrelação


# Exemplo de decomposição de uma série temporal
# Neste exemplo será usada a série 'co2', que registra 468
# observações de concentração atmosférica de CO2,
# em partes por milhão, medidas na região do vulcão
# Mauna Loa (Havai) entre 1959 e 1997 (medições mensais)
data("co2")  # 'Requisita' os dados
force(co2)   # Força a 'resolução' dos valores
plot(co2)    # Traça o gráfico da série
plot(decompose(co2))   # Exibe os componentes da série
