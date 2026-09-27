#Inciso a 
a <- pnorm(-0.7)

#Inciso b
b <- qnorm(0.05, mean = 100, sd = 10)

#Inciso c
set.seed(333) ## No interpretar
p1 <- rnorm(30, 100, 10) ### INTERPRETAR
p2 <- rnorm(365, 100, 10) ### INTERPRETAR
p3 <- rnorm(3650, 100, 10) ### INTERPRETAR
x11() ## No interpretar
par(mfrow= c(3,1)) ### NO interpretar
hist(p1, col= "salmon", main= "N= 30 días", breaks = seq(50, 150, 5)) ###INTERPRETAR

hist(p2, col= "salmon", main= "N= 365 días", breaks = seq(50, 150, 5)) ###INTERPRETAR

hist(p3, col= "salmon", main= "N= 3650 días", breaks = seq(50, 150, 5)) ###INTERPRETAR

#NOTA: si bien la variable en escencia es discreta, al tener un rango de valores
#relativamente grande, la podemos “tratar” como contínua con fines estadísticos

#Bueno viendo las graficas llege ala conclusion de que depepende del tamaño de la muestra, por ejemplo
#la grafica de 30 dias se ve inestable y sin un valor medio osea esta desbalanceada, en caso de los 365 dias
#ahi se va equilibrando ya con un valor medio y en el caso con 3650 dias ahi si el grafico esta totalmente baleanceado
#y se ve con clarida un valor medio en la campana.