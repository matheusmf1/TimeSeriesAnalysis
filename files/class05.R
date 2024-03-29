# CM3050 - Encontro 05 - Elementos e propriedades de s�ries temporais
# C�digo do script "CM3050_05.R"

# "Momento RECORDA��O"
# Exemplo de cria��o de uma s�rie temporal
# a partir dos dados de um dataframe

# Leitura dos dados
D <- read.csv2("ituverava.csv")

# Seleciona os dados de interesse: temperatura e
# cria a s�rie com os 744 (=24*31) valores coletados
S <- ts(D$temp_inst,start = 1,end = 744,frequency = 1) 

# Tra�a o gr�fico da s�rie
plot(S,main = "Temperatura em Ituverava - 07/2019")


# "Momento RECORDA��O"
# Extraindo valores dos par�metros e o tempo de uma s�rie
S <- ts(1:15,start = c(2019,1),frequency = 12)

# Exibe os valores no console
print(start(S)) # "S" come�a em Jan, 2019
print(end(S))   # "S" termina em Mar, 2020
print(time(S))  # Tempos: de 2019.0 a 2019.917

# Extrai 9 meses de "S" (de Jun de 2019 at� o final = Mar de 2020)
j <- window(S,start = c(2019,6))		# Sem "End"
print(S)  # Exibe os valores da s�rie
print(j)  # Exibe a janela extra�da


# Exemplo de s�rie estacion�ria: a s�rie ter� um valor m�dio
# constante somado a uma componente aleat�ria com:
# distribui��o normal, m�dia = 0 e desvio padr�o = 0,5
a <- 15   # Valor m�dio da s�rie
r <- rnorm(n = 100,sd = 0.5)   # 100 valores aleat�rios
V <- a+r  # Valores da s�rie: m�dia + componente aleat�ria

S1 <- ts(V)   # Cria a s�rie temporal
plot(S1)      # Tra�a o gr�fico da s�rie

# Tra�a uma linha horizontal (h) em y = valor m�dio
# par�metro col: cor; lty = 2: linha tracejada
abline(h = a,col = "blue",lty = 2)


# Exemplo de s�rie com tend�ncia de crescimento linear
# da forma: y = a+b*t, com a = 10 e b = 0,1

a <- 10   # Par�metro de tend�ncia da s�rie
b <- 0.1  # Par�metro de tend�ncia da s�rie
t <- 1:100  # Vetor de "tempos" da s�rie
r <- rnorm(n = 100,sd = 0.5)   # 100 valores aleat�rios
V <- (a+b*t)+r  # S�rie: tend�ncia + componente aleat�ria

S2 <- ts(V)   # Cria a s�rie temporal
plot(S2)      # Tra�a o gr�fico da s�rie

# Tra�a a linha de tend�ncia
abline(a,b,col = "blue",lty = 2)


# Exemplo de cria��o de um diagrama de autocorrela��o
# Neste exemplo ser� usada a s�rie temporal 'nhtemp', 
# que cont�m 60 valores de temperatura m�dia anual em
# graus Fahrenheit, medidas em New Haven, Connecticut,
# no per�odo de 1912 a 1971
data("nhtemp")  # 'Requisita' os dados
force(nhtemp)   # For�a a 'resolu��o' dos valores
plot(nhtemp)     # Tra�a o gr�fico da s�rie
acf(nhtemp)     # Cria o diagrama de autocorrela��o
print(acf(nhtemp))  # Exibe os valores dos coeficientes


# Exemplo de s�rie temporal com sazonalidade
# Neste exemplo ser� usada a s�rie 'AirPassengers', 
# descrita no livro 'Time Series Analysis, Forecasting
# and Control', de Box & Jenkins (1976). Os valores
# representam o total de passageiros de voos
# internacionais, transportados de 1949 a 1960.
data("AirPassengers")  # 'Requisita' os dados
force(AirPassengers)   # For�a a 'resolu��o' dos valores
plot(AirPassengers)    # Tra�a o gr�fico da s�rie
print(frequency(AirPassengers)) # Qual � a frequ�ncia da s�rie?
acf(AirPassengers)     # Cria o diagrama de autocorrela��o


# Exemplo de decomposi��o de uma s�rie temporal
# Neste exemplo ser� usada a s�rie 'co2', que registra 468
# observa��es de concentra��o atmosf�rica de CO2,
# em partes por milh�o, medidas na regi�o do vulc�o
# Mauna Loa (Havai) entre 1959 e 1997 (medi��es mensais)
data("co2")  # 'Requisita' os dados
force(co2)   # For�a a 'resolu��o' dos valores
plot(co2)    # Tra�a o gr�fico da s�rie
plot(decompose(co2))   # Exibe os componentes da s�rie
