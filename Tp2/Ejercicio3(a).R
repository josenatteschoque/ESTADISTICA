#3. Sea p ( x )= k/2x una función de masa de probabilidad para una variable aleatoria que
#puede adoptar los valores X =0, 1, 2, 3, 4.
#a) Determinar el valor de k para que la función de probabilidad sea válida y describir

#Cargo los valores 0,1,2,3,4
x <- c(0,1,2,3,4)

#Calculo la probabilidad 
px <-  1/(2^x)

#Sumo todas las probabilidades
resultado <- sum(px)

#Guardo el resultado en k 
k <- 1/1.9375 

#Calculo la probabilidad ahora con k
pk <- k/(2^x)

#Sumo todas las probabilidades de k
suma <- sum(pk)