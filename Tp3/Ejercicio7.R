#a) El área entre 0 y Z es 0.3051
x <- 0.5 + 0.3051
A <- qnorm(x)

x1 <- 0.5 - 0.3051
A1 <- qnorm(x1)

#b) El área a la izquierda de Z es 0.9649.
B <- qnorm(0.9649)

#c) El área entre -2.1 y Z es 0.0049.
#pnorm() porque es la probabilidad P(Z <= -2.1) + 0.0049
C <- qnorm(pnorm(-2.1) + 0.0049)