#14. Supongamos que la duración de los instrumentos electrónicos A y B tienen
#distribución normal. Para A la media de vida es 40 hs y la desviación estándar 36 hs; para
#B la media es de 45 hs y la desviación estándar 9 hs.

#a) ¿Cuál de estos instrumentos es preferible para ser usado durante un período mayor
#que 45 horas?
a1 <- pnorm(1 - 0.1388)
b1 <- pnorm(1 - 0)

#b) ¿Cuál para un período mayor que 48 horas?
a2 <- pnorm(1 - 0.22)
b2 <- pnorm(1 - 0.33)

#c) Comparar las curvas normales de ambos instrumentos, en base a la salida gráfica
#del siguiente código de R ¿Por qué las respuestas a los ítems a) y b) son diferentes?
  x <- seq(0, 100, length= 100) ## Genera una secuencia de 100 valores entre 0 y 100
  curva_A <- dnorm(x, mean= 40, sd= 36) ## calcula los valores de f(x) para A
  curva_B <- dnorm(x, mean= 45, sd= 9) ## calcula los valores de f(x) para B
  x11() ## Genera una ventana gráfica por fuera de Rstudio
  par(mfrow= c(2,1)) ### Define un espacio de dos filas y una columna para las figuras
  plot(x, curva_A, type = "l", ylab = "", lwd = 2, col = "red")
  plot(x, curva_B, type = "l", ylab = "", lwd = 2, col = "red")
  
  
#Son diferentes por sus medias y desviaciones estandar son diferentes asi que depende del instrumento 
#su eficacia
  