
#############################
#### DISTRIBUCION NORMAL ####
#############################

## Help()
?dnorm

## Funci?n de densidad de probabilidad
y <- dnorm(x=seq(-5,5,0.1), mean=0, sd=1)

plot(x=seq(-5,5,0.1), y=y, xlab="Z", ylab="f(z)", ylim=c(0,0.5), type="l")

# Variando mu
y2 <- dnorm(x=seq(0,10,0.1), mean=5, sd=1)

plot(x=seq(0,10,0.1), y2, xlab="X", ylab="f(x)", ylim=c(0,0.5), type="l")

# Variando sigma
y3 <- dnorm(x=seq(0,10,0.1), mean=5, sd=2)

plot(x=seq(0,10,0.1), y3, xlab="X", ylab="f(x)", ylim=c(0,0.5), type="l")

## Funci?n de distribuci?n acumulada
pnorm(q=-0.86, mean=0, sd=1)

1-pnorm(q=1.26, mean=0, sd=1)

1-pnorm(q=-1.37, mean=0, sd=1)

pnorm(q=0.37, mean=0, sd=1) - pnorm(q=-1.25, mean=0, sd=1)

## Cuantiles
qnorm(p=0.1949, mean=0, sd=1)


## Simulaciones
nsim <- 1000000
rnorm(n=nsim)

# Ejemplos de Estandarizaci?n
1-pnorm(1.5)

pnorm(0.5)-pnorm(-0.5)

qnorm(0.98)

1-pnorm(q=13, mean=10, sd=2)

# Aproximaci?n normal a la binomial
barplot(dbinom(0:300,16000000,0.00001))

barplot(dbinom(0:50,100,0.2))

