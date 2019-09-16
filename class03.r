> setwd("~/Documents/Mauá/4ºano/PAE-Analise_Series_Temporais/csv")
> D =  read.csv2("ituverava.csv")
> View(D)
> M = mean(D$temp_inst)
> R = max(D$umid_inst) - min(D$umid_inst)
> TI = D$temp_min[1]
> U = D$umid_max[length(D$umid_max)]
> summary(D)
summary(D$temp_inst)

#DataFrame Struct
> str(D) 

> boxplot(D$umid_max,main = "Umidades máximas - 07/2019")
> hist(D$umid_min,main = "Umidades mínimas - 07/2019")
> table(D$data)
> table(D$hora)

# A função ts cria séries temporais em R, com a seguinte forma geral de uso --> ts(dados,start,end,frequency)

# . dados: vetor ou conjunto de vetores que contém a informa- ção quantitativa da(s) série(s);
# . start: instante de tempo de início da série;
# . end: instante de tempo de fim da série;
# . frequency: quantidade de observações feitas por unidade de tempo.


> D1 = sample(10:200,50)
> D2 = 10*(1:7)
> D3 = c(2:6,6:2)
> S1 = ts(D1,start = 1, end = length(D1), frequency = 1)
> S1
> plot(S1)
> S2 = ts(D2,start = 10,frequency = 1)
> plot(S2)
> S3 = ts(D3)
> plot(S3)

V = 1:120
# Série mensal: de janeiro de 2010 a dezembro de 2019
> S = ts(V,start = c(2010,1),end = c(2019,12),frequency = 12) 
> S

S = ts(V,start = c(2010,3),end = c(2019,12),frequency = 12)
S = ts(V,start = c(2010,1),end = c(2020,12),frequency = 12)


> C = D$temp_inst
> S = ts(C, start = 1, end = 744, frequency = 1)
> plot(S,main = "Temperatura em Ituverava - 07/2019")
> plot(S,main = "Temperatura em Ituverava - 07/2019", xlab = "Tempo", ylab = "Temperatura")