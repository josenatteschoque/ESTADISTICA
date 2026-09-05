##########################
# SIMULACION EJERCICIO 9 #
##########################
#rbinom() calcula experimentos aleatorios
#mean() calcula la media aritmetica (Promedio)

#CASO FAMILIAS = 200
familias_200 <- rbinom(n = 200, size = 6, prob = 0.5)
media_200 <- mean(familias_200)
  
#CaSO FAMILIAS = 2000
familias_2000 <- rbinom(n = 2000, size = 6, prob = 0.5)
media_2000 <- mean(familias_2000) 

#CASO FAMILIAS = 20000
familias_20000 <- rbinom(n = 20000, size = 6, prob = 0.5)
media_20000 <- mean(familias_20000)

#Resultados
media_200
media_2000
media_20000