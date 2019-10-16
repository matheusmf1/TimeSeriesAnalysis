# instale e habilite o pacote 'forecast'
# antes de executar este script: use a opção 
# "Install" na aba "Packages" ou execute as duas
# instruções a seguir
# install.packages("forecast")
# library(forecast)

# Criação de um modelo de previsão pelo método "Naive"
D <- c(44,44,36,46,27,29,17,29,27)   # Dados da série
S <- ts(D,start = 2010,frequency = 1)  # Cria a série
plot(S)  # Exibe a série (apenas para conferência)

# Previsão de gols para 2019 e 2020
P1 <- naive(S,h = 2)   # Parametros -> time series, períodos de previsão futura
print(class(P1))  # Exibe a classe do objeto - Naive returns a forecast object
print(P1)  # Exibe as previsões
plot(P1)   # Exibe graficamente a série + previsões e intervalos

# =========================================================== #
# Modelo de previsão pelo método "Naive" com sazonalidade
# Exemplo com a série interna "AirPassengers"
# Período de sazonalidade = 12 meses
plot(AirPassengers)   # Exibe a série
PS <- snaive(AirPassengers,h = 12)  # 1 período sazonal
#the snave function makes prediction using a sozanol period, therefore the frequency > 1
# h -> Period number
plot(PS)   # Exibe graficamente a série + previsões e intervalos

# =========================================================== #
# Criação de um modelo de previsão pelo método "Naive"
# Novas previsões de gols para 2019 e 2020
P2 <- meanf(S,h = 2)   # 2 períodos de previsão futura
print(P2)  # Exibe as (novas) previsões
plot(P2)   # Exibe graficamente os novos resultados

# =========================================================== #
# Criação de um modelo de previsão pelo método "Drift"
# Novas previsões de gols para 2019 e 2020
P3 <- rwf(S,h = 2,drift = TRUE)   # 2 períodos de previsão
print(P3)  # Exibe as (novas) previsões
plot(P3)   # Exibe graficamente os novos resultados
