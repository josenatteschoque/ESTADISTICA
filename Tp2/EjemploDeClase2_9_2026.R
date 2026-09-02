#Ejemplo de clase!

#Con la distribuccion acumulada
#P(x = 3)
resultado <- dbinom(3, size = 20, prob = 0.15)

#P(x <= 5) 
resultado2 <- pbinom(5, size = 20, prob = 0.15)

#P(x > 5)
resultado3 <- pbinom(5, 20, 0.15, lower.tail = FALSE)

##################################################################

#Con la distribucion de Poisson
#P(x = 5) 
resultado4 <- dpois(x = 5, lambda = 3)

#P(x > 20)
resultado5 <-  ppois(20 ,21, lower.tail = FALSE)

#P(15 <= x <= 21)
resultado6 <- dpois(15:21, 21)
suma <- sum(resultado6)

#Es otra forma de platear el anterior P(x <= 21) - P(x <= 15) => F(21) - F(14)
resultado7 <- ppois(21,21) - ppois(14,21)


#IMPORTANTE!!!
#Se puede usar la computadora en el parcial para hacer las cuentas con R 
#siempre y cuando se ponga en la hoja la linea de codigo y el resultado.