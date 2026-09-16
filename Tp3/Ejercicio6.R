#Reglas
#Si pide "menor que" P(Z <= b) se usa directamente pnorm()
#Si pide "mayor que" P(Z > = a) se usa 1 - pnorm() o pnorm(a, lower.tail = false)
#Si te piden un intervalo P(a <= Z <= b) se usa pnorm(b) - pnorm(a)

#Inciso a P(0 <= Z <= 2.1)
A <- pnorm(2.1) - pnorm(0)

#Inciso b P(-1.8, < Z < 0)
B <- pnorm(0) - pnorm(-1.8)

#Inciso c P(-0.55 < Z < 2.15)
C <- pnorm(2.15) - pnorm(-0.55)

#Inciso d P(0.75 <= Z < 1.92)
D <- pnorm(1.92) - pnorm(0.75)

#Inciso e P(Z < 0.5)
E <- pnorm(0.5)

#Inciso f P(Z >= -1.34)
F <- 1 - pnorm(-1.34)

#Inciso g P(Z > 2)
G <- 1 - pnorm(2)

#Inciso h P(Z <= 1.8)
H <- pnorm(1.8)
  