#Cargo los valores de x
x <- c(0,1,2,3,4)

#Cargo el valor de k
k <- 16/31

#Calculo la probabilidad
px <- k / (2^x)

#Calculamos las probabilidades acumuladas de forma automatica con cumsum()
Fx <- cumsum(px)

# Paso 3: Creamos una "función de paso o escalera" utilizando stepfun
# Le decimos que empiece acumulando 0 para x < 0, y luego use Fx
mi_escalera <- stepfun(x, c(0, Fx))

# Paso 4: Hacemos el gráfico
plot(
  mi_escalera,
  do.points = TRUE,                        # Dibuja los círculos en los extremos de cada escalón
  pch = 19,                                # Tipo de punto (relleno)
  col.points = "darkblue",                 # Color para los puntos
  col = "darkblue",                        # Color para las líneas de la escalera
  main = "Función de Distribución Acumulada\nEjercicio 3b",
  xlab = "Valores de la variable aleatoria (x)",
  ylab = "Probabilidad Acumulada F(x)",
  ylim = c(0, 1.1)                         # Margen superior para ver el techo de 1.0
)

# Añadimos cuadrícula de fondo
grid(nx = NULL, ny = NULL, lty = 2, col = "lightgray")
