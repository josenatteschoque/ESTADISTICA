#Calculo la sumatoria de 6 hasta 9 de la funcion de masa de probabilidad
resultado <- sum(dbinom(6:9, size = 9,prob =  0.70))

#Muestro el resultad
print(resultado)