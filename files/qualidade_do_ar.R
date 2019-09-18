# CM3050 - An?lise de S?ries Temporais
# Encontro 04 - 18/09/2019 - Series temporais e scripts
# script "qualidade_do_ar.R
# Desenha o grafico da serie temporal interna "AirPassenger", da
# biblioteca "datasets". Emseguida, insere no grafico a linha
# de valor medio da serie e sua linha de tendencia

data("AirPassengers")  # Carrega a serie temporal
?AirPassengers         # Exibe a ajuda do RStudio sobre a s?rie

# Exibe no console a configuracao temporal da serie
print(start((AirPassengers)))
print(end((AirPassengers)))
print(frequency((AirPassengers)))

# Cria o grafico da serie
plot(AirPassengers)

# Calcula o valor medio e o modelo temporal de regressao linear
M <- mean(AirPassengers)
ML <- lm(AirPassengers~time(AirPassengers))

# Extrai os coeficientes da linha de tend?ncia
CL <- coef(ML)[1]  # Coeficiente linear (intercepto)
CA <- coef(ML)[2]  # Coeficiente angular

# Traca a reta de valor medio
# lty (line type) = 2: linha tracejada
# lwd (line width) = 2: aumenta a espessura
# Funcao abline tra?a uma linha reta sobre o grafico ATUAL
# Parametros: a = intercpto (no eixo y); b = coeficiente angular
abline(a = M, b = 0, col = "blue", lty = 2, lwd = 2)

# Traca a linha de tendencia "a + b*t"
abline(a = CL, b = CA, col = "red", lty = 4, lwd = 2)
