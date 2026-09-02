# ==========================================================
# GRAFICANDO EL INCISO 2C
# ==========================================================

# Paso 1: Definimos los valores de X (del 0 al 3)
x <- c(0, 1, 2, 3)

# Paso 2: Calculamos los valores con la fórmula p(x) = 5 - (x^2) / 6
px <- (5 - (x * x)) / 6

# Paso 3: Hacemos el gráfico de barras
barplot(
  height = px,                             
  names.arg = x,                           
  col = "lightcoral",                      # Le cambié el color a uno rojizo
  border = "darkred",                     
  main = "Función del Ejercicio 2c\np(x) = 5 - (x^2) / 6", # ¡Actualizamos el título!
  xlab = "Valores de la variable aleatoria (X)",        
  ylab = "Probabilidad p(x)",              
  ylim = c(-0.8, 1.0)                         # ¡Subimos el límite a 0.7 para que entre la barra de 0.64!
)
# Dibujamos una línea negra en Y = 0 para marcar el "piso" del gráfico
abline(h = 0, col = "black", lwd = 1.5)

# Paso 4: Añadimos una cuadrícula gris de fondo
grid(nx = NA, ny = NULL, lty = 2, col = "lightgray")