S = ts(austres)
plot(S)

#Autocorrelacao

data("austres")
force(austres)
plot(austres)
print(frequency(austres))
acf(austres)


S1 = ts(mdeaths)
force(mdeaths)
plot(mdeaths)
print(frequency(mdeaths))
acf(mdeaths)

data("airquality")
force(airquality)
S2 = ts(airquality$Wind)
plot(S2)
print(frequency(airquality))
acf(S2)

data("airquality")
force(airquality)
S3 = ts(airquality$Temp)
plot(S3)
print(frequency(airquality))
acf(S3)

plot(decompose(austres))
plot(decompose(mdeaths))
