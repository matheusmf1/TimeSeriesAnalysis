gols = c(44,44,36,46,27,29,17,29,27)
S = ts(gols, start = 2010, end = 2019,frequency = 1)
plot(S, xlab="Anos",ylab="N gols")

#Valores
min = min(S)
max = max(S)
med = mean(S)

abline(a = max, b = 0, col = "blue", lty = 2, lwd = 2)
abline(a = min, b = 0, col = "blue", lty = 2, lwd = 2)
abline(a = med, b = 0, col = "blue", lty = 2, lwd = 4)