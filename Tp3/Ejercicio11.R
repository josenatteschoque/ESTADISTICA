#a) ¿Qué porcentaje de lámparas se habrá quemado en el intervalo [900, 1100] hs?
a <- (pnorm(2) - pnorm(-2)) * 100

#b) ¿Cuántas lámparas se espera que se quemen antes de las 900 hs?
b <- (pnorm(-2)) * 10000

#c) Se elige una lámpara al azar, ¿cuál es la probabilidad que se queme entre las 900 y
#1150 hs?
c <- pnorm(3) - pnorm(-2)

#d) Tomando una lámpara al azar, ¿cuál es la probabilidad que dure más de 1050 hs?
d <- 1 - pnorm(1)