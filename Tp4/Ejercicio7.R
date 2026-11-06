#Con file.choose() me permite buscar la carpeta exacta en si
datos <- read.csv(file.choose(), header = TRUE, sep = ",")

#Visualizo los datos cargados
head(datos)

#a) Calcular las frecuencias absolutas utilizando la función table().
frec_abs <- table(datos$datos_defectuoso)
print(frec_abs)

#b) Calcular las frecuencias relativas y relativas acumuladas y graficarlas utilizando
#barplot(). Nombrar los ejes adecuadamente
n <- length(datos$datos_defectuosos)

frec_rel <- frec_abs / n

frec_acum <- cumsum(frec_rel)

barplot(frec_rel, 
        xlab = "Número de dispositivos defectuosos por lote", 
        ylab = "Frecuencia relativa", 
        main = "Distribución de defectuosos en 60 lotes", 
        col = "skyblue")


#Gráfico de barras para la frecuencia relativa acumulada
barplot(frec_acum, 
        xlab = "Número de dispositivos defectuosos por lote", 
        ylab = "Frecuencia relativa acumulada", 
        main = "Frecuencia acumulada de defectuosos",
        col = "steelblue")


#c) Calcular la media aritmética, mediana, rango, varianza y desviación estándar con
#las funciones mean(), median(), range(), var() y sd(), respectivamente.
media <- mean(datos$datos_defectuosos)

mediana <- median(datos$datos_defectuosos)

rango <- range(datos$datos_defectuosos)

varianza <- var(datos$datos_defectuosos)

desviacion_estandar <- sd(datos$datos_defectuosos)

#d) Calcular los percentiles 5, 25, 75 y 95 empleando la función quantile().
percentiles <- quantile(datos$datos_defectuosos, prob = c(0.05, 0.25, 0.75, 0.95))

