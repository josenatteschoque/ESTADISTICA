#Cargo los valores
x <- c(11,12,13,14,15)

#Calculo la probabilidad puntual y luego las sumos 
resultado <- sum(dbinom(x, 15, 0.23))

#Muestro el resultado
print(resultado)

