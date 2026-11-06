#Ejercicio 5 
#Cargo un vector con los datos
precipitaciones <- c(12, 27, 3, 2, 5, 2, 9, 4, 1, 10, 6, 4, 3, 1, 3, 1, 7, 14, 
                     4, 5, 21, 3, 4, 4, 10, 1, 4, 6, 19, 6, 4, 16, 3, 17, 3, 
                     4, 2, 4, 2, 1, 3, 3, 4, 9, 4, 4, 3, 8, 46, 3, 4, 2)
#Inciso a
datos_crudos <- mean(precipitaciones)
print(datos_crudos)

#Inciso b
#Mediana con los datos crudos
mediana <- median(precipitaciones)

#Moda
moda <- table(precipitaciones)
print(moda)

#Inciso c
var_crudos <- var(precipitaciones) #Varianza muestral
sd_crudos <- sd(precipitaciones)   #Desviacion estandar muestral