plot(AirPassengers)
PS <- snaive(AirPassengers,h = 12)  # 1 período sazonal
#the snave function makes prediction using a sozanol period, therefore the frequency > 1
# h -> Period number
plot(PS)

print(PS$mean)

# b)
print(end(AirPassengers)) #final instance
print(frequency(AirPassengers)) # shows frequency - anual
print(window(AirPassengers, start = c(1960,1))) #show all from 1960

# Os valores de anos obtidos pelas duas funções anteriores se relacionam
# pelo fato de que os valores previstos somente foram repetidos com relação ao 
# ultimo ano (1960).

PS2 = snaive(AirPassengers,h = 20)  
# Snaive -> previsao segundo uma sazonalidade
plot(PS2)
print(PS2)

#Os valores previstos para os próximos 20 meses estão coenrentes, devido ao fato
# de se aproximarem muito 



# All predictions made by rwf function has on it's scope 'residuals'
D = c(44,44,36,46,27,29,17,29,27)   # Dados da série
S = ts(D,start = 2010,frequency = 1) 

P1 = naive(S,h = 2)
P2 = meanf(S,h = 2) 
P3 = rwf(S,h = 2,drift = TRUE)



hist(P1$residuals,main="P1 Residuals")
hist(P2$residuals,main="P2 Residuals")
hist(P3$residuals,main="P3 Residuals")

acf(P1$residuals, na.action = na.pass) # there are no self-correlaction
acf(P2$residuals, na.action = na.pass) # there are no self-correlaction 
acf(P3$residuals, na.action = na.pass) # there are no self-correlaction






