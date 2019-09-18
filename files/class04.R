#Serie trimestral
S1 = ts(1:10,start = c(2019,1),frequency = 4)

#Series anual
S2 = ts(1:15,start = c(2019,1),frequency = 12)

#Show in the console
print(S1)
S2 #Same as above

#Resultados gráficos
plot(S1,main = "Série com 10 trimestres")
plot(S2,main = "Série com 15 meses")


#O vetor do tempo de uma séries pode ser obtido pela func time(S1)
S1 = ts(1:10,start = c(2019,1),frequency = 4)
S2 = ts(1:15,start = c(2019,1),frequency = 12)
S3 = ts(1:15,start = c(2019,1),frequency = 1)

start(S1) #mostra o comeco de S1
end(S1) 
time(S2) #mostra Tempo de 2019.0 ate 2019.917
time(S3)


# window - extracao de uma parte da serie 
S1 = ts(1:10,start = c(2019,1),frequency = 4)
S2 = ts(1:15,start = c(2019,1),frequency = 12)

# Extrai 5 trimestres de S1 (do 3o de 2019 ao 3o de 2020)
j1 <- window(S1,start = c(2019,3),end = c(2020,3))
S1
j1


# Extrai 9 meses de S2 (de Jun de 2019 até o final = Mar de 2020)
j2 <- window(S2,start = c(2019,6)) # Sem "End" vai até o final



