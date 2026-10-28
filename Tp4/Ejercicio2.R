#Ejercicio 2
#Inciso a
#Generar un histograma de frecuencias empleando 10 intervalos

#Cargo un vector con los datos
precipitaciones <- c(12, 27, 3,  2, 5, 2, 9, 4, 1, 10, 6, 4, 3, 1, 3, 1, 7, 14,
4, 5, 21, 3, 4, 4, 10, 1, 4, 6, 19, 6, 4, 16, 3, 27, 3, 4, 2, 4, 2, 1, 3, 3, 4,
9, 4, 4, 3, 8, 46, 3, 4, 2)

#Creo el histograma
hist(
  precipitaciones, 
  breaks = 10,  #Indico 10 intervalos
  col = "lightskyblue",  #Color de relleno de los rectangulos
  border = "black",  #Color del borde de las barras
  xlab = "Precipitaciones (mm)",  #Nombre del eje x
  ylab = "Frecuencia absoluta (Numeros de eventos)",   #Nombre del eje y
  main = "Histograma de precipitaciones (10 intervalos)",   #Titulo del grafico
  las = 1  #Orientacion horizontal de los numeros en y
)

#Inciso b 
#Generar un histograma de frecuencias empleando 20 intervalos 

#Creo el histograma
hist(
  precipitaciones, 
  breaks = 20,  #Indico 20 intervalos
  col = "lightskyblue",  #Color de relleno de los rectangulos
  border = "black",  #Color del borde de las barras
  xlab = "Precipitaciones (mm)",  #Nombre del eje x
  ylab = "Frecuencia absoluta (Numeros de eventos)",   #Nombre del eje y
  main = "Histograma de precipitaciones (20 intervalos)",   #Titulo del grafico
  las = 1  #Orientacion horizontal de los numeros en y
)
