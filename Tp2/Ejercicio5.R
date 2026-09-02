#Cargo los valores
x <- c(0,1,2,3,4,5)

#Calculo las probabilidades
px <- x/15

#Calculo la esperanza 
esperanza <- sum(x * px)

#Muestro el resultado
print(esperanza)

#Calculo la varianza
varianza <- sum((x - esperanza)^2 * px)

#Muestro el resultado
print(varianza)