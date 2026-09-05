#La funcion dpois() calcula la masa de probabilidad de poisson
a <- dpois(3, lambda = 12)

#La funcion ppois() calcula la acumulada
b <- ppois(3, lambda = 12)

c <- sum(dpois(3:6, lambda = 7.5))

d <- sum(dpois(4:5, lambda = 5.2))
