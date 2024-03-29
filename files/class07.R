# instale e habilite o pacote 'forecast'
# antes de executar este script: use a op��o 
# "Install" na aba "Packages" ou execute as duas
# instru��es a seguir
# install.packages("forecast")
# library(forecast)

# Cria��o de um modelo de previs�o pelo m�todo "Naive"
D <- c(44,44,36,46,27,29,17,29,27)   # Dados da s�rie
S <- ts(D,start = 2010,frequency = 1)  # Cria a s�rie
plot(S)  # Exibe a s�rie (apenas para confer�ncia)

# Previs�o de gols para 2019 e 2020
P1 <- naive(S,h = 2)   # Parametros -> time series, per�odos de previs�o futura
print(class(P1))  # Exibe a classe do objeto - Naive returns a forecast object
print(P1)  # Exibe as previs�es
plot(P1)   # Exibe graficamente a s�rie + previs�es e intervalos

# =========================================================== #
# Modelo de previs�o pelo m�todo "Naive" com sazonalidade
# Exemplo com a s�rie interna "AirPassengers"
# Per�odo de sazonalidade = 12 meses
plot(AirPassengers)   # Exibe a s�rie
PS <- snaive(AirPassengers,h = 12)  # 1 per�odo sazonal
#the snave function makes prediction using a sozanol period, therefore the frequency > 1
# h -> Period number
plot(PS)   # Exibe graficamente a s�rie + previs�es e intervalos

# =========================================================== #
# Cria��o de um modelo de previs�o pelo m�todo "Naive"
# Novas previs�es de gols para 2019 e 2020
P2 <- meanf(S,h = 2)   # 2 per�odos de previs�o futura
print(P2)  # Exibe as (novas) previs�es
plot(P2)   # Exibe graficamente os novos resultados

# =========================================================== #
# Cria��o de um modelo de previs�o pelo m�todo "Drift"
# Novas previs�es de gols para 2019 e 2020
P3 <- rwf(S,h = 2,drift = TRUE)   # 2 per�odos de previs�o
print(P3)  # Exibe as (novas) previs�es
plot(P3)   # Exibe graficamente os novos resultados
