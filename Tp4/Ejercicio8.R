#a) Explorar y describir brevemente el set de datos en relación con la configuración
#en filas y columnas, el tipo de variables y tamaño de la muestra. Emplear la
#función class() para explorar el tipo de objeto que R asigna a cada variable

#Cargo los datos del archivo
datos <- read.csv(file.choose(), header = TRUE, sep = ";", fileEncoding = "latin1")

#Visualizo los datos cargados
head(datos)

dim(datos)

str(datos)

class(datos$Tiempo..min.)
class(datos$Hora.del.día)
class(datos)

#b) Construir un histograma con la función hist() con 6 intervalos de clase para el
#total de 48 observaciones. Nombrar adecuadamente los ejes y describir la
#distribución de frecuencias.

hist(datos$Tiempo..min.,
     breaks = 6,   #Intervalos
     main = "Historama del tiempo de descarga",
     xlab = "Tiempo de descarga (En minutos)",
     ylab = "Frecuencia",
     col = "skyblue" #Color de las barras
)

#c) Repetir el ítem b) pero discriminando para cada hora del día. 
#         (7 AM)
hist(datos$Tiempo..min.[datos$Hora.del.día == "Early (7AM)"],
     breaks = 6,   #Intervalos
     main = "Mañana (7 AM)",
     xlab = "Minutos",
     ylab = "Frecuencia",
     col = "skyblue" #Color de las barras
)

#         (5 PM)
hist(datos$Tiempo..min.[datos$Hora.del.día == "Evening (5 PM)"],
     breaks = 6,   #Intervalos
     main = "Tarde (5 PM)",
     xlab = "Minutos",
     ylab = "Frecuencia",
     col = "red" #Color de las barras
)

#         (12 AM)
hist(datos$Tiempo..min.[datos$Hora.del.día == "Late Night (12 AM)"],
     breaks = 6,   #Intervalos
     main = "Noche (12 AM)",
     xlab = "Minutos",
     ylab = "Frecuencia",
     col = "blue" #Color de las barras
)

#d) Calcular la media aritmética, mediana, rango, varianza y desviación estándar
#para cada hora del día.
#Explorar los resultados en c) y d): ¿cuál parece ser la mejor hora para bajar archivos?
#¿en cuál hay mayor variabilidad relativa? 

#La mejor hora para bajar los archivos es alas 7 AM porque la media es de 1.88 
#minutos aproximadamente

#Mañana
mañana <- datos$Tiempo..min.[datos$Hora.del.día == "Early (7AM)"]
mediaM <- mean(mañana) 
medaianaM <- median(mañana)
rangoM <- range(mañana)
varianzaM <- var(mañana)
desviacionM <- sd(mañana)

#Media tarde
tarde <- datos$Tiempo..min.[datos$Hora.del.día == "Evening (5 PM)"]
mediaT <- mean(tarde) 
medianaT <- median(tarde)
rangoT <- range(tarde)
varianzaT <- var(tarde)
desviacionT <- sd(tarde)

#Media de la noche
noche <- datos$Tiempo..min.[datos$Hora.del.día == "Late Night (12 AM)"]
mediaN <- mean(noche) 
medianaN <- median(noche)
rangoN <- range(noche)
varianzaN <- var(noche)
desviacionN <- sd(noche)