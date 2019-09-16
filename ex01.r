# Make a time series from min temperature
D = read.csv2("colombo.csv")
S = ts(D$temp_min,start = 1,end = 1368,frequency = 1)

plot(S, main = "Colombo: Jun-Ago/2019", xlab = "Coletas", ylab = "Temperaturas")

max = max(S)
min = min(S)
media = mean(S)