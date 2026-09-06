#x = 2
#p = 0,002
#n = 2000

#Inciso a
#Calculo la binomial de masa
Binomial <- dbinom( 2, size = 2000, prob = 0.002)

#Calculo la de poisson
poisson <- dpois(2, 4)

#Inciso b
Binomial2 <- pbinom(3, 2000, 0.002)
poisson2 <- ppois(3, 4)

#Inciso c
binomial3 <- dbinom(0, 2000, 0.002)
poisson3 <- dpois(0, 4)