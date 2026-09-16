#Simulacion de 100 a 10000 mediciones
m100 <- runif(100, 0, 20)
m1000 <- runif(1000, 0, 20)
m10000 <-runif(10000, 0, 20)

#Inciso 5 b
#Estimacion teorica = 0.25
b1 <- mean(m100 >= 5 & m100 <= 10)
b2 <- mean(m1000 >= 5 & m1000 <= 10)
b3 <- mean(m10000 >= 5 & m10000 <= 10)

#Inciso 5 c
#Experanza teorica = 10
e1 <- mean(m100)
e2 <- mean(m1000)
e3 <- mean(m10000)
